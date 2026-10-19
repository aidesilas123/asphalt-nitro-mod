package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class X0 implements InterfaceC0927Bj {
    public final long A00;
    public final C0926Bi A01;

    public X0(long j) {
        this(j, 0L);
    }

    public X0(long j, long j2) {
        this.A00 = j;
        this.A01 = new C0926Bi(j2 == 0 ? C0928Bk.A03 : new C0928Bk(0L, j2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return false;
    }
}
