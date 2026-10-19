package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Er, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0996Er {
    public C0996Er A00;
    public GT A01;
    public boolean A02;
    public final long A03;
    public final long A04;

    public C0996Er(long j, int i) {
        this.A04 = j;
        this.A03 = ((long) i) + j;
    }

    public final int A00(long j) {
        return ((int) (j - this.A04)) + this.A01.A00;
    }

    public final C0996Er A01() {
        this.A01 = null;
        C0996Er c0996Er = this.A00;
        this.A00 = null;
        return c0996Er;
    }

    public final void A02(GT gt, C0996Er c0996Er) {
        this.A01 = gt;
        this.A00 = c0996Er;
        this.A02 = true;
    }
}
