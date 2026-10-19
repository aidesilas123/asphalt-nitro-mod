package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1q, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06921q {
    public static byte[] A00;
    public static String[] A01 = {"SZD1gnuwYC0ZDT5XCpN5wGg04vpvlXtv", "38Pkme0hctlwOycqXgIFmSt4EwGMsPu", "PZ5YSJhnqoOlFoXIJ", "MKZOkal4amZt32sY0duMnYWyMVrdvNv7", "PmMqC", "MtvBWYcgrX5nN2Ecp9gb0xGXALHF8kJ8", "836OSMulKGxVhnpon", "Ud77gBKi5ZcurXFgX0oEk2YfAMQgAhDP"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{Ascii.EM, 95, 67, 90, 91, 103, 96, 122, 107, 124, 125, 122, 103, 122, 103, 111, 98, 3, Ascii.DC4, 6, Ascii.DLE, 3, Ascii.NAK, Ascii.DC4, Ascii.NAK, 46, 7, Ascii.CAN, Ascii.NAK, Ascii.DC4, Ascii.RS};
    }

    public static void A02(YA ya, C6Q c6q, C1003Ey c1003Ey) {
        c6q.A0c(new C6O(c1003Ey.A0z().A01(), PB.A04, PB.A04, c1003Ey.A0R(), A00(17, 14, 99)));
        boolean zA0k = c1003Ey.A0k();
        if (zA0k) {
            C6M c6m = new C6M(c1003Ey.A0L(), c1003Ey.A0R(), A00(17, 14, 99));
            c6m.A04 = true;
            c6m.A03 = A00(0, 5, 37);
            c6q.A0X(c6m);
        }
        boolean zA2N = IP.A2N(ya, QJ.A03());
        C6M c6m2 = new C6M(c1003Ey.A0v().A0D().A08(), c1003Ey.A0R(), A00(17, 14, 99), c1003Ey.A0v().A0D().A05());
        if (!zA0k || zA2N) {
            c6q.A0a(c6m2);
        } else {
            c6q.A0X(c6m2);
        }
        c6q.A0c(new C6O(c1003Ey.A0v().A0D().A07(), C06871l.A00(c1003Ey.A0v().A0D()), C06871l.A01(c1003Ey.A0v().A0D()), c1003Ey.A0R(), A00(17, 14, 99)));
        Iterator<String> it = c1003Ey.A0v().A0G().A01().iterator();
        while (it.hasNext()) {
            c6q.A0c(new C6O(it.next(), -1, -1, c1003Ey.A0R(), A00(17, 14, 99)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a4, code lost:
    
        if (android.text.TextUtils.isEmpty(r0.A0D().A08()) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a6, code lost:
    
        new com.facebook.ads.redexgen.X.C6M(r0.A0D().A08(), r15.A0R(), A00(5, 12, 28), r0.A0D().A05()).A04 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00cb, code lost:
    
        r7 = r7 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A03(com.facebook.ads.redexgen.X.YA r13, com.facebook.ads.redexgen.X.C6Q r14, com.facebook.ads.redexgen.X.C1003Ey r15) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C06921q.A03(com.facebook.ads.redexgen.X.YA, com.facebook.ads.redexgen.X.6Q, com.facebook.ads.redexgen.X.Ey):void");
    }
}
