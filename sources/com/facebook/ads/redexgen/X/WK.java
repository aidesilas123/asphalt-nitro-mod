package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WK implements InterfaceC0941Cg {
    public static byte[] A06;
    public static String[] A07 = {"c0KpkRjZorNQD76", "v", "0d4inMg3wDkuo1aYYl0ssqqGC", "DDXERfdvXnPt4luj6e7N9DVUtx6ZaQcR", "MB0SdpAzdDPGS5LRihVQgeZ9YJgSZ4OW", "1ftUnjVA0zWQWzcI2VyXZGsvfHTse3XE", "DWX3euW52jSmR8J8g1ui9PfHl", "CNcDYli8yhj93EfpNTcuq0KbKbZRyRug"};
    public int A00;
    public int A01;
    public long A02;
    public boolean A03;
    public final List<C0949Cr> A04;
    public final InterfaceC0930Bm[] A05;

    static {
        A01();
    }

    public WK(List<C0949Cr> list) {
        this.A04 = list;
        this.A05 = new InterfaceC0930Bm[list.size()];
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{52, 67, 67, 63, 60, 54, 52, 71, 60, 66, 65, 2, 55, 73, 53, 70, 72, 53, 70};
    }

    private boolean A02(C1062Hh c1062Hh, int i) {
        if (c1062Hh.A04() == 0) {
            return false;
        }
        if (c1062Hh.A0E() != i) {
            this.A03 = false;
        }
        this.A00--;
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        if (this.A03) {
            if (this.A00 != 2 || A02(c1062Hh, 32)) {
                if (this.A00 != 1 || A02(c1062Hh, 0)) {
                    int iA06 = c1062Hh.A06();
                    if (A07[5].charAt(6) != 'V') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A07;
                    strArr[2] = "JHIe8W9CfwFDjJjaFpf1hCiFr";
                    strArr[6] = "vBjglJY7hKXluELD1o7ad0wQv";
                    int iA04 = c1062Hh.A04();
                    for (InterfaceC0930Bm interfaceC0930Bm : this.A05) {
                        c1062Hh.A0Y(iA06);
                        interfaceC0930Bm.AEr(c1062Hh, iA04);
                    }
                    this.A01 += iA04;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        for (int i = 0; i < this.A05.length; i++) {
            C0949Cr c0949Cr = this.A04.get(i);
            c0952Cu.A05();
            InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 3);
            interfaceC0930BmAFx.A5j(Format.A0A(c0952Cu.A04(), A00(0, 19, 126), null, -1, 0, Collections.singletonList(c0949Cr.A02), c0949Cr.A01, null));
            this.A05[i] = interfaceC0930BmAFx;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
        if (this.A03) {
            for (InterfaceC0930Bm interfaceC0930Bm : this.A05) {
                interfaceC0930Bm.AEs(this.A02, 1, this.A01, 0, null);
            }
            this.A03 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        if (z) {
            this.A03 = true;
            this.A02 = j;
            this.A01 = 0;
            this.A00 = 2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        this.A03 = false;
    }
}
