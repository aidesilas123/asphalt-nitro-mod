package com.tapjoy;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.tapjoy.internal.f9;

/* JADX INFO: loaded from: classes4.dex */
public class TJOfferwallDiscoverView extends FrameLayout {
    public TJWebView a;
    public k b;
    public TJOfferwallDiscoverListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h0 f7801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7803f;

    public TJOfferwallDiscoverView(Context context) {
        super(context);
        this.f7802e = false;
        this.f7803f = false;
    }

    public void a() {
        TapjoyUtil.runOnMainThread(new com.tapjoy.internal.j(this));
    }

    public void b(Context context, String str) {
        if (!TapjoyConnectCore.isConnected()) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener = this.c;
            if (tJOfferwallDiscoverListener != null) {
                tJOfferwallDiscoverListener.requestFailure(new r(-1, "Tapjoy SDK is not connected"));
                return;
            }
            return;
        }
        if (context == null) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener2 = this.c;
            if (tJOfferwallDiscoverListener2 != null) {
                tJOfferwallDiscoverListener2.requestFailure(new r(0, "Context is null"));
            }
            a();
            return;
        }
        if (str == null || str.length() == 0) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener3 = this.c;
            if (tJOfferwallDiscoverListener3 != null) {
                tJOfferwallDiscoverListener3.requestFailure(new r(0, "Placement is null"));
            }
            a();
            return;
        }
        a();
        TJWebView tJWebView = new TJWebView(context);
        this.a = tJWebView;
        tJWebView.setWebViewClient(new f9(this));
        this.b = new k(new x0(this));
        addView(this.a, -1, -1);
        new w0(this, str).start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchVisibilityChanged(View view, int i) {
        super.dispatchVisibilityChanged(view, i);
        if (i == 0) {
            k kVar = this.b;
            if (kVar != null) {
                kVar.u();
                return;
            }
            return;
        }
        k kVar2 = this.b;
        if (kVar2 != null) {
            kVar2.t();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        k kVar = this.b;
        if (kVar == null || this.f7802e || !this.f7803f) {
            return;
        }
        kVar.e();
        this.f7802e = true;
    }

    public void setListener(TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        this.c = tJOfferwallDiscoverListener;
    }
}
