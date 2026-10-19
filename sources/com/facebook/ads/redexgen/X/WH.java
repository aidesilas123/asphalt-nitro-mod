package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WH implements InterfaceC0941Cg {
    public static byte[] A0E;
    public static String[] A0F = {"NvpEV7R7ZS5uNQ5TFb57EvhjwIZCTQku", "DdUDSiCrGQUoEviiVingxcQFfwNbDa", "hetlnsRY2wqGSQpiRITV", "h6jp2Z", "H3YUjFwBN5I", "HDGGogJPAHFPfOUxVzLcmHcfpTDLo", "fvYnB4Gz7ZvwaQ8Y4EtF6ZMgsdzNJKEV", "DcduA0DmY9P8nwkm6XpLf73k0ckt"};
    public long A00;
    public long A01;
    public InterfaceC0930Bm A02;
    public Cl A03;
    public String A04;
    public boolean A05;
    public final C0948Cp A0B;
    public final boolean[] A0D = new boolean[3];
    public final C0945Cm A0A = new C0945Cm(32, 128);
    public final C0945Cm A08 = new C0945Cm(33, 128);
    public final C0945Cm A06 = new C0945Cm(34, 128);
    public final C0945Cm A07 = new C0945Cm(39, 128);
    public final C0945Cm A09 = new C0945Cm(40, 128);
    public final C1062Hh A0C = new C1062Hh();

    static {
        A02();
    }

    public WH(C0948Cp c0948Cp) {
        this.A0B = c0948Cp;
    }

    public static Format A00(String str, C0945Cm c0945Cm, C0945Cm c0945Cm2, C0945Cm c0945Cm3) {
        byte[] bArr = new byte[c0945Cm.A00 + c0945Cm2.A00 + c0945Cm3.A00];
        System.arraycopy(c0945Cm.A01, 0, bArr, 0, c0945Cm.A00);
        System.arraycopy(c0945Cm2.A01, 0, bArr, c0945Cm.A00, c0945Cm2.A00);
        System.arraycopy(c0945Cm3.A01, 0, bArr, c0945Cm.A00 + c0945Cm2.A00, c0945Cm3.A00);
        C1063Hi c1063Hi = new C1063Hi(c0945Cm2.A01, 0, c0945Cm2.A00);
        c1063Hi.A07(44);
        int iA05 = c1063Hi.A05(3);
        c1063Hi.A06();
        c1063Hi.A07(88);
        c1063Hi.A07(8);
        int i = 0;
        for (int i2 = 0; i2 < iA05; i2++) {
            if (c1063Hi.A0A()) {
                i += 89;
            }
            if (c1063Hi.A0A()) {
                i += 8;
            }
        }
        c1063Hi.A07(i);
        if (iA05 > 0) {
            c1063Hi.A07((8 - iA05) * 2);
        }
        c1063Hi.A04();
        int iA04 = c1063Hi.A04();
        if (iA04 == 3) {
            c1063Hi.A06();
        }
        int iA042 = c1063Hi.A04();
        int iA043 = c1063Hi.A04();
        if (A0F[1].length() == 12) {
            throw new RuntimeException();
        }
        String[] strArr = A0F;
        strArr[4] = "a8PzOvYW3xW";
        strArr[2] = "i4yWj6LgSPQERWLdQfta";
        if (c1063Hi.A0A()) {
            int iA044 = c1063Hi.A04();
            int iA045 = c1063Hi.A04();
            int iA046 = c1063Hi.A04();
            int iA047 = c1063Hi.A04();
            iA042 -= (iA044 + iA045) * ((iA04 == 1 || iA04 == 2) ? 2 : 1);
            iA043 -= (iA046 + iA047) * (iA04 == 1 ? 2 : 1);
        }
        c1063Hi.A04();
        c1063Hi.A04();
        int iA048 = c1063Hi.A04();
        for (int i3 = c1063Hi.A0A() ? 0 : iA05; i3 <= iA05; i3++) {
            c1063Hi.A04();
            c1063Hi.A04();
            c1063Hi.A04();
        }
        c1063Hi.A04();
        c1063Hi.A04();
        c1063Hi.A04();
        c1063Hi.A04();
        c1063Hi.A04();
        c1063Hi.A04();
        if (c1063Hi.A0A() && c1063Hi.A0A()) {
            A05(c1063Hi);
        }
        c1063Hi.A07(2);
        if (c1063Hi.A0A()) {
            c1063Hi.A07(8);
            c1063Hi.A04();
            c1063Hi.A04();
            c1063Hi.A06();
        }
        A06(c1063Hi);
        if (c1063Hi.A0A()) {
            for (int i4 = 0; i4 < c1063Hi.A04(); i4++) {
                c1063Hi.A07(iA048 + 4 + 1);
            }
        }
        c1063Hi.A07(2);
        float f2 = 1.0f;
        if (c1063Hi.A0A() && c1063Hi.A0A()) {
            int iA052 = c1063Hi.A05(8);
            if (iA052 == 255) {
                int iA053 = c1063Hi.A05(16);
                int iA054 = c1063Hi.A05(16);
                if (iA053 != 0 && iA054 != 0) {
                    f2 = iA053 / iA054;
                }
            } else {
                float[] fArr = C1058Hd.A04;
                String[] strArr2 = A0F;
                if (strArr2[4].length() == strArr2[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A0F;
                strArr3[4] = "Mq8kmMTSiz0";
                strArr3[2] = "TBAE07oWZ5Khy7farxDr";
                if (iA052 < fArr.length) {
                    f2 = C1058Hd.A04[iA052];
                } else {
                    Log.w(A01(0, 10, 24), A01(10, 35, 2) + iA052);
                }
            }
        }
        String strA01 = A01(45, 10, 17);
        List listSingletonList = Collections.singletonList(bArr);
        if (A0F[3].length() != 6) {
            String[] strArr4 = A0F;
            strArr4[7] = "REKIidOCsv4ptzsgivtfnGOww6JG";
            strArr4[5] = "T94vPaWVm7jdMSWQElc8luWGTOlSo";
            return Format.A03(str, strA01, null, -1, -1, iA042, iA043, -1.0f, listSingletonList, -1, f2, null);
        }
        String[] strArr5 = A0F;
        strArr5[7] = "W2GdBlThEFkhmpYhDIzNH9YY1BaI";
        strArr5[5] = "0yDCfDeoWht2juYgXJKTHBbNY9ana";
        return Format.A03(str, strA01, null, -1, -1, iA042, iA043, -1.0f, listSingletonList, -1, f2, null);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A0F[3] = "YNSDJ1";
        A0E = new byte[]{121, 3, 7, 4, 99, 84, 80, 85, 84, 67, 126, 69, 78, 83, 91, 78, 72, 95, 78, 79, Ascii.VT, 74, 88, 91, 78, 72, 95, 116, 89, 74, 95, 66, 68, 116, 66, 79, 72, Ascii.VT, 93, 74, 71, 94, 78, 17, Ascii.VT, 78, 81, 92, 93, 87, Ascii.ETB, 80, 93, 78, 91};
    }

    private void A03(long j, int i, int i2, long j2) {
        if (this.A05) {
            this.A03.A02(j, i);
        } else {
            this.A0A.A04(i2);
            this.A08.A04(i2);
            this.A06.A04(i2);
            if (this.A0A.A03() && this.A08.A03() && this.A06.A03()) {
                this.A02.A5j(A00(this.A04, this.A0A, this.A08, this.A06));
                this.A05 = true;
            }
        }
        if (this.A07.A04(i2)) {
            C0945Cm c0945Cm = this.A07;
            if (A0F[1].length() == 12) {
                throw new RuntimeException();
            }
            A0F[3] = "Yba7mj";
            this.A0C.A0b(this.A07.A01, C1058Hd.A02(c0945Cm.A01, this.A07.A00));
            this.A0C.A0Z(5);
            this.A0B.A02(j2, this.A0C);
        }
        if (this.A09.A04(i2)) {
            this.A0C.A0b(this.A09.A01, C1058Hd.A02(this.A09.A01, this.A09.A00));
            this.A0C.A0Z(5);
            this.A0B.A02(j2, this.A0C);
        }
    }

    private void A04(long j, int i, int i2, long j2) {
        if (this.A05) {
            this.A03.A03(j, i, i2, j2);
        } else {
            this.A0A.A01(i2);
            this.A08.A01(i2);
            this.A06.A01(i2);
        }
        this.A07.A01(i2);
        this.A09.A01(i2);
    }

    public static void A05(C1063Hi c1063Hi) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (c1063Hi.A0A()) {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        c1063Hi.A03();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        c1063Hi.A03();
                    }
                } else {
                    c1063Hi.A04();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    public static void A06(C1063Hi c1063Hi) {
        int iA04 = c1063Hi.A04();
        boolean zA0A = false;
        int i = 0;
        for (int i2 = 0; i2 < iA04; i2++) {
            if (i2 != 0) {
                zA0A = c1063Hi.A0A();
            }
            if (zA0A) {
                c1063Hi.A06();
                c1063Hi.A04();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (c1063Hi.A0A()) {
                        c1063Hi.A06();
                    }
                }
            } else {
                int iA042 = c1063Hi.A04();
                int iA043 = c1063Hi.A04();
                i = iA042 + iA043;
                for (int i4 = 0; i4 < iA042; i4++) {
                    c1063Hi.A04();
                    c1063Hi.A06();
                }
                for (int i5 = 0; i5 < iA043; i5++) {
                    c1063Hi.A04();
                    c1063Hi.A06();
                }
            }
        }
    }

    private void A07(byte[] bArr, int i, int i2) {
        if (this.A05) {
            this.A03.A04(bArr, i, i2);
        } else {
            this.A0A.A02(bArr, i, i2);
            this.A08.A02(bArr, i, i2);
            this.A06.A02(bArr, i, i2);
        }
        this.A07.A02(bArr, i, i2);
        this.A09.A02(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        while (true) {
            int iA04 = c1062Hh.A04();
            if (A0F[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[0] = "AvzYB124iDQiX3hdxqfkLksaQ25q0Ga1";
            strArr[6] = "Nv2bR4D3VQ28suo5ivBlL2099SuCEJEb";
            if (iA04 <= 0) {
                return;
            }
            int iA06 = c1062Hh.A06();
            int iA07 = c1062Hh.A07();
            byte[] bArr = c1062Hh.A00;
            this.A01 += (long) c1062Hh.A04();
            this.A02.AEr(c1062Hh, c1062Hh.A04());
            while (iA06 < iA07) {
                int iA042 = C1058Hd.A04(bArr, iA06, iA07, this.A0D);
                if (iA042 == iA07) {
                    A07(bArr, iA06, iA07);
                    return;
                }
                int iA00 = C1058Hd.A00(bArr, iA042);
                int i = iA042 - iA06;
                if (i > 0) {
                    A07(bArr, iA06, iA042);
                }
                int i2 = iA07 - iA042;
                long j = this.A01 - ((long) i2);
                A03(j, i2, i < 0 ? -i : 0, this.A00);
                A04(j, i2, iA00, this.A00);
                iA06 = iA042 + 3;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A04 = c0952Cu.A04();
        InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 2);
        this.A02 = interfaceC0930BmAFx;
        this.A03 = new Cl(interfaceC0930BmAFx);
        this.A0B.A03(interfaceC0922Bc, c0952Cu);
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
        this.A0A.A00();
        this.A08.A00();
        this.A06.A00();
        this.A07.A00();
        this.A09.A00();
        this.A03.A01();
        this.A01 = 0L;
    }
}
