package com.iab.omid.library.jungroup.publisher;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {
    public b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        a(webView);
    }
}
