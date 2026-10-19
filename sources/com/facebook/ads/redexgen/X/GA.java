package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class GA {
    public static byte[] A00;
    public static String[] A01 = {"mrSAwXtvA48pKDbYm7Wldl5aXQuRkGdI", "fbJ004pbEzPzRxWccwuVKG55hrVCh", "rUGvTWjAKrexOA4wkcPi8vLiUWrJjNTX", "GXri66PfJCwBQDboa2OTJvm", "EWHNad80frv4tcDt6njDAOtFLZM1nox1", "w8DKXrbkod7LTDg6ra7kwJaOsoQJy0WV", "9chw5e5", "pdwJMmZou7a5Bc5N0u9b6z7FU4fjoJm4"};
    public static final Pattern A02;
    public static final Pattern A03;

    static {
        A03();
        A02 = Pattern.compile(A02(52, 16, 114));
        A03 = Pattern.compile(A02(68, 22, 32));
    }

    public static float A00(String str) throws NumberFormatException {
        if (str.endsWith(A02(0, 1, 123))) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException(A02(23, 27, 61));
    }

    public static long A01(String str) throws NumberFormatException {
        long j = 0;
        String[] strArrA0m = C1078Hx.A0m(str, A02(50, 2, 16));
        for (String str2 : C1078Hx.A0l(strArrA0m[0], A02(1, 1, 56))) {
            j = (60 * j) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrA0m.length == 2) {
            j2 += Long.parseLong(strArrA0m[1]);
        }
        return 1000 * j2;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[4].charAt(7) == 'a') {
                throw new RuntimeException();
            }
            A01[4] = "NgHJChfDsWA9aQDgFnI07vXtmTssrLt0";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
            i4++;
        }
    }

    public static void A03() {
        A00 = new byte[]{7, -39, -35, Ascii.DLE, 8, -3, -5, Ascii.FF, -3, -4, -72, -17, -35, -38, -18, -20, -20, -58, -72, -33, 7, Ascii.FF, -72, -12, 9, Ascii.SYN, 7, 9, Ascii.DC2, Ascii.CAN, 5, Ascii.VT, 9, Ascii.ETB, -60, 17, Ascii.EM, Ascii.ETB, Ascii.CAN, -60, 9, Ascii.DC2, 8, -60, Ascii.ESC, Ascii.CR, Ascii.CAN, Ascii.FF, -60, -55, -45, -91, 55, 39, 40, 45, Ascii.RS, 1, 1, -7, 85, -30, 2, 7, 3, 2, Ascii.CAN, -3, -27, 118, 66, 70, -58, -34, -52, -55, -35, -37, -37, -81, -81, -89, 3, -112, -80, -75, -79, -80, -58, -85};
    }

    public static void A04(C1062Hh c1062Hh) throws FX {
        String strA0P = c1062Hh.A0P();
        if (strA0P == null || !A03.matcher(strA0P).matches()) {
            throw new FX(A02(2, 21, 49) + strA0P);
        }
    }
}
