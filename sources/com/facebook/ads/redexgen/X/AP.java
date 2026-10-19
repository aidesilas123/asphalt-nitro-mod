package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class AP implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AQ A01;

    public AP(AQ aq, int i) {
        this.A01 = aq;
        this.A00 = i;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.A01.AAd(this.A00);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
