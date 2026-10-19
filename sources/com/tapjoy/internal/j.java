package com.tapjoy.internal;

import com.tapjoy.TJOfferwallDiscoverView;
import com.tapjoy.TJWebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements Runnable {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public j(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.removeAllViews();
        TJWebView tJWebView = this.a.a;
        if (tJWebView != null) {
            tJWebView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
            this.a.a.destroy();
            this.a.b.c();
            TJOfferwallDiscoverView tJOfferwallDiscoverView = this.a;
            tJOfferwallDiscoverView.a = null;
            tJOfferwallDiscoverView.b = null;
        }
        TJOfferwallDiscoverView tJOfferwallDiscoverView2 = this.a;
        tJOfferwallDiscoverView2.f7802e = false;
        tJOfferwallDiscoverView2.f7803f = false;
    }
}
