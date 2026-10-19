package com.kidoz.sdk.api.general.cache;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class CacheWebViewFactory {
    private static final Object lock = new Object();
    private static CacheWebViewFactory single_instance;
    private Map<String, WebViewData> concurrentHashMapObject = new HashMap();
    private ExecutorService executorService = Executors.newCachedThreadPool();
    private Map<String, String> playersUrl = new HashMap();

    public interface CacheWebViewFactoryCallBack {
        void onError(String str);

        void onReady(boolean z);
    }

    class CacheWebViewFactoryRunnable implements Runnable {
        private String PlayerName;
        private String PlayerUrl;

        public CacheWebViewFactoryRunnable(String str, String str2) {
            this.PlayerName = str;
            this.PlayerUrl = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewData webViewDataExecuteRequest = new WebViewDataRequest(this.PlayerUrl).executeRequest();
            synchronized (CacheWebViewFactory.lock) {
                if (CacheWebViewFactory.this.concurrentHashMapObject != null) {
                    CacheWebViewFactory.this.concurrentHashMapObject.put(this.PlayerName, webViewDataExecuteRequest);
                }
            }
        }
    }

    private CacheWebViewFactory() {
    }

    public static synchronized CacheWebViewFactory getInstance() {
        if (single_instance == null) {
            single_instance = new CacheWebViewFactory();
        }
        return single_instance;
    }

    public boolean addCache(String str, String str2) {
        if (hasCache(str)) {
            return true;
        }
        if (str2.toLowerCase().startsWith("https://") || str2.toLowerCase().startsWith("http://")) {
            this.executorService.execute(new CacheWebViewFactoryRunnable(str, str2));
        }
        try {
            return this.executorService.awaitTermination(1L, TimeUnit.MINUTES);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void addCacheAsync(final String str, final String str2, final CacheWebViewFactoryCallBack cacheWebViewFactoryCallBack) {
        new CustomAsyncExecutor<Void, Boolean>() { // from class: com.kidoz.sdk.api.general.cache.CacheWebViewFactory.1
            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public Boolean executeAsync(Void r3) {
                return Boolean.valueOf(CacheWebViewFactory.this.addCache(str, str2));
            }

            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public void postExecute(Boolean bool) {
                CacheWebViewFactoryCallBack cacheWebViewFactoryCallBack2 = cacheWebViewFactoryCallBack;
                if (cacheWebViewFactoryCallBack2 != null) {
                    cacheWebViewFactoryCallBack2.onReady(bool.booleanValue());
                }
            }
        }.execute(null);
    }

    public WebViewData getCache(String str) {
        if (!hasCache(str)) {
            return null;
        }
        synchronized (lock) {
            if (this.concurrentHashMapObject == null || str == null || str.equals("")) {
                return null;
            }
            return this.concurrentHashMapObject.get(str);
        }
    }

    public boolean hasCache(String str) {
        WebViewData webViewData;
        synchronized (lock) {
            if (this.concurrentHashMapObject == null || str == null || str.equals("") || !this.concurrentHashMapObject.containsKey(str) || (webViewData = this.concurrentHashMapObject.get(str)) == null) {
                return false;
            }
            return webViewData.hasData();
        }
    }

    public boolean start() {
        for (Map.Entry<String, String> entry : this.playersUrl.entrySet()) {
            if (entry.getValue().toLowerCase().startsWith("https://") || entry.getValue().toLowerCase().startsWith("http://")) {
                this.executorService.execute(new CacheWebViewFactoryRunnable(entry.getKey(), entry.getValue()));
            }
        }
        this.executorService.shutdown();
        try {
            return this.executorService.awaitTermination(1L, TimeUnit.MINUTES);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void startAsync(final CacheWebViewFactoryCallBack cacheWebViewFactoryCallBack) {
        new CustomAsyncExecutor<Void, Boolean>() { // from class: com.kidoz.sdk.api.general.cache.CacheWebViewFactory.2
            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public Boolean executeAsync(Void r1) {
                return Boolean.valueOf(CacheWebViewFactory.this.start());
            }

            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public void postExecute(Boolean bool) {
                cacheWebViewFactoryCallBack.onReady(bool.booleanValue());
            }
        }.execute(null);
    }
}
