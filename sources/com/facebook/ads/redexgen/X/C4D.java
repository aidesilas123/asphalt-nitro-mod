package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4D, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C4D implements Runnable {
    public static Comparator<C4C> A04;
    public static byte[] A05;
    public static String[] A06 = {"C", "g", "thIgEQWd9nx", "UJ", "nKFIv9xSQBz", "WKzZJ6F0j2u08DpGCnjDR9E", "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD", "RW"};
    public static final ThreadLocal<C4D> A07;
    public long A00;
    public long A01;
    public ArrayList<ED> A02 = new ArrayList<>();
    public ArrayList<C4C> A03 = new ArrayList<>();

    static {
        A03();
        A07 = new ThreadLocal<>();
        A04 = new Comparator<C4C>() { // from class: com.facebook.ads.redexgen.X.4B
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(C4C c4c, C4C c4c2) {
                if ((c4c.A03 == null) != (c4c2.A03 == null)) {
                    return c4c.A03 == null ? 1 : -1;
                }
                if (c4c.A04 != c4c2.A04) {
                    return c4c.A04 ? -1 : 1;
                }
                int i = c4c2.A02 - c4c.A02;
                if (i != 0) {
                    return i;
                }
                int i2 = c4c.A00 - c4c2.A00;
                if (i2 != 0) {
                    return i2;
                }
                return 0;
            }
        };
    }

    private AbstractC07714u A00(ED ed, int i, long j) {
        if (A08(ed, i)) {
            return null;
        }
        C07614k c07614k = ed.A0r;
        try {
            ed.A1L();
            AbstractC07714u abstractC07714uA0I = c07614k.A0I(i, false, j);
            if (abstractC07714uA0I != null) {
                if (!abstractC07714uA0I.A0a() || abstractC07714uA0I.A0b()) {
                    c07614k.A0d(abstractC07714uA0I, false);
                } else {
                    c07614k.A0X(abstractC07714uA0I.A0H);
                }
            }
            return abstractC07714uA0I;
        } finally {
            ed.A1r(false);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        C4C c4c;
        int size = this.A02.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ED ed = this.A02.get(i2);
            if (ed.getWindowVisibility() == 0) {
                ed.A02.A04(ed, false);
                i += ed.A02.A00;
            }
        }
        this.A03.ensureCapacity(i);
        int i3 = 0;
        String[] strArr = A06;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[3] = "OH";
        strArr2[7] = "7S";
        for (int i4 = 0; i4 < size; i4++) {
            ED ed2 = this.A02.get(i4);
            if (ed2.getWindowVisibility() == 0) {
                ZD zd = ed2.A02;
                int iAbs = Math.abs(zd.A01) + Math.abs(zd.A02);
                for (int i5 = 0; i5 < zd.A00 * 2; i5 += 2) {
                    if (i3 >= this.A03.size()) {
                        c4c = new C4C();
                        this.A03.add(c4c);
                    } else {
                        c4c = this.A03.get(i3);
                    }
                    int i6 = zd.A03[i5 + 1];
                    c4c.A04 = i6 <= iAbs;
                    c4c.A02 = iAbs;
                    c4c.A00 = i6;
                    c4c.A03 = ed2;
                    c4c.A01 = zd.A03[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.A03, A04);
    }

    public static void A03() {
        A05 = new byte[]{97, 101, 47, 93, 116, -126, -125, 116, 115, 47, 95, -127, 116, 117, 116, -125, 114, 119, 92, 96, 42, 90, 124, 111, 112, 111, 126, 109, 114};
    }

    private void A04(long j) {
        for (int i = 0; i < this.A03.size(); i++) {
            C4C c4c = this.A03.get(i);
            if (c4c.A03 == null) {
                return;
            }
            A06(c4c, j);
            c4c.A00();
        }
    }

    private final void A05(long j) {
        A02();
        A04(j);
    }

    private void A06(C4C c4c, long j) {
        AbstractC07714u abstractC07714uA00 = A00(c4c.A03, c4c.A01, c4c.A04 ? Long.MAX_VALUE : j);
        if (abstractC07714uA00 == null || abstractC07714uA00.A09 == null || !abstractC07714uA00.A0a() || abstractC07714uA00.A0b()) {
            return;
        }
        A07(abstractC07714uA00.A09.get(), j);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A07(com.facebook.ads.redexgen.X.ED r7, long r8) {
        /*
            r6 = this;
            if (r7 != 0) goto L3
            return
        L3:
            boolean r0 = r7.A0C
            if (r0 == 0) goto L26
            com.facebook.ads.redexgen.X.40 r3 = r7.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4D.A06
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 17
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4D.A06
            java.lang.String r1 = "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW"
            r0 = 6
            r2[r0] = r1
            int r0 = r3.A06()
            if (r0 == 0) goto L26
            r7.A1O()
        L26:
            com.facebook.ads.redexgen.X.ZD r4 = r7.A02
            r0 = 1
            r4.A04(r7, r0)
            int r0 = r4.A00
            if (r0 == 0) goto L76
            r2 = 0
            r1 = 18
            r0 = 7
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.C07062e.A01(r0)     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.4r r1 = r7.A0s     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.4Q r0 = r7.A04     // Catch: java.lang.Throwable -> L6e
            r1.A05(r0)     // Catch: java.lang.Throwable -> L6e
            r3 = 0
        L43:
            int r0 = r4.A00     // Catch: java.lang.Throwable -> L6e
            int r5 = r0 * 2
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4D.A06
            r0 = 6
            r1 = r1[r0]
            r0 = 8
            char r1 = r1.charAt(r0)
            r0 = 73
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4D.A06
            java.lang.String r1 = "nG"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "TD"
            r0 = 7
            r2[r0] = r1
            if (r3 >= r5) goto L73
            int[] r0 = r4.A03     // Catch: java.lang.Throwable -> L6e
            r0 = r0[r3]     // Catch: java.lang.Throwable -> L6e
            r6.A00(r7, r0, r8)     // Catch: java.lang.Throwable -> L6e
            int r3 = r3 + 2
            goto L43
        L6e:
            r0 = move-exception
            com.facebook.ads.redexgen.X.C07062e.A00()
            throw r0
        L73:
            com.facebook.ads.redexgen.X.C07062e.A00()
        L76:
            return
        L77:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4D.A07(com.facebook.ads.redexgen.X.ED, long):void");
    }

    public static boolean A08(ED ed, int i) {
        int iA06 = ed.A01.A06();
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC07714u abstractC07714uA0F = ED.A0F(ed.A01.A0A(i2));
            if (abstractC07714uA0F.A03 == i && !abstractC07714uA0F.A0b()) {
                return true;
            }
        }
        return false;
    }

    public final void A09(ED ed) {
        this.A02.add(ed);
    }

    public final void A0A(ED ed) {
        this.A02.remove(ed);
    }

    public final void A0B(ED ed, int i, int i2) {
        if (ed.isAttachedToWindow() && this.A01 == 0) {
            this.A01 = ed.getNanoTime();
            ed.post(this);
        }
        ed.A02.A03(i, i2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            C07062e.A01(A01(18, 11, 2));
            if (this.A02.isEmpty()) {
                return;
            }
            int size = this.A02.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                ED ed = this.A02.get(i);
                if (ed.getWindowVisibility() == 0) {
                    jMax = Math.max(ed.getDrawingTime(), jMax);
                }
            }
            if (jMax != 0) {
                A05(TimeUnit.MILLISECONDS.toNanos(jMax) + this.A00);
                return;
            }
            this.A01 = 0L;
            if (A06[5].length() == 17) {
                throw new RuntimeException();
            }
            A06[5] = "H4nD1dOrFb1";
            C07062e.A00();
        } finally {
            this.A01 = 0L;
            C07062e.A00();
        }
    }
}
