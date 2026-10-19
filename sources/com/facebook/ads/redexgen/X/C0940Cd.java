package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0940Cd {
    public static byte[] A00;
    public static String[] A01 = {"7VlHbmI4sHauhoCWaFlUZM9mZRV70mzp", "LqGkn09UNvdqUAgssIpSCyoRJ1iI6QKK", "ZmFU8Mfu7g0bs6JKYNiQ5l9NQyV6", "IM1BduvbFOrOx4pkelis2wS2axXVXfJJ", "7P5Q", "68Q2Pgf", "FTYWHoYlDOl1N68V4e618z2hAoSaWMYg", "QxGNaBvq4MkZwy6AnQRq9NbnhINTK41p"};

    static {
        A06();
    }

    public static int A00(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static long A01(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bf, code lost:
    
        if (r12 <= 2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
    
        if (r12 == 1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c3, code lost:
    
        if (r12 != r0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c5, code lost:
    
        r14.A03(32);
        r14.A03(32);
        r4 = r14.A02(4) + 1;
        r14.A03(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d5, code lost:
    
        if (r12 != 1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d7, code lost:
    
        if (r9 == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d9, code lost:
    
        r0 = A01(r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00df, code lost:
    
        r14.A03((int) (((long) r4) * r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ea, code lost:
    
        return new com.facebook.ads.redexgen.X.CZ(r9, r10, r11, r12, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00eb, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ee, code lost:
    
        r0 = ((long) r10) * ((long) r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f3, code lost:
    
        if (r12 <= 2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0116, code lost:
    
        throw new com.facebook.ads.redexgen.X.C08729d(A05(228, 42, 126) + r12);
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.CZ A02(com.facebook.ads.redexgen.X.CX r14) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0940Cd.A02(com.facebook.ads.redexgen.X.CX):com.facebook.ads.redexgen.X.CZ");
    }

    public static C0938Ca A03(C1062Hh c1062Hh) throws C08729d {
        A0A(3, c1062Hh, false);
        String strA0S = c1062Hh.A0S((int) c1062Hh.A0K());
        int length = 7 + 4 + strA0S.length();
        long jA0K = c1062Hh.A0K();
        String[] strArr = new String[(int) jA0K];
        int length2 = length + 4;
        int i = 0;
        while (true) {
            long j = i;
            if (A01[3].charAt(18) != 'i') {
                throw new RuntimeException();
            }
            A01[5] = "ziwCMa4";
            if (j >= jA0K) {
                if ((c1062Hh.A0E() & 1) != 0) {
                    return new C0938Ca(strA0S, strArr, length2 + 1);
                }
                throw new C08729d(A05(198, 30, 84));
            }
            strArr[i] = c1062Hh.A0S((int) c1062Hh.A0K());
            length2 = length2 + 4 + strArr[i].length();
            i++;
        }
    }

    public static C0939Cc A04(C1062Hh c1062Hh) throws C08729d {
        A0A(1, c1062Hh, false);
        long jA0K = c1062Hh.A0K();
        int iA0E = c1062Hh.A0E();
        long jA0K2 = c1062Hh.A0K();
        int iA0A = c1062Hh.A0A();
        int iA0A2 = c1062Hh.A0A();
        int iA0A3 = c1062Hh.A0A();
        int iA0E2 = c1062Hh.A0E();
        return new C0939Cc(jA0K, iA0E, jA0K2, iA0A, iA0A2, iA0A3, (int) Math.pow(2.0d, iA0E2 & 15), (int) Math.pow(2.0d, (iA0E2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (c1062Hh.A0E() & 1) > 0, Arrays.copyOf(c1062Hh.A00, c1062Hh.A07()));
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{116, 77, 80, 64, 75, 81, 119, 86, 75, 78, Ascii.FS, 1, 9, Ascii.FS, Ascii.SUB, Ascii.CR, Ascii.FS, Ascii.GS, 89, Ascii.SUB, 17, Ascii.CAN, Ascii.VT, Ascii.CAN, Ascii.SUB, Ascii.CR, Ascii.FS, Ascii.VT, 10, 89, 94, Ascii.SI, Ascii.SYN, Ascii.VT, Ascii.ESC, Ascii.DLE, 10, 94, 87, 74, 66, 87, 81, 70, 87, 86, Ascii.DC2, 81, 93, 86, 87, Ascii.DC2, 80, 93, 93, 89, Ascii.DC2, 70, 93, Ascii.DC2, 65, 70, 83, 64, 70, Ascii.DC2, 69, 91, 70, 90, Ascii.DC2, 105, 2, 74, 7, 4, Ascii.RS, Ascii.DC2, 2, 74, 6, 1, Ascii.RS, Ascii.DC2, 2, 74, 6, 0, 111, Ascii.DC2, 83, 70, Ascii.DC2, 78, 83, 91, 78, 72, 95, 78, 79, Ascii.VT, 67, 78, 74, 79, 78, 89, Ascii.VT, 95, 82, 91, 78, Ascii.VT, 70, 76, 79, 79, 82, 0, 84, 89, 80, 69, 0, 71, 82, 69, 65, 84, 69, 82, 0, 84, 72, 65, 78, 0, 17, 0, 78, 79, 84, 0, 68, 69, 67, 79, 68, 65, 66, 76, 69, Ascii.SUB, 0, 49, 37, 54, 58, 62, 57, 48, 119, 53, 62, 35, 119, 54, 49, 35, 50, 37, 119, 58, 56, 51, 50, 36, 119, 57, 56, 35, 119, 36, 50, 35, 119, 54, 36, 119, 50, 47, 39, 50, 52, 35, 50, 51, 48, 36, 55, 59, 63, 56, 49, 118, 52, 63, 34, 118, 51, 46, 38, 51, 53, 34, 51, 50, 118, 34, 57, 118, 52, 51, 118, 37, 51, 34, Ascii.DLE, 19, 19, Ascii.ETB, 9, Ascii.FF, 92, 8, 5, Ascii.FF, Ascii.EM, 92, Ascii.ESC, Ascii.SO, Ascii.EM, Ascii.GS, 8, Ascii.EM, Ascii.SO, 92, 8, Ascii.DC4, Ascii.GS, Ascii.DC2, 92, 78, 92, Ascii.DC2, 19, 8, 92, Ascii.CAN, Ascii.EM, Ascii.US, 19, Ascii.CAN, Ascii.GS, Ascii.RS, Ascii.DLE, Ascii.EM, 70, 92, 104, 100, 117, 117, 108, 107, 98, 37, 113, 124, 117, 96, 37, 106, 113, 109, 96, 119, 37, 113, 109, 100, 107, 37, 53, 37, 107, 106, 113, 37, 118, 112, 117, 117, 106, 119, 113, 96, 97, 63, 37, 93, 65, 76, 78, 72, 69, 66, 65, 73, 72, 95, Ascii.CR, 66, 75, Ascii.CR, 89, 68, 64, 72, Ascii.CR, 73, 66, 64, 76, 68, 67, Ascii.CR, 89, 95, 76, 67, 94, 75, 66, 95, 64, 94, Ascii.CR, 67, 66, 89, Ascii.CR, 87, 72, 95, 66, 72, 73, Ascii.CR, 66, 88, 89, 114, 101, 115, 105, 100, 117, 101, 84, 121, 112, 101, 32, 103, 114, 101, 97, 116, 101, 114, 32, 116, 104, 97, 110, 32, 50, 32, 105, 115, 32, 110, 111, 116, 32, 100, 101, 99, 111, 100, 97, 98, 108, 101, 107, 112, 63, 109, 122, 108, 122, 109, 105, 122, 123, 63, 125, 118, 107, 108, 63, 114, 106, 108, 107, 63, 125, 122, 63, 101, 122, 109, 112, 63, 126, 121, 107, 122, 109, 63, 114, 126, 111, 111, 118, 113, 120, 63, 124, 112, 106, 111, 115, 118, 113, 120, 63, 108, 107, 122, 111, 108, 82, 73, 73, 6, 85, 78, 73, 84, 82, 6, 78, 67, 71, 66, 67, 84, Ascii.FS, 6};
        if (A01[2].length() != 28) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "mgdhOJqoKNbrHZTmAlzuBC741swozh2A";
        strArr[0] = "We2DdWBOrlseFOiGq0myNglhwb5nF2sN";
    }

    public static void A07(int i, CX cx) throws C08729d {
        int iA02 = cx.A02(6) + 1;
        for (int i2 = 0; i2 < iA02; i2++) {
            int iA022 = cx.A02(16);
            switch (iA022) {
                case 0:
                    int iA023 = cx.A04() ? cx.A02(4) + 1 : 1;
                    if (cx.A04()) {
                        int iA024 = cx.A02(8) + 1;
                        for (int i3 = 0; i3 < iA024; i3++) {
                            cx.A03(A00(i - 1));
                            cx.A03(A00(i - 1));
                        }
                    }
                    if (cx.A02(2) != 0) {
                        throw new C08729d(A05(TTAdConstant.LANDING_PAGE_TYPE_CODE, 58, 29));
                    }
                    if (iA023 > 1) {
                        for (int i4 = 0; i4 < i; i4++) {
                            cx.A03(4);
                            String[] strArr = A01;
                            if (strArr[6].charAt(31) == strArr[0].charAt(31)) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A01;
                            strArr2[6] = "Wlyx46da0LhUJCMQF7d9pJYsMbXYpIdM";
                            strArr2[0] = "HglI0wxUFDuveiNJ2qiTiY5BYhneBiG1";
                        }
                    }
                    for (int i5 = 0; i5 < iA023; i5++) {
                        cx.A03(8);
                        cx.A03(8);
                        cx.A03(8);
                    }
                    break;
                    break;
                default:
                    Log.e(A05(0, 10, 32), A05(270, 41, 7) + iA022);
                    break;
            }
        }
    }

    public static void A08(CX cx) throws C08729d {
        int iA02 = cx.A02(6) + 1;
        for (int i = 0; i < iA02; i++) {
            int iA022 = cx.A02(16);
            switch (iA022) {
                case 0:
                    cx.A03(8);
                    cx.A03(16);
                    cx.A03(16);
                    cx.A03(6);
                    cx.A03(8);
                    int iA023 = cx.A02(4) + 1;
                    for (int i2 = 0; i2 < iA023; i2++) {
                        cx.A03(8);
                    }
                    break;
                case 1:
                    int iA024 = cx.A02(5);
                    int i3 = -1;
                    int[] iArr = new int[iA024];
                    for (int i4 = 0; i4 < iA024; i4++) {
                        iArr[i4] = cx.A02(4);
                        if (iArr[i4] > i3) {
                            i3 = iArr[i4];
                        }
                    }
                    int[] iArr2 = new int[i3 + 1];
                    for (int i5 = 0; i5 < iArr2.length; i5++) {
                        iArr2[i5] = cx.A02(3) + 1;
                        int iA025 = cx.A02(2);
                        if (iA025 > 0) {
                            cx.A03(8);
                        }
                        for (int i6 = 0; i6 < (1 << iA025); i6++) {
                            cx.A03(8);
                        }
                    }
                    cx.A03(2);
                    int iA026 = cx.A02(4);
                    int i7 = 0;
                    int i8 = 0;
                    for (int i9 = 0; i9 < iA024; i9++) {
                        i7 += iArr2[iArr[i9]];
                        while (i8 < i7) {
                            cx.A03(iA026);
                            i8++;
                        }
                    }
                    break;
                default:
                    throw new C08729d(A05(114, 41, 34) + iA022);
            }
        }
    }

    public static void A09(CX cx) throws C08729d {
        int iA02 = cx.A02(6) + 1;
        for (int i = 0; i < iA02; i++) {
            if (cx.A02(16) > 2) {
                throw new C08729d(A05(363, 43, 2));
            }
            cx.A03(24);
            cx.A03(24);
            cx.A03(24);
            int iA022 = cx.A02(6) + 1;
            cx.A03(8);
            int[] iArr = new int[iA022];
            for (int i2 = 0; i2 < iA022; i2++) {
                int iA023 = 0;
                int iA024 = cx.A02(3);
                if (cx.A04()) {
                    iA023 = cx.A02(5);
                }
                iArr[i2] = (iA023 * 8) + iA024;
            }
            for (int i3 = 0; i3 < iA022; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        cx.A03(8);
                    }
                }
            }
        }
    }

    public static boolean A0A(int i, C1062Hh c1062Hh, boolean z) throws C08729d {
        if (c1062Hh.A04() < 7) {
            if (z) {
                return false;
            }
            throw new C08729d(A05(464, 18, 36) + c1062Hh.A04());
        }
        if (c1062Hh.A0E() != i) {
            if (z) {
                return false;
            }
            throw new C08729d(A05(93, 21, 41) + Integer.toHexString(i));
        }
        if (c1062Hh.A0E() == 118 && c1062Hh.A0E() == 111 && c1062Hh.A0E() == 114 && c1062Hh.A0E() == 98 && c1062Hh.A0E() == 105 && c1062Hh.A0E() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw new C08729d(A05(10, 28, 123));
    }

    public static Cb[] A0B(CX cx) {
        int iA02 = cx.A02(6) + 1;
        Cb[] cbArr = new Cb[iA02];
        for (int i = 0; i < iA02; i++) {
            cbArr[i] = new Cb(cx.A04(), cx.A02(16), cx.A02(16), cx.A02(8));
        }
        return cbArr;
    }

    public static Cb[] A0C(C1062Hh c1062Hh, int i) throws C08729d {
        A0A(5, c1062Hh, false);
        int iA0E = c1062Hh.A0E() + 1;
        CX cx = new CX(c1062Hh.A00);
        cx.A03(c1062Hh.A06() * 8);
        for (int i2 = 0; i2 < iA0E; i2++) {
            A02(cx);
        }
        int iA02 = cx.A02(6) + 1;
        for (int i3 = 0; i3 < iA02; i3++) {
            if (cx.A02(16) != 0) {
                throw new C08729d(A05(311, 52, 47));
            }
        }
        A08(cx);
        A09(cx);
        A07(i, cx);
        Cb[] cbArrA0B = A0B(cx);
        if (cx.A04()) {
            return cbArrA0B;
        }
        throw new C08729d(A05(155, 43, 85));
    }
}
