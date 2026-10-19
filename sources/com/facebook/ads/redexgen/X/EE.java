package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class EE extends AbstractC1510Yw {
    public static String[] A02 = {"C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq", "J5x5lFquh7whloqA7FngbvBzLsCb", "NWBvU5bW0Pue", "3", "BTAVkHunqM91yRRN2KcoYuZCergWfboL", "2NY5ANPTvwBPWrnTgdotgLNYCmp8", "bg7eF9CjngMlwdFplTojabi", "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"};
    public C4M A00;
    public C4M A01;

    private int A00(AbstractC07544c abstractC07544c, View view, C4M c4m) {
        return (c4m.A0F(view) + (c4m.A0D(view) / 2)) - (abstractC07544c.A1X() ? c4m.A0A() + (c4m.A0B() / 2) : c4m.A06() / 2);
    }

    private View A01(AbstractC07544c abstractC07544c, C4M c4m) {
        int iA06;
        int iA0W = abstractC07544c.A0W();
        if (iA0W == 0) {
            return null;
        }
        View view = null;
        if (abstractC07544c.A1X()) {
            int iA0A = c4m.A0A();
            int iA0B = c4m.A0B();
            if (A02[3].length() != 1) {
                throw new RuntimeException();
            }
            A02[4] = "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf";
            iA06 = iA0A + (iA0B / 2);
        } else {
            iA06 = c4m.A06() / 2;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iA0W; i2++) {
            View viewA0t = abstractC07544c.A0t(i2);
            int iAbs = Math.abs((c4m.A0F(viewA0t) + (c4m.A0D(viewA0t) / 2)) - iA06);
            if (iAbs < i) {
                i = iAbs;
                view = viewA0t;
            }
        }
        return view;
    }

    private View A02(AbstractC07544c abstractC07544c, C4M c4m) {
        int iA0W = abstractC07544c.A0W();
        if (iA0W == 0) {
            return null;
        }
        View view = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iA0W; i2++) {
            View viewA0t = abstractC07544c.A0t(i2);
            int iA0F = c4m.A0F(viewA0t);
            if (iA0F < i) {
                i = iA0F;
                if (A02[3].length() != 1) {
                    throw new RuntimeException();
                }
                A02[3] = "0";
                view = viewA0t;
            }
        }
        return view;
    }

    private C4M A03(AbstractC07544c abstractC07544c) {
        C4M c4m = this.A00;
        if (c4m == null || c4m.A02 != abstractC07544c) {
            this.A00 = C4M.A00(abstractC07544c);
        }
        return this.A00;
    }

    private C4M A04(AbstractC07544c abstractC07544c) {
        C4M c4m = this.A01;
        if (c4m == null || c4m.A02 != abstractC07544c) {
            this.A01 = C4M.A01(abstractC07544c);
        }
        return this.A01;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    @Override // com.facebook.ads.redexgen.X.AbstractC1510Yw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A0C(com.facebook.ads.redexgen.X.AbstractC07544c r10, int r11, int r12) {
        /*
            r9 = this;
            int r8 = r10.A0Z()
            r4 = -1
            if (r8 != 0) goto L8
            return r4
        L8:
            r1 = 0
            boolean r0 = r10.A25()
            if (r0 == 0) goto L1a
            com.facebook.ads.redexgen.X.4M r0 = r9.A04(r10)
            android.view.View r1 = r9.A02(r10, r0)
        L17:
            if (r1 != 0) goto L42
            return r4
        L1a:
            boolean r0 = r10.A24()
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.4M r3 = r9.A03(r10)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.EE.A02
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L36
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L36:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EE.A02
            java.lang.String r1 = "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo"
            r0 = 4
            r2[r0] = r1
            android.view.View r1 = r9.A02(r10, r3)
            goto L17
        L42:
            int r3 = r10.A0p(r1)
            if (r3 != r4) goto L49
            return r4
        L49:
            boolean r0 = r10.A24()
            r7 = 0
            if (r0 == 0) goto La1
            if (r11 <= 0) goto L9f
            r6 = 1
        L53:
            r5 = 0
            boolean r0 = r10 instanceof com.facebook.ads.redexgen.X.InterfaceC07654o
            if (r0 == 0) goto L89
            com.facebook.ads.redexgen.X.4o r10 = (com.facebook.ads.redexgen.X.InterfaceC07654o) r10
            int r0 = r8 + (-1)
            android.graphics.PointF r4 = r10.A4L(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.EE.A02
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L95
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EE.A02
            java.lang.String r1 = "yuw4mNpzW34AqVSRehlxNeo"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "wkUUhZpWZ02e"
            r0 = 2
            r2[r0] = r1
            if (r4 == 0) goto L89
        L7a:
            float r0 = r4.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L87
            float r0 = r4.y
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L88
        L87:
            r7 = 1
        L88:
            r5 = r7
        L89:
            if (r5 == 0) goto L90
            if (r6 == 0) goto L8f
            int r3 = r3 + (-1)
        L8f:
            return r3
        L90:
            if (r6 == 0) goto L8f
            int r3 = r3 + 1
            goto L8f
        L95:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EE.A02
            java.lang.String r1 = "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU"
            r0 = 0
            r2[r0] = r1
            if (r4 == 0) goto L89
            goto L7a
        L9f:
            r6 = 0
            goto L53
        La1:
            if (r12 <= 0) goto La5
            r6 = 1
            goto L53
        La5:
            r6 = 0
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.EE.A0C(com.facebook.ads.redexgen.X.4c, int, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1510Yw
    public final View A0D(AbstractC07544c abstractC07544c) {
        if (abstractC07544c.A25()) {
            return A01(abstractC07544c, A04(abstractC07544c));
        }
        if (abstractC07544c.A24()) {
            return A01(abstractC07544c, A03(abstractC07544c));
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1510Yw
    public final ZB A0E(AbstractC07544c abstractC07544c) {
        if (abstractC07544c instanceof InterfaceC07654o) {
            return new EF(this, super.A00.getContext());
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1510Yw
    public final int[] A0H(AbstractC07544c abstractC07544c, View view) {
        int[] iArr = new int[2];
        if (abstractC07544c.A24()) {
            iArr[0] = A00(abstractC07544c, view, A03(abstractC07544c));
        } else {
            iArr[0] = 0;
        }
        boolean zA25 = abstractC07544c.A25();
        String[] strArr = A02;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A02[0] = "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C";
        if (zA25) {
            iArr[1] = A00(abstractC07544c, view, A04(abstractC07544c));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
