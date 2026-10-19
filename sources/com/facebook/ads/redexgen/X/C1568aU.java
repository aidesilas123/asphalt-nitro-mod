package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1568aU implements NK {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1567aT A01;
    public final /* synthetic */ UJ A02;

    public C1568aU(AbstractC1567aT abstractC1567aT, int i, UJ uj) {
        this.A01 = abstractC1567aT;
        this.A00 = i;
        this.A02 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final void ABX(boolean z) {
        if (this.A00 == 0) {
            this.A02.A1Z(this.A01.A04);
        }
        this.A02.A1c(z, true);
    }
}
