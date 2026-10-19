package com.vungle.ads.internal.downloader;

import android.util.Log;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.mediationsdk.utils.c;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InternalError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.RealResponseBody;
import okio.Okio;
import okio.m;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 -2\u00020\u0001:\u0001-B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\"\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\r2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0002J\"\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\r2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0002J\u001c\u0010%\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0017H\u0002J\u0012\u0010)\u001a\u00020\u00132\b\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u001a\u0010,\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/vungle/ads/internal/downloader/AssetDownloader;", "Lcom/vungle/ads/internal/downloader/Downloader;", "downloadExecutor", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/PathProvider;)V", "okHttpClient", "Lokhttp3/OkHttpClient;", "progressStep", "", "transitioning", "", "Lcom/vungle/ads/internal/downloader/DownloadRequest;", "cancel", "", "request", "cancelAll", "checkSpaceAvailable", "", "decodeGzipIfNeeded", "Lokhttp3/ResponseBody;", "networkResponse", "Lokhttp3/Response;", "deliverError", "downloadRequest", "downloadListener", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "downloadError", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "deliverProgress", "copy", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "deliverSuccess", "file", "Ljava/io/File;", "download", "getContentLength", "", c.Y1, "isValidUrl", "httpUrl", "", "launchRequest", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class AssetDownloader implements Downloader {
    private static final String CONTENT_ENCODING = "Content-Encoding";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final int DOWNLOAD_CHUNK_SIZE = 2048;
    private static final String GZIP = "gzip";
    private static final String IDENTITY = "identity";
    private static final long MAX_PERCENT = 100;
    private static final int MINIMUM_SPACE_REQUIRED_MB = 20971520;
    private static final int PROGRESS_STEP = 5;
    private static final String TAG = "AssetDownloader";
    private static final int TIMEOUT = 30;
    private final VungleThreadPoolExecutor downloadExecutor;
    private OkHttpClient okHttpClient;
    private final PathProvider pathProvider;
    private final int progressStep;
    private final List<DownloadRequest> transitioning;

    /* JADX INFO: compiled from: AssetDownloader.kt */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"com/vungle/ads/internal/downloader/AssetDownloader$download$1", "Lcom/vungle/ads/internal/task/PriorityRunnable;", "priority", "", "getPriority", "()I", "run", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends PriorityRunnable {
        final /* synthetic */ AssetDownloadListener $downloadListener;
        final /* synthetic */ DownloadRequest $downloadRequest;

        b(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
            this.$downloadRequest = downloadRequest;
            this.$downloadListener = assetDownloadListener;
        }

        @Override // com.vungle.ads.internal.task.PriorityRunnable
        public int getPriority() {
            return this.$downloadRequest.getPriority();
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            AssetDownloader.this.launchRequest(this.$downloadRequest, this.$downloadListener);
        }
    }

    public AssetDownloader(VungleThreadPoolExecutor downloadExecutor, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(downloadExecutor, "downloadExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.downloadExecutor = downloadExecutor;
        this.pathProvider = pathProvider;
        this.progressStep = 5;
        this.transitioning = new ArrayList();
        OkHttpClient.a aVar = new OkHttpClient.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.a aVarF = aVar.L(30L, timeUnit).d(30L, timeUnit).c(null).e(true).f(true);
        ConfigManager configManager = ConfigManager.INSTANCE;
        if (configManager.isCleverCacheEnabled()) {
            long cleverCacheDiskSize = configManager.getCleverCacheDiskSize();
            int cleverCacheDiskPercentage = configManager.getCleverCacheDiskPercentage();
            String absolutePath = pathProvider.getCleverCacheDir().getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "pathProvider.getCleverCacheDir().absolutePath");
            long jMin = Math.min(cleverCacheDiskSize, (pathProvider.getAvailableBytes(absolutePath) * ((long) cleverCacheDiskPercentage)) / ((long) 100));
            if (jMin > 0) {
                aVarF.c(new Cache(pathProvider.getCleverCacheDir(), jMin));
            } else {
                Log.w(TAG, "cache disk capacity size <=0, no clever cache active.");
            }
        }
        this.okHttpClient = aVarF.b();
    }

    private final boolean checkSpaceAvailable() {
        PathProvider pathProvider = this.pathProvider;
        String absolutePath = pathProvider.getVungleDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "pathProvider.getVungleDir().absolutePath");
        long availableBytes = pathProvider.getAvailableBytes(absolutePath);
        if (availableBytes >= 20971520) {
            return true;
        }
        AnalyticsClient.INSTANCE.logError$vungle_ads_release(126, "Insufficient space " + availableBytes, (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        return false;
    }

    private final ResponseBody decodeGzipIfNeeded(Response networkResponse) {
        ResponseBody f10614g = networkResponse.getF10614g();
        if (!StringsKt__StringsJVMKt.equals(GZIP, Response.header$default(networkResponse, CONTENT_ENCODING, null, 2, null), true) || f10614g == null) {
            return f10614g;
        }
        return new RealResponseBody(Response.header$default(networkResponse, "Content-Type", null, 2, null), -1L, Okio.buffer(new m(f10614g.getF10545d())));
    }

    private final void deliverError(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener, AssetDownloadListener.a aVar) {
        if (assetDownloadListener != null) {
            assetDownloadListener.onError(aVar, downloadRequest);
        }
    }

    private final void deliverProgress(AssetDownloadListener.Progress copy, DownloadRequest downloadRequest, AssetDownloadListener listener) {
        Log.d(TAG, "On progress " + downloadRequest);
        if (listener != null) {
            listener.onProgress(copy, downloadRequest);
        }
    }

    private final void deliverSuccess(File file, DownloadRequest downloadRequest, AssetDownloadListener listener) {
        Log.d(TAG, "On success " + downloadRequest);
        if (listener != null) {
            listener.onSuccess(file, downloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: download$lambda-0, reason: not valid java name */
    public static final void m1132download$lambda0(AssetDownloader this$0, DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.deliverError(downloadRequest, assetDownloadListener, new AssetDownloadListener.a(-1, new InternalError(3001, null, 2, null), AssetDownloadListener.a.b.INSTANCE.getINTERNAL_ERROR()));
    }

    private final long getContentLength(Response response) {
        String strA = response.getF10613f().a("Content-Length");
        if (strA == null || strA.length() == 0) {
            Response h = response.getH();
            strA = null;
            if (h != null) {
                strA = Response.header$default(h, "Content-Length", null, 2, null);
            }
        }
        if (strA == null || strA.length() == 0) {
            return -1L;
        }
        try {
            return Long.parseLong(strA);
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private final boolean isValidUrl(String httpUrl) {
        return ((httpUrl == null || httpUrl.length() == 0) || HttpUrl.a.g(httpUrl) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final void launchRequest(com.vungle.ads.internal.downloader.DownloadRequest r40, com.vungle.ads.internal.downloader.AssetDownloadListener r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1682
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.downloader.AssetDownloader.launchRequest(com.vungle.ads.internal.downloader.DownloadRequest, com.vungle.ads.internal.downloader.AssetDownloadListener):void");
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancel(DownloadRequest request) {
        if (request == null || request.isCancelled()) {
            return;
        }
        request.cancel();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancelAll() {
        Iterator<T> it = this.transitioning.iterator();
        while (it.hasNext()) {
            cancel((DownloadRequest) it.next());
        }
        this.transitioning.clear();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void download(final DownloadRequest downloadRequest, final AssetDownloadListener downloadListener) {
        if (downloadRequest == null) {
            return;
        }
        this.transitioning.add(downloadRequest);
        this.downloadExecutor.execute(new b(downloadRequest, downloadListener), new Runnable() { // from class: com.vungle.ads.internal.downloader.a
            @Override // java.lang.Runnable
            public final void run() {
                AssetDownloader.m1132download$lambda0(this.a, downloadRequest, downloadListener);
            }
        });
    }
}
