package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HU {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;

    public HU(byte[] bArr, int i) {
        C1061Hg c1061Hg = new C1061Hg(bArr);
        c1061Hg.A07(i * 8);
        this.A04 = c1061Hg.A04(16);
        this.A02 = c1061Hg.A04(16);
        this.A05 = c1061Hg.A04(24);
        this.A03 = c1061Hg.A04(24);
        this.A06 = c1061Hg.A04(20);
        this.A01 = c1061Hg.A04(3) + 1;
        this.A00 = c1061Hg.A04(5) + 1;
        this.A07 = ((((long) c1061Hg.A04(4)) & 15) << 32) | (((long) c1061Hg.A04(32)) & 4294967295L);
    }

    public final int A00() {
        return this.A00 * this.A06;
    }

    public final long A01() {
        return (this.A07 * 1000000) / ((long) this.A06);
    }
}
