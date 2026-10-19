package com.tapjoy.internal;

import android.os.SystemClock;
import com.tapjoy.TJActionRequest;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyLog;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class m4 implements Observer, TJPlacementListener {
    public final Object a = null;
    public final a4 b;
    public volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TJPlacement f7942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y4 f7943e;

    public m4(y4 y4Var, a4 a4Var) {
        this.f7943e = y4Var;
        this.b = a4Var;
    }

    public final void a() {
        synchronized (this) {
            if (this.c) {
                return;
            }
            a4 a4Var = this.b;
            a4Var.getClass();
            boolean z = SystemClock.elapsedRealtime() - a4Var.b > a4Var.a;
            if (z) {
                b("Timed out");
                return;
            }
            if (!TapjoyConnectCore.isConnected()) {
                n2 n2Var = a3.a;
                n2Var.addObserver(this);
                if (!TapjoyConnectCore.isConnected()) {
                    return;
                } else {
                    n2Var.deleteObserver(this);
                }
            }
            TJPlacement tJPlacement = this.f7942d;
            if (tJPlacement == null) {
                if (!this.f7943e.d()) {
                    b("Cannot request");
                    return;
                }
                TJPlacement tJPlacementA = this.f7943e.a(TapjoyConnectCore.getContext(), this, this.a);
                this.f7942d = tJPlacementA;
                tJPlacementA.h();
                return;
            }
            if (tJPlacement.g()) {
                if (this.f7943e.e(this)) {
                    this.f7942d.j();
                    b(null);
                }
            }
        }
    }

    public final void b(String str) {
        synchronized (this) {
            String strB = this.f7943e.b(this.a);
            if (str == null) {
                TapjoyLog.i("SystemPlacement", "Placement " + strB + " is presented now");
            } else {
                TapjoyLog.i("SystemPlacement", "Cannot show placement " + strB + " now (" + str + ")");
            }
            this.c = true;
            this.f7942d = null;
            a3.a.deleteObserver(this);
            a3.f7852e.deleteObserver(this);
            a3.c.deleteObserver(this);
        }
        this.f7943e.c(this);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onClick(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentDismiss(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentReady(TJPlacement tJPlacement) {
        a();
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentShow(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestFailure(TJPlacement tJPlacement, com.tapjoy.r rVar) {
        b(rVar.b);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestSuccess(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str, int i) {
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        a();
    }
}
