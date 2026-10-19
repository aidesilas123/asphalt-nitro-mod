package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class IH implements Runnable {
    public final /* synthetic */ float A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ int A02;
    public final /* synthetic */ int A03;
    public final /* synthetic */ IK A04;

    public IH(IK ik, int i, int i2, int i3, float f2) {
        this.A04 = ik;
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A00 = f2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A04.A01.ADV(this.A03, this.A01, this.A02, this.A00);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
