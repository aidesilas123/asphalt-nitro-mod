package com.tapjoy;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.VideoView;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.tapjoy.TapjoyErrorMessage;
import java.io.FileInputStream;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends WebViewClient {
    public final /* synthetic */ TJAdUnit a;

    public b(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.b.a(java.lang.String):boolean");
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        k kVar;
        TapjoyLog.d("TJAdUnit", "onPageFinished: " + str);
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit.z) {
            return;
        }
        TJAdUnitActivity tJAdUnitActivity = tJAdUnit.f7788e;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.c(false);
        }
        TJAdUnit tJAdUnit2 = this.a;
        tJAdUnit2.z = true;
        if (tJAdUnit2.v && (kVar = tJAdUnit2.f7789f) != null) {
            kVar.e();
        }
        k kVar2 = this.a.f7789f;
        if (kVar2 != null) {
            kVar2.g();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        TapjoyLog.d("TJAdUnit", "onPageStarted: " + str);
        TJAdUnit tJAdUnit = this.a;
        k kVar = tJAdUnit.f7789f;
        if (kVar != null) {
            kVar.f8035g = true;
            kVar.i = false;
            kVar.j = false;
            TapjoyLog.d("TJAdUnit", "detachVolumeListener");
            ScheduledFuture scheduledFuture = tJAdUnit.p;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                tJAdUnit.p = null;
            }
            tJAdUnit.q = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        TapjoyLog.d("TJAdUnit", "error:" + str);
        TJAdUnitActivity tJAdUnitActivity = this.a.f7788e;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.d();
        }
        if (this.a.h() == null) {
            super.onReceivedError(webView, i, str, str2);
        } else {
            this.a.h();
            throw null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        TapjoyLog.e("TJAdUnit", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"));
        if (this.a.h() != null) {
            this.a.h();
            throw null;
        }
        TJAdUnit tJAdUnit = this.a;
        VideoView videoView = tJAdUnit.j;
        if (videoView != null && (tJAdUnit.n || videoView.getDuration() > 0)) {
            TJAdUnit tJAdUnit2 = this.a;
            tJAdUnit2.n = false;
            tJAdUnit2.m = true;
            tJAdUnit2.d("WebView loading while trying to play video.");
        }
        View view = this.a.h;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.a.h);
            }
            this.a.h = null;
        }
        TJWebView tJWebView = this.a.i;
        if (tJWebView != null) {
            ViewGroup viewGroup2 = (ViewGroup) tJWebView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.a.i);
            }
            this.a.i.removeAllViews();
            this.a.i.destroy();
            this.a.i = null;
        }
        k kVar = this.a.f7789f;
        if (kVar != null) {
            kVar.a();
            this.a.f7789f = null;
        }
        TJAdUnitActivity tJAdUnitActivity = this.a.f7788e;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.finish();
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        TapjoyCachedAssetData tapjoyCachedAssetDataF;
        WebResourceResponse webResourceResponse;
        if (TapjoyCache.getInstance() != null && (tapjoyCachedAssetDataF = TapjoyCache.getInstance().f(str)) != null) {
            try {
                webResourceResponse = new WebResourceResponse(tapjoyCachedAssetDataF.e(), C.UTF8_NAME, new FileInputStream(tapjoyCachedAssetDataF.d()));
            } catch (Exception unused) {
                webResourceResponse = null;
            }
            if (webResourceResponse != null) {
                TapjoyLog.d("TJAdUnit", "Reading request for " + str + " from cache -- localPath: " + tapjoyCachedAssetDataF.d());
                return webResourceResponse;
            }
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return a(webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(str);
    }
}
