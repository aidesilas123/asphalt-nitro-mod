package com.iab.omid.library.jungroup.b;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Runnable {
    public final /* synthetic */ WebView a;
    public final /* synthetic */ String b;

    public e(WebView webView, String str) {
        this.a = webView;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.loadUrl(this.b);
    }
}
