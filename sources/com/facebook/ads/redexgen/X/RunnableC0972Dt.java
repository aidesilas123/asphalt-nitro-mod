package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0972Dt implements Runnable {
    public final /* synthetic */ RunnableC0974Dv A00;
    public final /* synthetic */ Throwable A01;

    public RunnableC0972Dt(RunnableC0974Dv runnableC0974Dv, Throwable th) {
        this.A00 = runnableC0974Dv;
        this.A01 = th;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            RunnableC0974Dv runnableC0974Dv = this.A00;
            Throwable th = this.A01;
            if (!runnableC0974Dv.A0G(1, th != null ? 4 : 2, th) && !this.A00.A0F(6, 3) && !this.A00.A0F(7, 0)) {
                throw new IllegalStateException();
            }
        } catch (Throwable th2) {
            K0.A00(th2, this);
        }
    }
}
