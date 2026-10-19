package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9b, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08709b {
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final EW A04;
    public final boolean A05;
    public final boolean A06;

    public C08709b(EW ew, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.A04 = ew;
        this.A03 = j;
        this.A02 = j2;
        this.A00 = j3;
        this.A01 = j4;
        this.A06 = z;
        this.A05 = z2;
    }

    public final C08709b A00(int i) {
        return new C08709b(this.A04.A00(i), this.A03, this.A02, this.A00, this.A01, this.A06, this.A05);
    }

    public final C08709b A01(long j) {
        return new C08709b(this.A04, j, this.A02, this.A00, this.A01, this.A06, this.A05);
    }
}
