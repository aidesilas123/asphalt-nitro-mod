package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WF implements InterfaceC0941Cg {
    public static byte[] A0K;
    public static String[] A0L = {"UXkay4rUGskktYzxNvudWKkCsEVxw", "TbZCK2AobFbud3dzlhL4ME6xz6dWV35u", "g54hQOaX", "Hzwenjp7P2fY81mJ8QBm2GDgQOuz90wV", "pL9ldBQtoqrc20elRWolxWe4zjdgoW6T", "TPLjBFOallz6251M1W6TB1HqEI4wd", "DLwQdeQQFfiBx7iMVYuUh1sumwfdr4oM", "y7d3scFL40rvPqI5TaUsSswOsLgzDZPi"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;
    public long A0A;
    public long A0B;
    public Format A0C;
    public InterfaceC0930Bm A0D;
    public String A0E;
    public boolean A0F;
    public boolean A0G;
    public final C1061Hg A0H;
    public final C1062Hh A0I;
    public final String A0J;

    static {
        A04();
    }

    public WF(String str) {
        this.A0J = str;
        C1062Hh c1062Hh = new C1062Hh(1024);
        this.A0I = c1062Hh;
        this.A0H = new C1061Hg(c1062Hh.A00);
    }

    private int A00(C1061Hg c1061Hg) throws C08729d {
        int iA01 = c1061Hg.A01();
        Pair<Integer, Integer> pairA02 = HM.A02(c1061Hg, true);
        this.A05 = ((Integer) pairA02.first).intValue();
        this.A02 = ((Integer) pairA02.second).intValue();
        return iA01 - c1061Hg.A01();
    }

    private int A01(C1061Hg c1061Hg) throws C08729d {
        int iA04;
        int i = 0;
        if (this.A03 != 0) {
            throw new C08729d();
        }
        do {
            iA04 = c1061Hg.A04(8);
            i += iA04;
        } while (iA04 == 255);
        return i;
    }

    public static long A02(C1061Hg c1061Hg) {
        return c1061Hg.A04((c1061Hg.A04(2) + 1) * 8);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0L[1].charAt(8) != 'b') {
                throw new RuntimeException();
            }
            String[] strArr = A0L;
            strArr[6] = "y88DdvbFX6MPRa9z5ZeTPeJlbkGd2RA6";
            strArr[4] = "7eDKdIkFThzm8wa04NY5bFVXWVarNGHW";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
            i4++;
        }
    }

    public static void A04() {
        A0K = new byte[]{57, 45, 60, 49, 55, 119, 53, 40, 108, 57, 117, 52, 57, 44, 53};
    }

    private void A05(int i) {
        this.A0I.A0W(i);
        this.A0H.A0B(this.A0I.A00);
    }

    private void A06(C1061Hg c1061Hg) throws C08729d {
        if (!c1061Hg.A0F()) {
            this.A0G = true;
            A08(c1061Hg);
        } else if (!this.A0G) {
            return;
        }
        int i = this.A00;
        if (A0L[2].length() != 8) {
            throw new RuntimeException();
        }
        A0L[1] = "yEjpzXBGbjL6zW81s4nwg5Kx41FgkglX";
        if (i != 0) {
            throw new C08729d();
        }
        if (this.A04 != 0) {
            throw new C08729d();
        }
        A09(c1061Hg, A01(c1061Hg));
        if (this.A0F) {
            c1061Hg.A08((int) this.A09);
        }
    }

    private void A07(C1061Hg c1061Hg) {
        int iA04 = c1061Hg.A04(3);
        this.A03 = iA04;
        switch (iA04) {
            case 0:
                c1061Hg.A08(8);
                break;
            case 1:
                c1061Hg.A08(9);
                break;
            case 3:
            case 4:
            case 5:
                c1061Hg.A08(6);
                break;
            case 6:
            case 7:
                c1061Hg.A08(1);
                break;
        }
    }

    private void A08(C1061Hg c1061Hg) throws C08729d {
        boolean zA0F;
        int iA04 = c1061Hg.A04(1);
        int iA042 = iA04 == 1 ? c1061Hg.A04(1) : 0;
        this.A00 = iA042;
        if (iA042 != 0) {
            throw new C08729d();
        }
        if (iA04 == 1) {
            A02(c1061Hg);
        }
        if (!c1061Hg.A0F()) {
            throw new C08729d();
        }
        this.A04 = c1061Hg.A04(6);
        int iA043 = c1061Hg.A04(4);
        int iA044 = c1061Hg.A04(3);
        if (iA043 != 0 || iA044 != 0) {
            throw new C08729d();
        }
        if (iA04 == 0) {
            int iA03 = c1061Hg.A03();
            int iA00 = A00(c1061Hg);
            c1061Hg.A07(iA03);
            byte[] bArr = new byte[(iA00 + 7) / 8];
            c1061Hg.A0D(bArr, 0, iA00);
            Format formatA07 = Format.A07(this.A0E, A03(0, 15, 40), null, -1, -1, this.A02, this.A05, Collections.singletonList(bArr), null, 0, this.A0J);
            if (!formatA07.equals(this.A0C)) {
                this.A0C = formatA07;
                this.A0A = 1024000000 / ((long) formatA07.A0C);
                this.A0D.A5j(formatA07);
            }
        } else {
            c1061Hg.A08(((int) A02(c1061Hg)) - A00(c1061Hg));
        }
        A07(c1061Hg);
        boolean zA0F2 = c1061Hg.A0F();
        this.A0F = zA0F2;
        this.A09 = 0L;
        if (zA0F2) {
            if (iA04 == 1) {
                this.A09 = A02(c1061Hg);
            } else {
                do {
                    zA0F = c1061Hg.A0F();
                    this.A09 = (this.A09 << 8) + ((long) c1061Hg.A04(8));
                } while (zA0F);
            }
        }
        if (c1061Hg.A0F()) {
            c1061Hg.A08(8);
        }
    }

    private void A09(C1061Hg c1061Hg, int i) {
        int iA03 = c1061Hg.A03();
        if ((iA03 & 7) == 0) {
            this.A0I.A0Y(iA03 >> 3);
        } else {
            c1061Hg.A0D(this.A0I.A00, 0, i * 8);
            C1062Hh c1062Hh = this.A0I;
            String[] strArr = A0L;
            if (strArr[6].charAt(4) != strArr[4].charAt(4)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0L;
            strArr2[6] = "hISKdmFcBvkt3UkKbTRUxOfzbLN5RWYH";
            strArr2[4] = "PVNedBTwWz01jOulB5OdqyWGI6cUIeHW";
            c1062Hh.A0Y(0);
        }
        this.A0D.AEr(this.A0I, i);
        this.A0D.AEs(this.A0B, 1, i, 0, null);
        this.A0B += this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) throws C08729d {
        while (true) {
            int iA04 = c1062Hh.A04();
            if (A0L[1].charAt(8) != 'b') {
                throw new RuntimeException();
            }
            String[] strArr = A0L;
            strArr[3] = "OUH24t4ef0Bd1TNZZrzghovIx2sIzWi9";
            strArr[7] = "WHKixNlsxExZUks5bFrxsUMqOnC83dmQ";
            if (iA04 > 0) {
                switch (this.A08) {
                    case 0:
                        int iA0E = c1062Hh.A0E();
                        if (A0L[2].length() == 8) {
                            A0L[2] = "lkshyeX1";
                            if (iA0E == 86) {
                                this.A08 = 1;
                            }
                        } else {
                            A0L[2] = "GS3bIWmA";
                            if (iA0E == 86) {
                                this.A08 = 1;
                            }
                        }
                        break;
                    case 1:
                        int iA0E2 = c1062Hh.A0E();
                        if ((iA0E2 & 224) == 224) {
                            this.A07 = iA0E2;
                            if (A0L[2].length() != 8) {
                                throw new RuntimeException();
                            }
                            A0L[2] = "GLemk9OP";
                            this.A08 = 2;
                        } else if (iA0E2 != 86) {
                            this.A08 = 0;
                        }
                        break;
                    case 2:
                        int iA0E3 = ((this.A07 & (-225)) << 8) | c1062Hh.A0E();
                        this.A06 = iA0E3;
                        if (iA0E3 > this.A0I.A00.length) {
                            A05(this.A06);
                        }
                        this.A01 = 0;
                        this.A08 = 3;
                        break;
                    case 3:
                        int iMin = Math.min(c1062Hh.A04(), this.A06 - this.A01);
                        c1062Hh.A0c(this.A0H.A00, this.A01, iMin);
                        int i = this.A01 + iMin;
                        this.A01 = i;
                        if (i == this.A06) {
                            this.A0H.A07(0);
                            A06(this.A0H);
                            this.A08 = 0;
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
        this.A0D = interfaceC0922Bc.AFx(c0952Cu.A03(), 1);
        this.A0E = c0952Cu.A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        this.A0B = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        this.A08 = 0;
        this.A0G = false;
    }
}
