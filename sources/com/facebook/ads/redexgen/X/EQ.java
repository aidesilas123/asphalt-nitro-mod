package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class EQ implements Runnable {
    public final /* synthetic */ BT A00;

    public EQ(BT bt) {
        this.A00 = bt;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A09();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
