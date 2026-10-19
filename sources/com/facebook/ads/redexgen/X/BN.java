package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class BN extends XD implements FW {
    public long A00;
    public FW A01;

    @Override // com.facebook.ads.redexgen.X.AbstractC0909Ap
    public final void A07() {
        super.A07();
        this.A01 = null;
    }

    public abstract void A08();

    public final void A09(long j, FW fw, long j2) {
        super.A01 = j;
        this.A01 = fw;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final List<FV> A6T(long j) {
        return this.A01.A6T(j - this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final long A6t(int i) {
        return this.A01.A6t(i) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A6u() {
        return this.A01.A6u();
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A7L(long j) {
        return this.A01.A7L(j - this.A00);
    }
}
