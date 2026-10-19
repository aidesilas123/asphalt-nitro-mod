package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class LD {
    public static byte[] A00;
    public static final Pattern A01;

    static {
        A07();
        A01 = Pattern.compile(A02(0, 24, 13));
    }

    public static String A00() {
        return A06(new Exception(A02(24, 19, 71)), -1, -1, false);
    }

    public static String A01(int i) {
        if (i > 0 && new Random().nextFloat() < 1.0f / i) {
            return A00();
        }
        return null;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(Context context, Throwable th) {
        return A06(th, IP.A0I(context), IP.A02(context), IP.A1H(context));
    }

    public static String A04(String str) {
        Matcher matcher = A01.matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    public static String A06(Throwable th, int i, int i2, boolean z) {
        String strA02 = A02(0, 0, 122);
        if (th == null) {
            return strA02;
        }
        try {
            C1385Ty c1385Ty = new C1385Ty();
            LB c1384Tx = c1385Ty;
            if (i2 >= 0) {
                c1384Tx = new C1383Tw(c1384Tx, i2);
            }
            if (i >= 0) {
                c1384Tx = new C1382Tv(c1384Tx, i, i);
            }
            if (z) {
                c1384Tx = new C1384Tx(c1384Tx);
            }
            C1386Tz c1386Tz = new C1386Tz(c1385Ty, 1, c1384Tx);
            th.printStackTrace(new PrintWriter(new LC(c1386Tz)));
            c1386Tz.flush();
            return c1385Ty.toString();
        } catch (Exception unused) {
            return strA02;
        }
    }

    public static void A07() {
        A00 = new byte[]{89, 45, 2, 90, Ascii.DLE, 5, 45, 2, 90, 42, Ascii.DLE, 92, Ascii.VT, 95, 44, 90, 88, 42, 48, 92, 43, 44, 95, 91, 120, 78, 73, 73, 94, 85, 79, Ascii.ESC, 72, 79, 90, 88, 80, Ascii.ESC, 79, 73, 90, 88, 94, 33, 45, 47, 108, 36, 35, 33, 39, 32, 45, 45, 41, 108, 35, 38, 49};
    }

    public static boolean A08(LA la) {
        String strA02 = la.A02();
        if (strA02 == null) {
            return false;
        }
        if (A0A(strA02)) {
            return true;
        }
        Iterator<String> it = la.A01().iterator();
        while (it.hasNext()) {
            if (A0A(it.next())) {
                return true;
            }
        }
        Iterator<String> it2 = la.A00().iterator();
        while (it2.hasNext()) {
            if (A0A(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0A(String str) {
        return str.contains(A02(43, 16, 62));
    }
}
