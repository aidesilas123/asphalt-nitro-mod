package com.tapjoy.internal;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class i7 implements Runnable {
    public final /* synthetic */ TJAdUnit a;

    public i7(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnit tJAdUnit = this.a;
        com.tapjoy.k kVar = tJAdUnit.f7789f;
        if (kVar != null) {
            kVar.p(tJAdUnit.j.getCurrentPosition());
        }
        TJAdUnit tJAdUnit2 = this.a;
        tJAdUnit2.b.postDelayed(tJAdUnit2.G, 500L);
    }
}
