package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ds, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0971Ds implements Runnable {
    public final /* synthetic */ RunnableC0974Dv A00;

    public RunnableC0971Ds(RunnableC0974Dv runnableC0974Dv) {
        this.A00 = runnableC0974Dv;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A0F(5, 3);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
