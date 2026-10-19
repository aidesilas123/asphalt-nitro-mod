package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC1627bY implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1626bX A01;

    public RunnableC1627bY(C1626bX c1626bX, int i) {
        this.A01 = c1626bX;
        this.A00 = i;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (this.A01.A01) {
                C1626bX c1626bX = this.A01;
                c1626bX.A04(c1626bX.A05.AAE());
                this.A01.A04.postDelayed(this.A01.A09, this.A00);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
