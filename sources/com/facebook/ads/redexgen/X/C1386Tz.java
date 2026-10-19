package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1386Tz implements LB {
    public int A00;
    public final LB A01;
    public final LB A02;

    public C1386Tz(LB lb, int i, LB lb2) {
        this.A01 = lb;
        this.A00 = i;
        this.A02 = lb2;
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void ADy(String str) {
        if (this.A00 <= 0) {
            this.A02.ADy(str);
            return;
        }
        this.A01.ADy(str);
        this.A01.flush();
        this.A00--;
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void flush() {
        this.A02.flush();
    }
}
