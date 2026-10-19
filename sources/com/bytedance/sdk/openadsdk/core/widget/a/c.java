package com.bytedance.sdk.openadsdk.core.widget.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.l;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: SSWebSettings.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final WeakReference<Context> a;
    private boolean b = true;
    private final boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1744d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f1745e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f1746f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1747g = true;

    private c(Context context) {
        this.a = new WeakReference<>(context);
    }

    public static c a(Context context) {
        return new c(context);
    }

    private void a(WebSettings webSettings) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                webSettings.setMediaPlaybackRequiresUserGesture(false);
            }
        } catch (Throwable th) {
            l.d(th.toString());
        }
    }

    public static void b(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            l.d(th.toString());
        }
    }

    public c a(boolean z) {
        this.f1747g = z;
        return this;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void a(WebView webView) {
        if (webView == null || this.a.get() == null) {
            return;
        }
        b(webView);
        WebSettings settings = webView.getSettings();
        a(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e2) {
            l.e("SSWebSettings", e2.getMessage());
        }
        try {
            if (this.b) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th) {
            l.e("SSWebSettings", th.getMessage());
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setSavePassword(false);
        try {
            if (this.f1747g) {
                webView.setLayerType(2, null);
            } else {
                webView.setLayerType(0, null);
            }
        } catch (Throwable th2) {
            l.e("SSWebSettings", th2.getMessage());
        }
    }

    public c b(boolean z) {
        this.b = z;
        return this;
    }
}
