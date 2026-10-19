package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class IE implements Runnable {
    public final /* synthetic */ long A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ IK A02;
    public final /* synthetic */ String A03;

    public IE(IK ik, String str, long j, long j2) {
        this.A02 = ik;
        this.A03 = str;
        this.A01 = j;
        this.A00 = j2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A02.A01.ADK(this.A03, this.A01, this.A00);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
