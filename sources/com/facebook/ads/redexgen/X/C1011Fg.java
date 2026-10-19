package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1011Fg {
    public static byte[] A00;
    public static String[] A01 = {"UAa0Z", "y84zlLC7EVblAi9s6IjzDwtWlv", "hWSmc3nAoC6lO20JdXQ8UQAJh4", "HAxIJdFwG2BHjJ6kBVBijNmfixc4v4eM", "sMFPtSIIwmEBUNkX5nfAspCddytOxG7k", "XuEZcwrwjFPAmN9wFCdffjeuCf3K5K0k", "0bJFkLVdjL4ExnLkyIfxNw93FYOhEgu9", "GtmYUKm65Uny9K5bn1TkELKUpeSnjSJ3"};
    public static final int A02;
    public static final int A03;

    static {
        A02();
        A03 = C1078Hx.A08(A01(11, 4, 88));
        A02 = C1078Hx.A08(A01(7, 4, 86));
    }

    public static int A00(C1062Hh c1062Hh) {
        int i = 0;
        while (c1062Hh.A04() != 0) {
            int iA0E = c1062Hh.A0E();
            i += iA0E;
            if (iA0E != 255) {
                return i;
            }
        }
        if (A01[0].length() != 5) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "XY7JbweA6fzPXsut6MPl2wkiFN";
        strArr[1] = "9Cope1RtGoIRUkWui2tRq11YR8";
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{56, Ascii.RS, Ascii.SUB, 46, Ascii.SI, Ascii.DC2, Ascii.ETB, 37, 53, 38, 80, 40, 46, 86, 91, 108, 84, 86, 79, 79, 86, 81, 88, Ascii.US, 77, 90, 82, 94, 86, 81, 91, 90, 77, Ascii.US, 80, 89, Ascii.US, 82, 94, 83, 89, 80, 77, 82, 90, 91, Ascii.US, 108, 122, 118, Ascii.US, 113, 126, 115, Ascii.US, 74, 81, 86, 75, 17};
    }

    public static void A03(long j, C1062Hh c1062Hh, InterfaceC0930Bm[] interfaceC0930BmArr) {
        while (c1062Hh.A04() > 1) {
            int iA00 = A00(c1062Hh);
            int iA002 = A00(c1062Hh);
            int iA06 = c1062Hh.A06();
            if (A01[3].charAt(16) != 'B') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "sJRWMhzWyXWsYNwcYdMxu9waYeZJW4nD";
            strArr[5] = "JDck5DNLGL8VXNpOftdo1S17ghv9bSuy";
            int iA07 = iA06 + iA002;
            if (iA002 == -1 || iA002 > c1062Hh.A04()) {
                Log.w(A01(0, 7, 76), A01(15, 45, 8));
                iA07 = c1062Hh.A07();
            } else if (iA00 == 4 && iA002 >= 8) {
                int iA0E = c1062Hh.A0E();
                int iA0I = c1062Hh.A0I();
                int iA08 = iA0I == 49 ? c1062Hh.A08() : 0;
                int iA0E2 = c1062Hh.A0E();
                if (iA0I == 47) {
                    c1062Hh.A0Z(1);
                }
                boolean z = iA0E == 181 && (iA0I == 49 || iA0I == 47) && iA0E2 == 3;
                if (iA0I == 49) {
                    z &= iA08 == A03 || iA08 == A02;
                }
                if (z) {
                    int iA0E3 = c1062Hh.A0E() & 31;
                    c1062Hh.A0Z(1);
                    int i = iA0E3 * 3;
                    int iA062 = c1062Hh.A06();
                    for (InterfaceC0930Bm interfaceC0930Bm : interfaceC0930BmArr) {
                        c1062Hh.A0Y(iA062);
                        interfaceC0930Bm.AEr(c1062Hh, i);
                        interfaceC0930Bm.AEs(j, 1, i, 0, null);
                    }
                }
            }
            c1062Hh.A0Y(iA07);
        }
    }
}
