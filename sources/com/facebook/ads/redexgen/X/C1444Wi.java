package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1444Wi implements C3 {
    public final int A00;
    public final int A01;
    public final C1062Hh A02;

    public C1444Wi(C1445Wj c1445Wj) {
        C1062Hh c1062Hh = c1445Wj.A00;
        this.A02 = c1062Hh;
        c1062Hh.A0Y(12);
        this.A00 = c1062Hh.A0H();
        this.A01 = c1062Hh.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final int A7g() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final boolean A8s() {
        return this.A00 != 0;
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final int AEF() {
        int i = this.A00;
        return i == 0 ? this.A02.A0H() : i;
    }
}
