package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1382Tv implements LB {
    public final LA A00;
    public final LB A01;

    public C1382Tv(LB lb, int i, int i2) {
        this.A01 = lb;
        this.A00 = new LA(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void ADy(String str) {
        this.A00.A04(str);
        if (this.A00.A02() == null || !LD.A08(this.A00)) {
            return;
        }
        this.A01.ADy(this.A00.A02());
    }

    @Override // com.facebook.ads.redexgen.X.LB
    public final void flush() {
        this.A00.A03();
        while (this.A00.A02() != null) {
            if (LD.A08(this.A00)) {
                this.A01.ADy(this.A00.A02());
            }
            this.A00.A03();
        }
    }
}
