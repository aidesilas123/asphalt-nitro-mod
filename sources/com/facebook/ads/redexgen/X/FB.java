package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class FB extends AbstractC1551aD {
    public final /* synthetic */ int A00;
    public final /* synthetic */ FA A01;
    public final /* synthetic */ C1564aQ A02;
    public final /* synthetic */ C1003Ey A03;
    public final /* synthetic */ YA A04;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FB(FA fa, boolean z, YA ya, C1003Ey c1003Ey, C1564aQ c1564aQ, int i) {
        super(z);
        this.A01 = fa;
        this.A04 = ya;
        this.A03 = c1003Ey;
        this.A02 = c1564aQ;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1551aD
    public final void A00() {
        this.A01.A01.ACq(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1551aD
    public final void A01(boolean z) {
        FA.A0D = null;
        if (z) {
            this.A04.A00().AF6(this.A03.A11(), this.A02.A0u());
        }
        if (this.A00 == 0) {
            this.A01.A0C.set(true);
            this.A01.A01.ACn(this.A01);
        }
        this.A01.A0B(this.A04, this.A02, this.A00 + 1);
    }
}
