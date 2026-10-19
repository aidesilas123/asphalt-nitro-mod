package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WQ implements InterfaceC0941Cg {
    public static String[] A0C = {"jvuSXyRxFwWN5M53JxqXTqjBlHPmO5yS", "Nx6fwt5mIYqSRgPxQoB61NXpIqViXreb", "NbRu72XFqCPxMxVeHFzrnyrjREaihhdr", "Z3KBXmMomO9rJfjLZz1JQz2Kw0Fx28Ab", "zLbRIBf4nYWkQfyOEtwQDAQMGMEl8", "zvpubyWaUoinARhzufpjCqD1DbWF7ekR", "kxIGpaDKqbCPDUN5La7nQCmFVSx", "CqFgkkKKOYx1Bj1EdbgCjsaN4ksOOdQn"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public Format A05;
    public InterfaceC0930Bm A06;
    public String A07;
    public boolean A08;
    public final C1061Hg A09;
    public final C1062Hh A0A;
    public final String A0B;

    public WQ() {
        this(null);
    }

    public WQ(String str) {
        C1061Hg c1061Hg = new C1061Hg(new byte[128]);
        this.A09 = c1061Hg;
        this.A0A = new C1062Hh(c1061Hg.A00);
        this.A02 = 0;
        this.A0B = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A00() {
        /*
            r14 = this;
            com.facebook.ads.redexgen.X.Hg r1 = r14.A09
            r0 = 0
            r1.A07(r0)
            com.facebook.ads.redexgen.X.Hg r0 = r14.A09
            com.facebook.ads.redexgen.X.A7 r2 = com.facebook.ads.redexgen.X.A8.A09(r0)
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r0 = r14.A05
            if (r0 == 0) goto L47
            int r1 = r2.A00
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r0 = r14.A05
            int r0 = r0.A05
            if (r1 != r0) goto L47
            int r5 = r2.A03
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r0 = r14.A05
            int r4 = r0.A0C
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.WQ.A0C
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 27
            if (r1 == r0) goto L31
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L31:
            java.lang.String[] r3 = com.facebook.ads.redexgen.X.WQ.A0C
            java.lang.String r1 = "rmTuGOWOeoxLIH1QLptnusvxizN1V0jV"
            r0 = 2
            r3[r0] = r1
            java.lang.String r1 = "2RMufqWRuZFq3WutxyrHt00cbPeHqbYj"
            r0 = 5
            r3[r0] = r1
            if (r5 != r4) goto L47
            java.lang.String r1 = r2.A05
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r0 = r14.A05
            java.lang.String r0 = r0.A0O
            if (r1 == r0) goto L62
        L47:
            java.lang.String r3 = r14.A07
            java.lang.String r4 = r2.A05
            r5 = 0
            r6 = -1
            r7 = -1
            int r8 = r2.A00
            int r9 = r2.A03
            r10 = 0
            r11 = 0
            r12 = 0
            java.lang.String r13 = r14.A0B
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r1 = com.facebook.ads.internal.exoplayer2.thirdparty.Format.A07(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            r14.A05 = r1
            com.facebook.ads.redexgen.X.Bm r0 = r14.A06
            r0.A5j(r1)
        L62:
            int r0 = r2.A01
            r14.A01 = r0
            int r0 = r2.A02
            long r2 = (long) r0
            r0 = 1000000(0xf4240, double:4.940656E-318)
            long r2 = r2 * r0
            com.facebook.ads.internal.exoplayer2.thirdparty.Format r0 = r14.A05
            int r0 = r0.A0C
            long r0 = (long) r0
            long r2 = r2 / r0
            r14.A03 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.WQ.A00():void");
    }

    private boolean A01(C1062Hh c1062Hh) {
        while (true) {
            if (c1062Hh.A04() <= 0) {
                return false;
            }
            if (this.A08) {
                int iA0E = c1062Hh.A0E();
                if (iA0E == 119) {
                    this.A08 = false;
                    return true;
                }
                this.A08 = iA0E == 11;
            } else {
                this.A08 = c1062Hh.A0E() == 11;
            }
        }
    }

    private boolean A02(C1062Hh c1062Hh, byte[] bArr, int i) {
        int iMin = Math.min(c1062Hh.A04(), i - this.A00);
        c1062Hh.A0c(bArr, this.A00, iMin);
        int i2 = this.A00 + iMin;
        this.A00 = i2;
        return i2 == i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        while (true) {
            int iA04 = c1062Hh.A04();
            if (A0C[3].charAt(28) != '2') {
                throw new RuntimeException();
            }
            A0C[6] = "j4ZJ9Sb1FxDogpbJuhr4W7MrwTg";
            if (iA04 > 0) {
                switch (this.A02) {
                    case 0:
                        if (A01(c1062Hh)) {
                            this.A02 = 1;
                            this.A0A.A00[0] = Ascii.VT;
                            this.A0A.A00[1] = 119;
                            this.A00 = 2;
                        }
                        break;
                    case 1:
                        if (A02(c1062Hh, this.A0A.A00, 128)) {
                            A00();
                            this.A0A.A0Y(0);
                            this.A06.AEr(this.A0A, 128);
                            this.A02 = 2;
                        }
                        break;
                    case 2:
                        int iMin = Math.min(c1062Hh.A04(), this.A01 - this.A00);
                        this.A06.AEr(c1062Hh, iMin);
                        int i = this.A00 + iMin;
                        this.A00 = i;
                        int i2 = this.A01;
                        if (i == i2) {
                            this.A06.AEs(this.A04, 1, i2, 0, null);
                            long j = this.A04;
                            long j2 = this.A03;
                            String[] strArr = A0C;
                            if (strArr[0].charAt(28) == strArr[7].charAt(28)) {
                                A0C[4] = "thGmrgzi8Rkjtt3yqKW2WPJBde0Fj";
                                this.A04 = j + j2;
                                this.A02 = 0;
                            } else {
                                this.A04 = j + j2;
                                this.A02 = 0;
                            }
                        }
                        break;
                }
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A07 = c0952Cu.A04();
        this.A06 = interfaceC0922Bc.AFx(c0952Cu.A03(), 1);
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
