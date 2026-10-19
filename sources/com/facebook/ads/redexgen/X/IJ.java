package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class IJ implements Runnable {
    public final /* synthetic */ C0914Au A00;
    public final /* synthetic */ IK A01;

    public IJ(IK ik, C0914Au c0914Au) {
        this.A01 = ik;
        this.A00 = c0914Au;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A00();
            this.A01.A01.ADL(this.A00);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
