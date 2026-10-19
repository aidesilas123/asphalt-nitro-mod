package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class DJ implements InterfaceC1448Wm {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;

    public DJ(long j, long j2, Bg bg) {
        this.A04 = j2;
        this.A01 = bg.A02;
        this.A00 = bg.A00;
        if (j == -1) {
            this.A02 = -1L;
            this.A03 = C.TIME_UNSET;
        } else {
            this.A02 = j - j2;
            this.A03 = A7z(j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        long j2 = this.A02;
        if (j2 == -1) {
            return new C0926Bi(new C0928Bk(0L, this.A04));
        }
        long j3 = (((long) this.A00) * j) / 8000000;
        int i = this.A01;
        long jA0E = C1078Hx.A0E((j3 / ((long) i)) * ((long) i), 0L, j2 - ((long) i));
        long j4 = this.A04 + jA0E;
        long jA7z = A7z(j4);
        C0928Bk c0928Bk = new C0928Bk(jA7z, j4);
        if (jA7z < j) {
            long j5 = this.A02;
            int i2 = this.A01;
            if (jA0E != j5 - ((long) i2)) {
                long j6 = ((long) i2) + j4;
                return new C0926Bi(c0928Bk, new C0928Bk(A7z(j6), j6));
            }
        }
        return new C0926Bi(c0928Bk);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1448Wm
    public final long A7z(long j) {
        return ((Math.max(0L, j - this.A04) * 1000000) * 8) / ((long) this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return this.A02 != -1;
    }
}
