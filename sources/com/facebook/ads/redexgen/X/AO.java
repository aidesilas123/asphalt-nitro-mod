package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class AO implements Runnable {
    public final /* synthetic */ AQ A00;
    public final /* synthetic */ C0914Au A01;

    public AO(AQ aq, C0914Au c0914Au) {
        this.A00 = aq;
        this.A01 = c0914Au;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.A00();
            this.A00.A01.AAa(this.A01);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
