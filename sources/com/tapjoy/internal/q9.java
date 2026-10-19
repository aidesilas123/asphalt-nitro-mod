package com.tapjoy.internal;

import com.tapjoy.TJOfferwallDiscoverListener;
import com.tapjoy.TJOfferwallDiscoverView;
import com.tapjoy.TJWebView;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class q9 implements Runnable {
    public final /* synthetic */ com.tapjoy.h0 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ com.tapjoy.w0 c;

    public q9(com.tapjoy.w0 w0Var, com.tapjoy.h0 h0Var, String str) {
        this.c = w0Var;
        this.a = h0Var;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a.a;
        if (i != 200) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener = this.c.b.c;
            if (tJOfferwallDiscoverListener != null) {
                tJOfferwallDiscoverListener.requestFailure(new com.tapjoy.r(i, "Unknown Error"));
            }
            this.c.b.a();
            return;
        }
        TJOfferwallDiscoverListener tJOfferwallDiscoverListener2 = this.c.b.c;
        if (tJOfferwallDiscoverListener2 != null) {
            tJOfferwallDiscoverListener2.requestSuccess();
        }
        TJOfferwallDiscoverView tJOfferwallDiscoverView = this.c.b;
        com.tapjoy.h0 h0Var = this.a;
        tJOfferwallDiscoverView.f7801d = h0Var;
        TJWebView tJWebView = tJOfferwallDiscoverView.a;
        if (tJWebView != null) {
            tJWebView.loadDataWithBaseURL(this.b, h0Var.f7843d, "text/html", "charset=UTF-8", null);
        } else {
            TapjoyLog.d("TJOfferwallDiscoverView", "Webview is null");
        }
    }
}
