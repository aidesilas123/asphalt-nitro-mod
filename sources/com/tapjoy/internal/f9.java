package com.tapjoy.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tapjoy.TJOfferwallDiscoverView;

/* JADX INFO: loaded from: classes4.dex */
public final class f9 extends WebViewClient {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public f9(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.b.g();
        TJOfferwallDiscoverView tJOfferwallDiscoverView = this.a;
        if (!tJOfferwallDiscoverView.f7802e && tJOfferwallDiscoverView.isLaidOut()) {
            this.a.b.e();
            this.a.f7802e = true;
        }
        this.a.f7803f = true;
    }
}
