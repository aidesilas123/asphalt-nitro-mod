package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1383Tw implements LB {
    public int A00;
    public final LB A01;

    public C1383Tw(LB lb, int i) {
        this.A01 = lb;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void ADy(String str) {
        if (this.A00 > 0) {
            this.A01.ADy(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void flush() {
        this.A01.flush();
    }
}
