package com.tapjoy.internal;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class x6 implements Runnable {
    public final /* synthetic */ TJAdUnit a;

    public x6(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.j.getCurrentPosition() != 0) {
            TJAdUnit tJAdUnit = this.a;
            if (!tJAdUnit.n) {
                tJAdUnit.n = true;
            }
            tJAdUnit.f7789f.r(tJAdUnit.l);
            this.a.G.run();
            return;
        }
        TJAdUnit tJAdUnit2 = this.a;
        if (tJAdUnit2.A) {
            tJAdUnit2.B = true;
        } else {
            tJAdUnit2.b.postDelayed(tJAdUnit2.F, 200L);
        }
    }
}
