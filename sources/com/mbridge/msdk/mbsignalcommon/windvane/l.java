package com.mbridge.msdk.mbsignalcommon.windvane;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.json.b4;

/* JADX INFO: compiled from: WindVaneWebViewClient.java */
/* JADX INFO: loaded from: classes4.dex */
public final class l extends com.mbridge.msdk.mbsignalcommon.base.b {
    public static boolean b = true;
    protected String a = null;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f7336d;

    private WebResourceResponse a(String str) {
        Bitmap bitmapA;
        try {
            if (TextUtils.isEmpty(str) || !j.d(str) || (bitmapA = com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(str)) == null || bitmapA.isRecycled()) {
                return null;
            }
            return new WebResourceResponse(j.e(str), b4.L, com.mbridge.msdk.foundation.same.c.a.a(bitmapA));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.a = str;
        d dVar = this.f7336d;
        if (dVar != null) {
            dVar.a(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebResourceResponse webResourceResponseA = a(str);
        return webResourceResponseA != null ? webResourceResponseA : super.shouldInterceptRequest(webView, str);
    }
}
