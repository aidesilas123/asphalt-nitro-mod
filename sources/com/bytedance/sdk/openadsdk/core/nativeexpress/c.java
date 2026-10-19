package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: BrandBannerWebViewPool.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static int b;
    private static volatile c c;
    private final List<DspHtmlWebView> a = new ArrayList();

    public static c a() {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new c();
                }
            }
        }
        return c;
    }

    @UiThread
    public void a(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView != null) {
            b(dspHtmlWebView);
        }
    }

    @Nullable
    public DspHtmlWebView b() {
        DspHtmlWebView dspHtmlWebViewRemove;
        if (c() > 0 && (dspHtmlWebViewRemove = this.a.remove(0)) != null) {
            return dspHtmlWebViewRemove;
        }
        return null;
    }

    public void b(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView != null) {
            if (this.a.size() >= b) {
                dspHtmlWebView.l();
            } else {
                if (this.a.contains(dspHtmlWebView)) {
                    return;
                }
                c(dspHtmlWebView);
                this.a.add(dspHtmlWebView);
            }
        }
    }

    public int c() {
        return this.a.size();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void c(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView == null || dspHtmlWebView.getWebView() == null) {
            return;
        }
        if (dspHtmlWebView.getParent() != null) {
            ((ViewGroup) dspHtmlWebView.getParent()).removeView(dspHtmlWebView);
        }
        try {
            dspHtmlWebView.removeAllViews();
            dspHtmlWebView.c();
            dspHtmlWebView.setWebChromeClient(null);
            dspHtmlWebView.setWebViewClient(null);
            dspHtmlWebView.setDownloadListener(null);
            dspHtmlWebView.setDefaultTextEncodingName(C.UTF8_NAME);
            dspHtmlWebView.setAllowFileAccess(false);
            dspHtmlWebView.setJavaScriptEnabled(true);
            dspHtmlWebView.setAppCacheEnabled(true);
            dspHtmlWebView.setDatabaseEnabled(true);
            dspHtmlWebView.setSupportZoom(false);
            dspHtmlWebView.getWebView().setLayerType(0, null);
            dspHtmlWebView.setBackgroundColor(0);
            dspHtmlWebView.getWebView().setHorizontalScrollBarEnabled(false);
            dspHtmlWebView.getWebView().setHorizontalScrollbarOverlay(false);
            dspHtmlWebView.getWebView().setVerticalScrollBarEnabled(false);
            dspHtmlWebView.getWebView().setVerticalScrollbarOverlay(false);
            dspHtmlWebView.a(true);
            dspHtmlWebView.j();
            if (Build.VERSION.SDK_INT >= 21) {
                dspHtmlWebView.setMixedContentMode(0);
            }
        } catch (Exception unused) {
        }
    }
}
