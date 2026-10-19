package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.StringTokenizer;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class LF {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(String str) {
        if (str == null) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, A00(0, 1, 88), true);
        int i = 0;
        if (str.length() <= 90) {
            return str;
        }
        int length = str.length();
        String strA00 = A00(1, 3, 14);
        if (length <= 93 && str.endsWith(strA00)) {
            return str;
        }
        while (stringTokenizer.hasMoreTokens()) {
            int length2 = stringTokenizer.nextToken().length();
            if (i + length2 < 90) {
                i += length2;
            }
        }
        return i == 0 ? str.substring(0, 90) + strA00 : str.substring(0, i) + strA00;
    }

    public static void A02() {
        A00 = new byte[]{Ascii.EM, 65, 65, 65};
    }
}
