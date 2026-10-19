package com.tapjoy;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 implements TJAdUnit.TJAdUnitVideoListener {
    public final /* synthetic */ o a;

    public u0(o oVar) {
        this.a = oVar;
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitVideoListener
    public final void onVideoCompleted() {
        TJPlacement tJPlacementA = this.a.a("SHOW");
        if (tJPlacementA == null || tJPlacementA.f() == null) {
            return;
        }
        tJPlacementA.f().onVideoComplete(tJPlacementA);
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitVideoListener
    public final void onVideoError(String str) {
        TJPlacement tJPlacementA = this.a.a("SHOW");
        if (tJPlacementA == null || tJPlacementA.f() == null) {
            return;
        }
        tJPlacementA.f().onVideoError(tJPlacementA, str);
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitVideoListener
    public final void onVideoStart() {
        TJPlacement tJPlacementA = this.a.a("SHOW");
        if (tJPlacementA == null || tJPlacementA.f() == null) {
            return;
        }
        tJPlacementA.f().onVideoStart(tJPlacementA);
    }
}
