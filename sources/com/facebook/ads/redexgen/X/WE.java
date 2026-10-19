package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WE implements InterfaceC0941Cg {
    public static String[] A0C = {"M8nxhoQeDkjHEk3tjnypaUsJeky9pUPe", "22wDV1USJ2tZABUEWkFG7fElxPqoDepQ", "WSXmuBny7XXEQ4s813c9BSbsqOjqSskJ", "KVrLQEQFGtTXAXMopyF5dj", "jUO9kFQXOuNF5MkzWpfFf35Wzr3tp3jj", "UgJN", "fATsZHYNQKGGAXuN", "X77CUtb4yEwh8nH4MH"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public InterfaceC0930Bm A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public final Bg A09;
    public final C1062Hh A0A;
    public final String A0B;

    public WE() {
        this(null);
    }

    public WE(String str) {
        this.A02 = 0;
        C1062Hh c1062Hh = new C1062Hh(4);
        this.A0A = c1062Hh;
        c1062Hh.A00[0] = -1;
        this.A09 = new Bg();
        this.A0B = str;
    }

    private void A00(C1062Hh c1062Hh) {
        byte[] bArr = c1062Hh.A00;
        int iA07 = c1062Hh.A07();
        for (int iA06 = c1062Hh.A06(); iA06 < iA07; iA06++) {
            boolean z = (bArr[iA06] & 255) == 255;
            boolean z2 = this.A08 && (bArr[iA06] & 224) == 224;
            this.A08 = z;
            if (z2) {
                c1062Hh.A0Y(iA06 + 1);
                this.A08 = false;
                this.A0A.A00[1] = bArr[iA06];
                this.A00 = 2;
                this.A02 = 1;
                return;
            }
        }
        c1062Hh.A0Y(iA07);
    }

    private void A01(C1062Hh c1062Hh) {
        int iMin = Math.min(c1062Hh.A04(), this.A01 - this.A00);
        this.A05.AEr(c1062Hh, iMin);
        int i = this.A00 + iMin;
        this.A00 = i;
        int i2 = this.A01;
        if (i < i2) {
            return;
        }
        InterfaceC0930Bm interfaceC0930Bm = this.A05;
        if (A0C[2].charAt(7) == 'H') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "Ix3a1KSHqy7cK1t6WtGmlZzK6PY1tVDv";
        strArr[1] = "TW6fubs4zpuEa3cAWqrpZRXJHWdUZhrV";
        interfaceC0930Bm.AEs(this.A04, 1, i2, 0, null);
        this.A04 += this.A03;
        this.A00 = 0;
        this.A02 = 0;
    }

    private void A02(C1062Hh c1062Hh) {
        int iMin = Math.min(c1062Hh.A04(), 4 - this.A00);
        c1062Hh.A0c(this.A0A.A00, this.A00, iMin);
        int i = this.A00 + iMin;
        this.A00 = i;
        if (i < 4) {
            return;
        }
        this.A0A.A0Y(0);
        if (!Bg.A04(this.A0A.A08(), this.A09)) {
            this.A00 = 0;
            this.A02 = 1;
            return;
        }
        this.A01 = this.A09.A02;
        if (!this.A07) {
            this.A03 = (((long) this.A09.A04) * 1000000) / ((long) this.A09.A03);
            this.A05.A5j(Format.A07(this.A06, this.A09.A06, null, -1, 4096, this.A09.A01, this.A09.A03, null, null, 0, this.A0B));
            this.A07 = true;
        }
        this.A0A.A0Y(0);
        this.A05.AEr(this.A0A, 4);
        this.A02 = 2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        while (c1062Hh.A04() > 0) {
            switch (this.A02) {
                case 0:
                    A00(c1062Hh);
                    break;
                case 1:
                    A02(c1062Hh);
                    break;
                case 2:
                    A01(c1062Hh);
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A06 = c0952Cu.A04();
        this.A05 = interfaceC0922Bc.AFx(c0952Cu.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        this.A04 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
    }
}
