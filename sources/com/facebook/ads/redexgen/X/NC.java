package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class NC implements Runnable {
    public final /* synthetic */ ND A00;
    public final /* synthetic */ NE A01;

    public NC(ND nd, NE ne) {
        this.A00 = nd;
        this.A01 = ne;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.AAY();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
