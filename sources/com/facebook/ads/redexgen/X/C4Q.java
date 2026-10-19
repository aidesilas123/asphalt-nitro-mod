package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import com.facebook.ads.redexgen.X.AbstractC07714u;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4Q, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public abstract class C4Q<VH extends AbstractC07714u> {
    public static byte[] A02;
    public static String[] A03 = {"W324oDAhe3QD27ZyNAxx1dE4409WhTwA", "Ikg10MzvREcGgl38", "tAS262iMJzRr57vvpxPoG7SYxewns3xN", "rCt", "3uu7", "cbDGC8uMMSmc1mSYy17nilWnTwttZfvA", "2T", "U5f6pdP97"};
    public final C4R A01 = new C4R();
    public boolean A00 = false;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[2].charAt(21) != '7') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[1] = "WHsKZN6zyncpMK6d";
            strArr[4] = "wlW4";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
            i4++;
        }
    }

    public static void A01() {
        A02 = new byte[]{-48, -44, -98, -63, -16, -29, -33, -14, -29, -44, -25, -29, -11, -54, -50, -104, -57, -26, -70, -31, -26, -36, -50, -31, -35, -17};
    }

    private final void A02(VH vh, int i, List<Object> list) {
        A0E(vh, i);
    }

    public final int A03(int i) {
        return 0;
    }

    public final long A04(int i) {
        return -1L;
    }

    public final VH A05(ViewGroup viewGroup, int i) {
        C07062e.A01(A00(0, 13, 94));
        VH vh = (VH) A0C(viewGroup, i);
        vh.A00 = i;
        C07062e.A00();
        return vh;
    }

    public final void A06() {
        this.A01.A00();
    }

    public final void A07(C4S c4s) {
        this.A01.registerObserver(c4s);
    }

    public final void A08(C4S c4s) {
        this.A01.unregisterObserver(c4s);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A09(VH r6, int r7) {
        /*
            r5 = this;
            r6.A03 = r7
            boolean r0 = r5.A0A()
            if (r0 == 0) goto L2c
            long r2 = r5.A04(r7)
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C4Q.A03
            r0 = 7
            r1 = r4[r0]
            r0 = 6
            r0 = r4[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L6e
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C4Q.A03
            java.lang.String r1 = "OgtetI94x"
            r0 = 7
            r4[r0] = r1
            java.lang.String r1 = "QU"
            r0 = 6
            r4[r0] = r1
            r6.A05 = r2
        L2c:
            r0 = 519(0x207, float:7.27E-43)
            r3 = 1
            r6.A0U(r3, r0)
            r2 = 13
            r1 = 13
            r0 = 88
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.C07062e.A01(r0)
            java.util.List r0 = r6.A0L()
            r5.A02(r6, r7, r0)
            r6.A0N()
            android.view.View r0 = r6.A0H
            android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
            boolean r0 = r1 instanceof com.facebook.ads.redexgen.X.C07554d
            if (r0 == 0) goto L57
            com.facebook.ads.redexgen.X.4d r1 = (com.facebook.ads.redexgen.X.C07554d) r1
            r1.A01 = r3
        L57:
            com.facebook.ads.redexgen.X.C07062e.A00()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4Q.A03
            r0 = 5
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L74
        L6e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L74:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4Q.A03
            java.lang.String r1 = "GQKIQ0ZEK"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "Zf"
            r0 = 6
            r2[r0] = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4Q.A09(com.facebook.ads.redexgen.X.4u, int):void");
    }

    public final boolean A0A() {
        return this.A00;
    }

    public final boolean A0B(VH vh) {
        return false;
    }

    public abstract VH A0C(ViewGroup viewGroup, int i);

    public abstract int A0D();

    public abstract void A0E(VH vh, int i);
}
