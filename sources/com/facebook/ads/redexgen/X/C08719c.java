package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9c, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08719c {
    public static String[] A0C = {"Lb1", "HAO", "yCHPPE9w0w81YCKuxFE6L9DmrxkJ2tU0", "DWgdxvM8Y7BV8jWWEqdgbbwmU3UKZQmt", "Bgm", "OOw1FrSehBTCipzYy8xUBx5", "Tcr4i3yvYCwS9F", "vvoyvovICPFY35FJOKkJE7b"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public C08699a A04;
    public C08699a A05;
    public C08699a A06;
    public AbstractC08939z A07;
    public Object A08;
    public boolean A09;
    public final C08919x A0A = new C08919x();
    public final C08929y A0B = new C08929y();

    private long A00(int i) {
        int iA04;
        Object obj = this.A07.A0A(i, this.A0A, true).A03;
        int i2 = this.A0A.A00;
        Object obj2 = this.A08;
        if (obj2 != null && (iA04 = this.A07.A04(obj2)) != -1 && this.A07.A09(iA04, this.A0A).A00 == i2) {
            return this.A03;
        }
        for (C08699a c08699aA0E = A0E(); c08699aA0E != null; c08699aA0E = c08699aA0E.A01) {
            if (c08699aA0E.A09.equals(obj)) {
                return c08699aA0E.A02.A04.A03;
            }
        }
        for (C08699a c08699aA0E2 = A0E(); c08699aA0E2 != null; c08699aA0E2 = c08699aA0E2.A01) {
            int iA042 = this.A07.A04(c08699aA0E2.A09);
            if (iA042 != -1 && this.A07.A09(iA042, this.A0A).A00 == i2) {
                return c08699aA0E2.A02.A04.A03;
            }
        }
        long j = this.A02;
        this.A02 = 1 + j;
        return j;
    }

    private C08709b A01(int i, int i2, int i3, long j, long j2) {
        EW ew = new EW(i, i2, i3, j2);
        boolean zA0A = A0A(ew, Long.MIN_VALUE);
        boolean zA0B = A0B(ew, zA0A);
        return new C08709b(ew, i3 == this.A0A.A02(i2) ? this.A0A.A06() : 0L, Long.MIN_VALUE, j, this.A07.A09(ew.A02, this.A0A).A0A(ew.A00, ew.A01), zA0A, zA0B);
    }

    private C08709b A02(int i, long j, long j2) {
        EW ew = new EW(i, j2);
        this.A07.A09(ew.A02, this.A0A);
        int iA04 = this.A0A.A04(j);
        long jA09 = iA04 == -1 ? Long.MIN_VALUE : this.A0A.A09(iA04);
        boolean zA0A = A0A(ew, jA09);
        return new C08709b(ew, j, jA09, C.TIME_UNSET, jA09 == Long.MIN_VALUE ? this.A0A.A07() : jA09, zA0A, A0B(ew, zA0A));
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0173  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.C08709b A03(com.facebook.ads.redexgen.X.C08699a r15, long r16) {
        /*
            Method dump skipped, instruction units count: 536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C08719c.A03(com.facebook.ads.redexgen.X.9a, long):com.facebook.ads.redexgen.X.9b");
    }

    private C08709b A04(C08709b c08709b, EW ew) {
        long j = c08709b.A03;
        long j2 = c08709b.A02;
        boolean zA0A = A0A(ew, j2);
        boolean zA0B = A0B(ew, zA0A);
        this.A07.A09(ew.A02, this.A0A);
        return new C08709b(ew, j, j2, c08709b.A00, ew.A01() ? this.A0A.A0A(ew.A00, ew.A01) : j2 == Long.MIN_VALUE ? this.A0A.A07() : j2, zA0A, zA0B);
    }

    private C08709b A05(C08739e c08739e) {
        return A06(c08739e.A04, c08739e.A01, c08739e.A02);
    }

    private C08709b A06(EW ew, long j, long j2) {
        this.A07.A09(ew.A02, this.A0A);
        if (!ew.A01()) {
            return A02(ew.A02, j2, ew.A03);
        }
        if (this.A0A.A0E(ew.A00, ew.A01)) {
            return A01(ew.A02, ew.A00, ew.A01, j, ew.A03);
        }
        return null;
    }

    private EW A07(int i, long j, long j2) {
        this.A07.A09(i, this.A0A);
        int iA05 = this.A0A.A05(j);
        return iA05 == -1 ? new EW(i, j2) : new EW(i, iA05, this.A0A.A02(iA05), j2);
    }

    private boolean A08() {
        C08699a c08699aA0E = A0E();
        if (c08699aA0E == null) {
            return true;
        }
        while (true) {
            int iA03 = this.A07.A03(c08699aA0E.A02.A04.A02, this.A0A, this.A0B, this.A01, this.A09);
            while (c08699aA0E.A01 != null && !c08699aA0E.A02.A06) {
                c08699aA0E = c08699aA0E.A01;
            }
            if (iA03 == -1 || c08699aA0E.A01 == null) {
                break;
            }
            int i = c08699aA0E.A01.A02.A04.A02;
            if (A0C[3].charAt(17) != 'q') {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[4] = "04e";
            strArr[1] = "fTm";
            if (i != iA03) {
                break;
            }
            c08699aA0E = c08699aA0E.A01;
        }
        boolean zA0S = A0S(c08699aA0E);
        c08699aA0E.A02 = A04(c08699aA0E.A02, c08699aA0E.A02.A04);
        return (zA0S && A0P()) ? false : true;
    }

    private boolean A09(C08699a c08699a, C08709b c08709b) {
        C08709b c08709b2 = c08699a.A02;
        return c08709b2.A03 == c08709b.A03 && c08709b2.A02 == c08709b.A02 && c08709b2.A04.equals(c08709b.A04);
    }

    private boolean A0A(EW ew, long j) {
        int iA00 = this.A07.A09(ew.A02, this.A0A).A00();
        if (iA00 == 0) {
            return true;
        }
        int i = iA00 - 1;
        boolean zA01 = ew.A01();
        if (this.A0A.A09(i) != Long.MIN_VALUE) {
            return !zA01 && j == Long.MIN_VALUE;
        }
        int iA01 = this.A0A.A01(i);
        if (A0C[3].charAt(17) != 'q') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "dZB";
        strArr[1] = "bbK";
        if (iA01 == -1) {
            return false;
        }
        if (zA01 && ew.A00 == i && ew.A01 == iA01 + (-1)) {
            return true;
        }
        return !zA01 && this.A0A.A02(i) == iA01;
    }

    private boolean A0B(EW ew, boolean z) {
        return !this.A07.A0B(this.A07.A09(ew.A02, this.A0A).A00, this.A0B).A08 && this.A07.A0F(ew.A02, this.A0A, this.A0B, this.A01, this.A09) && z;
    }

    public final C08699a A0C() {
        C08699a c08699a = this.A05;
        if (c08699a != null) {
            if (c08699a == this.A06) {
                this.A06 = c08699a.A01;
            }
            this.A05.A0D();
            int i = this.A00 - 1;
            this.A00 = i;
            if (i == 0) {
                this.A04 = null;
                this.A08 = this.A05.A09;
                this.A03 = this.A05.A02.A04.A03;
            }
            C08699a c08699a2 = this.A05.A01;
            if (A0C[3].charAt(17) != 'q') {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[5] = "umGBE5C5CuHWhY73AVgogVf";
            strArr[7] = "vM8t2ZsrAby17UFg4572Zd2";
            this.A05 = c08699a2;
        } else {
            C08699a c08699a3 = this.A04;
            this.A05 = c08699a3;
            this.A06 = c08699a3;
        }
        return this.A05;
    }

    public final C08699a A0D() {
        C08699a c08699a = this.A06;
        HI.A04((c08699a == null || c08699a.A01 == null) ? false : true);
        C08699a c08699a2 = this.A06.A01;
        this.A06 = c08699a2;
        return c08699a2;
    }

    public final C08699a A0E() {
        return A0P() ? this.A05 : this.A04;
    }

    public final C08699a A0F() {
        return this.A04;
    }

    public final C08699a A0G() {
        return this.A05;
    }

    public final C08699a A0H() {
        return this.A06;
    }

    public final C08709b A0I(long j, C08739e c08739e) {
        C08699a c08699a = this.A04;
        return c08699a == null ? A05(c08739e) : A03(c08699a, j);
    }

    public final C08709b A0J(C08709b c08709b, int i) {
        return A04(c08709b, c08709b.A04.A00(i));
    }

    public final InterfaceC1419Vg A0K(InterfaceC08879s[] interfaceC08879sArr, GR gr, GU gu, EY ey, Object obj, C08709b c08709b) {
        long jA07;
        C08699a c08699a = this.A04;
        if (c08699a == null) {
            jA07 = c08709b.A03;
        } else {
            jA07 = c08699a.A07() + this.A04.A02.A01;
            String[] strArr = A0C;
            if (strArr[6].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[5] = "XFCrwzIN7SxWEMf0fznSlHt";
            strArr2[7] = "zDOSpelqL3O1zvPqWZMR4dG";
        }
        C08699a c08699a2 = new C08699a(interfaceC08879sArr, jA07, gr, gu, ey, obj, c08709b);
        if (this.A04 != null) {
            HI.A04(A0P());
            this.A04.A01 = c08699a2;
        }
        this.A08 = null;
        this.A04 = c08699a2;
        this.A00++;
        return c08699a2.A08;
    }

    public final EW A0L(int i, long j) {
        return A07(i, j, A00(i));
    }

    public final void A0M(long j) {
        C08699a c08699a = this.A04;
        if (c08699a != null) {
            c08699a.A0G(j);
        }
    }

    public final void A0N(AbstractC08939z abstractC08939z) {
        this.A07 = abstractC08939z;
    }

    public final void A0O(boolean z) {
        C08699a c08699aA0E = A0E();
        if (c08699aA0E != null) {
            this.A08 = z ? c08699aA0E.A09 : null;
            this.A03 = c08699aA0E.A02.A04.A03;
            c08699aA0E.A0D();
            A0S(c08699aA0E);
        } else if (!z) {
            this.A08 = null;
        }
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A00 = 0;
    }

    public final boolean A0P() {
        return this.A05 != null;
    }

    public final boolean A0Q() {
        C08699a c08699a = this.A04;
        return c08699a == null || (!c08699a.A02.A05 && this.A04.A0H() && this.A04.A02.A01 != C.TIME_UNSET && this.A00 < 100);
    }

    public final boolean A0R(int i) {
        this.A01 = i;
        return A08();
    }

    public final boolean A0S(C08699a c08699a) {
        HI.A04(c08699a != null);
        boolean z = false;
        String[] strArr = A0C;
        if (strArr[4].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[4] = "VEc";
        strArr2[1] = "0t0";
        this.A04 = c08699a;
        while (c08699a.A01 != null) {
            c08699a = c08699a.A01;
            if (c08699a == this.A06) {
                this.A06 = this.A05;
                z = true;
            }
            c08699a.A0D();
            this.A00--;
        }
        this.A04.A01 = null;
        return z;
    }

    public final boolean A0T(InterfaceC1419Vg interfaceC1419Vg) {
        C08699a c08699a = this.A04;
        return c08699a != null && c08699a.A08 == interfaceC1419Vg;
    }

    public final boolean A0U(EW ew, long j) {
        int iA03 = ew.A02;
        C08699a c08699a = null;
        for (C08699a c08699aA0E = A0E(); c08699aA0E != null; c08699aA0E = c08699aA0E.A01) {
            if (c08699a == null) {
                C08709b c08709b = c08699aA0E.A02;
                if (A0C[3].charAt(17) != 'q') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[6] = "pn8srZEQfSJzxw";
                strArr[0] = "zNd";
                c08699aA0E.A02 = A0J(c08709b, iA03);
            } else {
                if (iA03 == -1 || !c08699aA0E.A09.equals(this.A07.A0A(iA03, this.A0A, true).A03)) {
                    return true ^ A0S(c08699a);
                }
                C08709b c08709bA03 = A03(c08699a, j);
                if (c08709bA03 == null) {
                    return true ^ A0S(c08699a);
                }
                c08699aA0E.A02 = A0J(c08699aA0E.A02, iA03);
                if (!A09(c08699aA0E, c08709bA03)) {
                    boolean zA0S = A0S(c08699a);
                    String[] strArr2 = A0C;
                    if (strArr2[4].length() != strArr2[1].length()) {
                        return true ^ zA0S;
                    }
                    String[] strArr3 = A0C;
                    strArr3[5] = "009NTdXku0rfOoGLKxDbxOM";
                    strArr3[7] = "1WlPwvG5U3NzzyaZC20RJwC";
                    return true ^ zA0S;
                }
            }
            if (c08699aA0E.A02.A06) {
                iA03 = this.A07.A03(iA03, this.A0A, this.A0B, this.A01, this.A09);
            }
            c08699a = c08699aA0E;
        }
        return true;
    }

    public final boolean A0V(boolean z) {
        this.A09 = z;
        return A08();
    }
}
