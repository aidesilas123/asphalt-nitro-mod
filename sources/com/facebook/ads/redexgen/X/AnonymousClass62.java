package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.62, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass62 {
    public static byte[] A00;
    public static String[] A01 = {"zJ7sRo3sU3MwvYkxVq5sKXU", "uwqdBBQkb", "sk1pAaPClwmr1DZFuM4XEVJDjMgj4luU", "2DEAuAVf", "LM1sVeBw6DNfIdZzIYsj5hqYQDPEhJFy", "hYSBjzGCwuKpFZFqojmwIwdxMJLMCyYz", "BWOi5Qn34m6VEGTMmYfzcDYeX0GTjOOy", "rscTiGR64sMWr7IEiXLU0M2EjoTwZlLg"};
    public static final AtomicReference<AnonymousClass60> A02;
    public static final AtomicReference<String> A03;

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 68));
    }

    public static AnonymousClass60 A00() {
        AnonymousClass60 anonymousClass60 = A02.get();
        if (A01[6].charAt(15) == 'M') {
            String[] strArr = A01;
            strArr[3] = "GQnQs3ZS";
            strArr[1] = "yTwJu7KeR";
            AnonymousClass60 anonymousClass602 = anonymousClass60;
            if (anonymousClass602 != null) {
                return anonymousClass602;
            }
            AnonymousClass60 anonymousClass60A00 = AnonymousClass60.A00();
            String[] strArr2 = A01;
            if (strArr2[3].length() != strArr2[1].length()) {
                A01[0] = "yvynwBtI7EoQ7kGRkYf58OE";
                return anonymousClass60A00;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.AnonymousClass60 A01(com.facebook.ads.redexgen.X.C7S r5, com.facebook.ads.redexgen.X.AnonymousClass60 r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L28
        Lc:
            com.facebook.ads.redexgen.X.60 r0 = com.facebook.ads.redexgen.X.AnonymousClass68.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.7w r5 = r5.A07()
            int r4 = com.facebook.ads.redexgen.X.C08417x.A1Q
            com.facebook.ads.redexgen.X.7y r3 = new com.facebook.ads.redexgen.X.7y
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 6
            java.lang.String r0 = A04(r2, r1, r0)
            r5.A9M(r0, r4, r3)
        L28:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass62.A01(com.facebook.ads.redexgen.X.7S, com.facebook.ads.redexgen.X.60):com.facebook.ads.redexgen.X.60");
    }

    public static AnonymousClass60 A02(C7S c7s, AnonymousClass60 anonymousClass60, AnonymousClass61 anonymousClass61) {
        AnonymousClass63 anonymousClass63A00 = null;
        try {
            if (IO.A06(c7s) && (anonymousClass60 == null || TextUtils.isEmpty(anonymousClass60.A03()))) {
                anonymousClass63A00 = AnonymousClass64.A00(c7s.getContentResolver());
            }
        } catch (Throwable th) {
            c7s.A07().A9M(A04(12, 7, 6), C08417x.A1S, new C08427y(th));
        }
        if (anonymousClass63A00 != null && anonymousClass63A00.A01 != null) {
            A03.set(anonymousClass63A00.A01);
            anonymousClass61.A05(anonymousClass63A00.A01);
        }
        return (anonymousClass60 != null || anonymousClass63A00 == null || TextUtils.isEmpty(anonymousClass63A00.A00)) ? anonymousClass60 : new AnonymousClass60(anonymousClass63A00.A00, anonymousClass63A00.A02, EnumC08025z.A05);
    }

    public static String A03() {
        String str = A03.get();
        return str == null ? A04(0, 0, 68) : str;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-98, -90, -95, -100, -84, -77, -94, -81, -81, -90, -95, -94, -95, -97, -88, -97, -84, -93, -99, -20, -25, -23, -28, -30, -14, -7, -24, -11, -11, -20, -25, -24};
    }

    public static void A06(AnonymousClass61 anonymousClass61) {
        A02.set(anonymousClass61.A02());
        A03.set(anonymousClass61.A03());
    }

    public static void A07(C7S c7s) {
        try {
            AnonymousClass61 anonymousClass61 = new AnonymousClass61(c7s);
            A06(anonymousClass61);
            if (A08()) {
                return;
            }
            AtomicReference<AnonymousClass60> atomicReference = A02;
            AnonymousClass60 anonymousClass60 = atomicReference.get();
            long jA01 = (anonymousClass60 == null || TextUtils.isEmpty(anonymousClass60.A03())) ? -1L : anonymousClass60.A01();
            if (jA01 <= 0 || System.currentTimeMillis() - jA01 >= IO.A00(c7s)) {
                AnonymousClass60 anonymousClass60A01 = IO.A07(c7s) ? A01(c7s, A02(c7s, null, anonymousClass61)) : A02(c7s, A01(c7s, null), anonymousClass61);
                if (anonymousClass60A01 == null || TextUtils.isEmpty(anonymousClass60A01.A03())) {
                    return;
                }
                atomicReference.set(anonymousClass60A01);
                anonymousClass61.A04(anonymousClass60A01);
            }
        } catch (Throwable th) {
            c7s.A07().A9M(A04(12, 7, 6), C08417x.A1R, new C08427y(th));
        }
    }

    public static boolean A08() {
        boolean z = false;
        if (C1134Ke.A04()) {
            if (A01[0].length() != 23) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "OqjdKmMb";
            strArr[1] = "Sbvi0a9C0";
            String strA04 = A04(0, 12, 9);
            if (C1134Ke.A05(strA04)) {
                A03.set(C1134Ke.A01(strA04));
                z = true;
            }
        }
        boolean zA04 = C1134Ke.A04();
        String[] strArr2 = A01;
        if (strArr2[5].charAt(29) != strArr2[4].charAt(29)) {
            A01[6] = "1QSggKSi3jrfAw1MbHCsavUz8mNGSj1M";
            if (!zA04) {
                return z;
            }
        } else {
            A01[6] = "SqTb5lTJEle7YRZML8ItyxwGEN07wws1";
            if (!zA04) {
                return z;
            }
        }
        String strA042 = A04(19, 13, 79);
        if (!C1134Ke.A05(strA042)) {
            return z;
        }
        String strA01 = C1134Ke.A01(strA042);
        AtomicReference<AnonymousClass60> atomicReference = A02;
        if (strA01 == null) {
            strA01 = A04(0, 0, 68);
        }
        atomicReference.set(new AnonymousClass60(strA01, false, EnumC08025z.A04));
        return true;
    }
}
