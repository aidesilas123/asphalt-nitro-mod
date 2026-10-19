package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CK {
    public static byte[] A00;
    public static String[] A01 = {"bdaFL9zMZ", "I63pCoSBBbO7fDlHhIa7BrZ6Ava1cIF3", "x5nJfB3W8HSDeHix", "yyLZDQNtNFC811gZWNvs8tiPSoT", "kE4kWLsRx96QKHczqOKboI9lp", "rJUZcTDeN", "z735Hr0viTdtcy9jRTmcNapxWooAX9zU", "rl5X7GmnpjWHRCYLou0FtooQfFV"};
    public static final int[] A02;

    static {
        A01();
        A02 = new int[]{C1078Hx.A08(A00(79, 4, 69)), C1078Hx.A08(A00(59, 4, 52)), C1078Hx.A08(A00(63, 4, 84)), C1078Hx.A08(A00(67, 4, 91)), C1078Hx.A08(A00(71, 4, 20)), C1078Hx.A08(A00(75, 4, 38)), C1078Hx.A08(A00(43, 4, 41)), C1078Hx.A08(A00(55, 4, 42)), C1078Hx.A08(A00(51, 4, 57)), C1078Hx.A08(A00(87, 4, 49)), C1078Hx.A08(A00(91, 4, 122)), C1078Hx.A08(A00(0, 4, 39)), C1078Hx.A08(A00(4, 4, 108)), C1078Hx.A08(A00(19, 4, 63)), C1078Hx.A08(A00(23, 4, 97)), C1078Hx.A08(A00(8, 4, 75)), C1078Hx.A08(A00(12, 4, 105)), C1078Hx.A08(A00(31, 4, 120)), C1078Hx.A08(A00(27, 4, 15)), C1078Hx.A08(A00(47, 4, 51)), C1078Hx.A08(A00(83, 4, 41)), C1078Hx.A08(A00(35, 4, 120)), C1078Hx.A08(A00(95, 4, 11)), C1078Hx.A08(A00(39, 4, 16))};
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[0].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[3] = "MWn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
            if (A01[7].length() == 12) {
                throw new RuntimeException();
            }
            A01[7] = "KMAr4";
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{-44, 8, -45, 2, Ascii.EM, 77, Ascii.CAN, 72, -8, 44, 42, -5, Ascii.SYN, 74, 74, Ascii.EM, -49, 3, Ascii.FF, -20, 32, 43, -17, Ascii.SO, 66, 78, 17, -42, -67, -54, -87, 63, 38, 72, Ascii.DC2, 63, 38, 72, 66, -41, -35, -40, -32, 4, Ascii.EM, 6, -44, 19, -31, 35, -51, Ascii.ESC, Ascii.CAN, 41, -28, Ascii.FF, Ascii.SUB, 7, -43, Ascii.ETB, 33, Ascii.GS, -32, 55, 65, 61, 1, 62, 72, 68, 9, -9, 1, -3, -61, 9, 19, Ascii.SI, -42, 40, 50, 46, 44, Ascii.SO, 7, 7, Ascii.FF, Ascii.CAN, Ascii.ESC, -33, -36, 97, 100, 40, 38, -10, -7, -91, -91};
    }

    public static boolean A02(int i) {
        if ((i >>> 8) == C1078Hx.A08(A00(16, 3, 34))) {
            return true;
        }
        for (int i2 : A02) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean A03(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return A05(interfaceC0921Bb, true);
    }

    public static boolean A04(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return A05(interfaceC0921Bb, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a3, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
    
        if (r14 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a8, code lost:
    
        if (r17 != r11) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00aa, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A05(com.facebook.ads.redexgen.X.InterfaceC0921Bb r16, boolean r17) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.CK.A05(com.facebook.ads.redexgen.X.Bb, boolean):boolean");
    }
}
