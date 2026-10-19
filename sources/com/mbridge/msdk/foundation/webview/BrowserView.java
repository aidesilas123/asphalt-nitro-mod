package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.w;
import com.unity3d.services.core.di.ServiceProvider;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class BrowserView extends LinearLayout {
    private String a;
    private ProgressBar b;
    private WebView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ToolBar f7245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f7246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CampaignEx f7247f;

    public static final class MBDownloadListener implements DownloadListener {
        private CampaignEx campaignEx;
        private String title;

        public MBDownloadListener() {
        }

        public MBDownloadListener(CampaignEx campaignEx) {
            this.campaignEx = campaignEx;
        }

        @Override // android.webkit.DownloadListener
        public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        }

        public final void setTitle(String str) {
            this.title = str;
        }
    }

    public interface a {
        void a();

        void a(WebView webView, int i, String str, String str2);

        void a(WebView webView, String str);

        void a(WebView webView, String str, Bitmap bitmap);

        boolean b(WebView webView, String str);

        void c(WebView webView, String str);
    }

    public BrowserView(Context context) {
        super(context);
        init();
    }

    public BrowserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BrowserView(Context context, CampaignEx campaignEx) {
        super(context);
        this.f7247f = campaignEx;
        init();
    }

    private WebView a() {
        WebView webView = new WebView(getContext());
        try {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setAppCacheEnabled(true);
            settings.setAppCacheMaxSize(ServiceProvider.HTTP_CACHE_DISK_SIZE);
            settings.setAllowFileAccess(true);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    settings.setSafeBrowsingEnabled(false);
                } catch (Throwable th) {
                    aa.d("BrowserView", th.getMessage());
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            if (i >= 21) {
                try {
                    settings.setMixedContentMode(0);
                } catch (Exception e2) {
                    aa.d("BrowserView", e2.getMessage());
                }
            }
            settings.setDatabaseEnabled(true);
            String path = getContext().getDir("database", 0).getPath();
            settings.setDatabasePath(path);
            settings.setGeolocationEnabled(true);
            settings.setGeolocationDatabasePath(path);
            try {
                Method declaredMethod = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(settings, Boolean.FALSE);
            } catch (Exception e3) {
                aa.d("BrowserView", e3.getMessage());
            }
        } catch (Throwable th2) {
            aa.d("BrowserView", th2.getMessage());
        }
        webView.setDownloadListener(new MBDownloadListener(this.f7247f));
        webView.setWebViewClient(new WebViewClient() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.2
            @Override // android.webkit.WebViewClient
            public final void onLoadResource(WebView webView2, String str) {
                super.onLoadResource(webView2, str);
                aa.b("BrowserView", "onLoadResource 开始! = " + str);
                if (BrowserView.this.f7246e != null) {
                    BrowserView.this.f7246e.a(webView2, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView2, String str) {
                if (BrowserView.this.f7246e != null) {
                    BrowserView.this.f7246e.c(webView2, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                aa.b("BrowserView", "开始! = " + str);
                BrowserView.this.a = str;
                if (BrowserView.this.f7246e != null) {
                    BrowserView.this.f7246e.a(webView2, str, bitmap);
                }
                BrowserView.this.b.setVisible(true);
                BrowserView.this.b.setProgressState(5);
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView2, int i2, String str, String str2) {
                if (BrowserView.this.f7246e != null) {
                    BrowserView.this.f7246e.a(webView2, i2, str, str2);
                }
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                aa.b("BrowserView", "js大跳! = " + str);
                BrowserView.this.f7245d.getItem("backward").setEnabled(true);
                BrowserView.this.f7245d.getItem("forward").setEnabled(false);
                if (BrowserView.this.f7246e != null) {
                    return BrowserView.this.f7246e.b(webView2, str);
                }
                return false;
            }
        });
        webView.setWebChromeClient(w.o() <= 10 ? new WebChromeClient() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.3
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView2, String str, String str2, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView2, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView2, int i2) {
                if (i2 == 100) {
                    BrowserView.this.b.setProgressState(7);
                    new Handler().postDelayed(new Runnable() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BrowserView.this.b.setVisible(false);
                        }
                    }, 200L);
                }
            }
        } : new WebChromeClient() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.4
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView2, int i2) {
                if (i2 == 100) {
                    BrowserView.this.b.setProgressState(7);
                    new Handler().postDelayed(new Runnable() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BrowserView.this.b.setVisible(false);
                        }
                    }, 200L);
                }
            }
        });
        return webView;
    }

    public void destroy() {
        WebView webView = this.c;
        if (webView != null) {
            webView.stopLoading();
            this.c.setWebViewClient(null);
            this.c.destroy();
            this.c = null;
            removeAllViews();
        }
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        ProgressBar progressBar = new ProgressBar(getContext());
        this.b = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.c == null) {
                this.c = a();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.c.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            aa.b("BrowserView", "webview is error", th);
        }
        this.f7245d = new ToolBar(getContext());
        this.f7245d.setLayoutParams(new LinearLayout.LayoutParams(-1, af.b(getContext(), 40.0f)));
        this.f7245d.setBackgroundColor(-1);
        addView(this.b);
        WebView webView = this.c;
        if (webView != null) {
            addView(webView);
        }
        addView(this.f7245d);
        this.b.initResource(true);
        this.f7245d.getItem("backward").setEnabled(false);
        this.f7245d.getItem("forward").setEnabled(false);
        this.f7245d.setOnItemClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.foundation.webview.BrowserView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BrowserView.this.c != null) {
                    BrowserView.this.c.stopLoading();
                }
                String str = (String) view.getTag();
                boolean z = false;
                if (TextUtils.equals(str, "backward")) {
                    BrowserView.this.f7245d.getItem("forward").setEnabled(true);
                    if (BrowserView.this.c != null && BrowserView.this.c.canGoBack()) {
                        BrowserView.this.c.goBack();
                    }
                    View item = BrowserView.this.f7245d.getItem("backward");
                    if (BrowserView.this.c != null && BrowserView.this.c.canGoBack()) {
                        z = true;
                    }
                    item.setEnabled(z);
                    return;
                }
                if (TextUtils.equals(str, "forward")) {
                    BrowserView.this.f7245d.getItem("backward").setEnabled(true);
                    if (BrowserView.this.c != null && BrowserView.this.c.canGoForward()) {
                        BrowserView.this.c.goForward();
                    }
                    View item2 = BrowserView.this.f7245d.getItem("forward");
                    if (BrowserView.this.c != null && BrowserView.this.c.canGoForward()) {
                        z = true;
                    }
                    item2.setEnabled(z);
                    return;
                }
                if (!TextUtils.equals(str, "refresh")) {
                    if (!TextUtils.equals(str, "exits") || BrowserView.this.f7246e == null) {
                        return;
                    }
                    BrowserView.this.f7246e.a();
                    return;
                }
                BrowserView.this.f7245d.getItem("backward").setEnabled(BrowserView.this.c != null && BrowserView.this.c.canGoBack());
                View item3 = BrowserView.this.f7245d.getItem("forward");
                if (BrowserView.this.c != null && BrowserView.this.c.canGoForward()) {
                    z = true;
                }
                item3.setEnabled(z);
                if (BrowserView.this.c != null) {
                    BrowserView.this.c.loadUrl(BrowserView.this.a);
                }
            }
        });
    }

    public void loadUrl(String str) {
        WebView webView = this.c;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public void setListener(a aVar) {
        this.f7246e = aVar;
    }

    public void setWebView(WebView webView) {
        this.c = webView;
    }
}
