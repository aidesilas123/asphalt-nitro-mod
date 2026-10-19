package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WI implements InterfaceC0941Cg {
    public static byte[] A0E;
    public static String[] A0F = {"FmtBUqGmzQvxm47AtoGl5GE", "5iXLyJPyDLcaPMUjk1v5bxBpoPhfo", "hif1Xiw3z0OLVixA8K1yUZiszA96", "VzETX2BwbL5Y", "rXQDE7FzOjIY2cTlxG1EbFIaNFkq3NBz", "hyxBaGmEw9nsGl9VO3HFyZpkQthqrgGl", "hfnp76HvDzKR", "cXQxcUyRSwddwq1B1B5vUbLw26Cn"};
    public long A00;
    public long A01;
    public InterfaceC0930Bm A02;
    public C0944Ck A03;
    public String A04;
    public boolean A05;
    public final C0948Cp A09;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean[] A0D = new boolean[3];
    public final C0945Cm A08 = new C0945Cm(7, 128);
    public final C0945Cm A06 = new C0945Cm(8, 128);
    public final C0945Cm A07 = new C0945Cm(6, 128);
    public final C1062Hh A0A = new C1062Hh();

    static {
        A01();
    }

    public WI(C0948Cp c0948Cp, boolean z, boolean z2) {
        this.A09 = c0948Cp;
        this.A0B = z;
        this.A0C = z2;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 73);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0E = new byte[]{-47, -60, -65, -64, -54, -118, -68, -47, -66};
    }

    private void A02(long j, int i, int i2, long j2) {
        if (!this.A05 || this.A03.A07()) {
            this.A08.A04(i2);
            this.A06.A04(i2);
            if (this.A05) {
                if (this.A08.A03()) {
                    this.A03.A05(C1058Hd.A06(this.A08.A01, 3, this.A08.A00));
                    this.A08.A00();
                } else if (this.A06.A03()) {
                    this.A03.A04(C1058Hd.A05(this.A06.A01, 3, this.A06.A00));
                    this.A06.A00();
                }
            } else if (this.A08.A03() && this.A06.A03()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(this.A08.A01, this.A08.A00));
                arrayList.add(Arrays.copyOf(this.A06.A01, this.A06.A00));
                C1057Hc c1057HcA06 = C1058Hd.A06(this.A08.A01, 3, this.A08.A00);
                C1056Hb c1056HbA05 = C1058Hd.A05(this.A06.A01, 3, this.A06.A00);
                this.A02.A5j(Format.A03(this.A04, A00(0, 9, 18), null, -1, -1, c1057HcA06.A06, c1057HcA06.A02, -1.0f, arrayList, -1, c1057HcA06.A00, null));
                this.A05 = true;
                this.A03.A05(c1057HcA06);
                this.A03.A04(c1056HbA05);
                this.A08.A00();
                this.A06.A00();
            }
        }
        if (this.A07.A04(i2)) {
            C0945Cm c0945Cm = this.A07;
            String[] strArr = A0F;
            if (strArr[4].charAt(26) == strArr[5].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[4] = "MYiVFEqyRoVR8PpaQvBVtWO0d80axIUe";
            strArr2[5] = "WESehlM6UD3i8IXgr5ZdByrcv93bSxFf";
            this.A0A.A0b(this.A07.A01, C1058Hd.A02(c0945Cm.A01, this.A07.A00));
            this.A0A.A0Y(4);
            this.A09.A02(j2, this.A0A);
        }
        this.A03.A02(j, i);
    }

    private void A03(long j, int i, long j2) {
        if (!this.A05 || this.A03.A07()) {
            this.A08.A01(i);
            this.A06.A01(i);
        }
        this.A07.A01(i);
        this.A03.A03(j, i, j2);
    }

    private void A04(byte[] bArr, int i, int i2) {
        if (!this.A05 || this.A03.A07()) {
            this.A08.A02(bArr, i, i2);
            this.A06.A02(bArr, i, i2);
        }
        this.A07.A02(bArr, i, i2);
        this.A03.A06(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        int i;
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        byte[] bArr = c1062Hh.A00;
        this.A01 += (long) c1062Hh.A04();
        this.A02.AEr(c1062Hh, c1062Hh.A04());
        while (true) {
            int iA04 = C1058Hd.A04(bArr, iA06, iA07, this.A0D);
            if (iA04 == iA07) {
                A04(bArr, iA06, iA07);
                return;
            }
            int iA01 = C1058Hd.A01(bArr, iA04);
            int i2 = iA04 - iA06;
            String[] strArr = A0F;
            if (strArr[3].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[3] = "lQl99M6qnQlq";
            strArr2[6] = "jJKIbaSVKHql";
            if (i2 > 0) {
                A04(bArr, iA06, iA04);
            }
            int i3 = iA07 - iA04;
            long j = this.A01 - ((long) i3);
            if (i2 < 0) {
                i = -i2;
                String[] strArr3 = A0F;
                if (strArr3[7].length() != strArr3[2].length()) {
                    String[] strArr4 = A0F;
                    strArr4[7] = "CFaupTF247UissJwn80OFqAOj9Vx";
                    strArr4[2] = "5OzpI30ijAeJlsq8Y1OyIdlDADpj";
                } else {
                    String[] strArr5 = A0F;
                    strArr5[1] = "eqTKDwhJaRXE4qM7uaf5ert1lQX8N";
                    strArr5[0] = "XXULpdZ36j09HmRAAM7fCX7";
                }
            } else {
                i = 0;
            }
            A02(j, i3, i, this.A00);
            A03(j, iA01, this.A00);
            iA06 = iA04 + 3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A04 = c0952Cu.A04();
        InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 2);
        this.A02 = interfaceC0930BmAFx;
        this.A03 = new C0944Ck(interfaceC0930BmAFx, this.A0B, this.A0C);
        this.A09.A03(interfaceC0922Bc, c0952Cu);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        C1058Hd.A0B(this.A0D);
        this.A08.A00();
        this.A06.A00();
        this.A07.A00();
        this.A03.A01();
        this.A01 = 0L;
    }
}
