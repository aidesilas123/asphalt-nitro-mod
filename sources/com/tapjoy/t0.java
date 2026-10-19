package com.tapjoy;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 implements TJAdUnit.TJAdUnitWebViewListener {
    public final /* synthetic */ o a;

    public t0(o oVar) {
        this.a = oVar;
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitWebViewListener
    public final void onClick() {
        o oVar = this.a;
        TJPlacement tJPlacementA = oVar.a("SHOW");
        TapjoyLog.i("TJCorePlacement", "Handle onClick for placement " + oVar.f8037d.i());
        if (tJPlacementA == null || tJPlacementA.d() == null) {
            return;
        }
        tJPlacementA.d().onClick(tJPlacementA);
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitWebViewListener
    public final void onClosed() {
        if (this.a.i) {
            TJPlacementManager.decrementPlacementCacheCount();
            this.a.i = false;
        }
        if (this.a.j) {
            TJPlacementManager.decrementPlacementPreRenderCount();
            this.a.j = false;
        }
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitWebViewListener
    public final void onContentReady() {
        this.a.b();
    }
}
