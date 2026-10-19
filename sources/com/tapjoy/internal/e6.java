package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class e6 extends q7 {
    public e6() {
        super(3, p6.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        p6 p6Var = (p6) obj;
        Long l = p6Var.f7958e;
        int iA = l != null ? q7.f7969d.a(1, l) : 0;
        String str = p6Var.f7959f;
        int iA2 = iA + (str != null ? q7.h.a(2, str) : 0);
        Integer num = p6Var.f7960g;
        int iA3 = iA2 + (num != null ? q7.b.a(13, num) : 0);
        Integer num2 = p6Var.h;
        int iA4 = b0.c.c().a(15, p6Var.i) + iA3 + (num2 != null ? q7.b.a(14, num2) : 0);
        Integer num3 = p6Var.j;
        int iA5 = iA4 + (num3 != null ? q7.b.a(16, num3) : 0);
        Long l2 = p6Var.k;
        int iA6 = iA5 + (l2 != null ? q7.f7969d.a(17, l2) : 0);
        Long l3 = p6Var.l;
        int iA7 = iA6 + (l3 != null ? q7.f7969d.a(18, l3) : 0);
        Long l4 = p6Var.m;
        int iA8 = iA7 + (l4 != null ? q7.f7969d.a(27, l4) : 0);
        Long l5 = p6Var.n;
        int iA9 = iA8 + (l5 != null ? q7.f7969d.a(19, l5) : 0);
        String str2 = p6Var.o;
        int iA10 = iA9 + (str2 != null ? q7.h.a(20, str2) : 0);
        Integer num4 = p6Var.p;
        int iA11 = iA10 + (num4 != null ? q7.b.a(3, num4) : 0);
        Double d2 = p6Var.q;
        int iA12 = iA11 + (d2 != null ? q7.f7972g.a(21, d2) : 0);
        Long l6 = p6Var.r;
        int iA13 = iA12 + (l6 != null ? q7.f7969d.a(4, l6) : 0);
        Double d3 = p6Var.s;
        int iA14 = iA13 + (d3 != null ? q7.f7972g.a(22, d3) : 0);
        String str3 = p6Var.t;
        int iA15 = iA14 + (str3 != null ? q7.h.a(23, str3) : 0);
        Boolean bool = p6Var.u;
        int iA16 = iA15 + (bool != null ? q7.a.a(24, bool) : 0);
        String str4 = p6Var.v;
        int iA17 = iA16 + (str4 != null ? q7.h.a(5, str4) : 0);
        Integer num5 = p6Var.w;
        int iA18 = q7.h.c().a(26, p6Var.x) + iA17 + (num5 != null ? q7.b.a(6, num5) : 0);
        Boolean bool2 = p6Var.y;
        return p6Var.c().f() + iA18 + (bool2 != null ? q7.a.a(25, bool2) : 0);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        Long l;
        j6 j6VarA = i3.a();
        j6 j6VarA2 = i3.a();
        long jD = z7Var.d();
        Long lValueOf = null;
        String strJ = null;
        n nVar = null;
        Integer numValueOf = null;
        w5 w5Var = null;
        Integer numValueOf2 = null;
        Integer numValueOf3 = null;
        Long lValueOf2 = null;
        Long lValueOf3 = null;
        Long lValueOf4 = null;
        String strJ2 = null;
        Integer numValueOf4 = null;
        Double dValueOf = null;
        Long lValueOf5 = null;
        Double dValueOf2 = null;
        String strJ3 = null;
        Boolean bool = null;
        String strJ4 = null;
        Integer numValueOf5 = null;
        Boolean bool2 = null;
        Long lValueOf6 = null;
        while (true) {
            int iG = z7Var.g();
            Long l2 = lValueOf4;
            if (iG == -1) {
                Long l3 = lValueOf3;
                z7Var.c(jD);
                return new p6(lValueOf, strJ, numValueOf, numValueOf2, j6VarA, numValueOf3, lValueOf2, l3, l2, lValueOf6, strJ2, numValueOf4, dValueOf, lValueOf5, dValueOf2, strJ3, bool, strJ4, numValueOf5, j6VarA2, bool2, nVar != null ? new c1(nVar.clone().k()) : c1.b);
            }
            switch (iG) {
                case 1:
                    l = lValueOf3;
                    lValueOf = Long.valueOf(z7Var.k());
                    lValueOf4 = l2;
                    lValueOf3 = l;
                    break;
                case 2:
                    l = lValueOf3;
                    strJ = ((n) z7Var.a).j(z7Var.a());
                    lValueOf4 = l2;
                    lValueOf3 = l;
                    break;
                case 3:
                    l = lValueOf3;
                    numValueOf4 = Integer.valueOf(z7Var.j());
                    lValueOf4 = l2;
                    lValueOf3 = l;
                    break;
                case 4:
                    l = lValueOf3;
                    lValueOf5 = Long.valueOf(z7Var.k());
                    lValueOf4 = l2;
                    lValueOf3 = l;
                    break;
                case 5:
                    l = lValueOf3;
                    strJ4 = ((n) z7Var.a).j(z7Var.a());
                    lValueOf4 = l2;
                    lValueOf3 = l;
                    break;
                case 6:
                    numValueOf5 = Integer.valueOf(z7Var.j());
                    lValueOf4 = l2;
                    break;
                default:
                    l = lValueOf3;
                    switch (iG) {
                        case 13:
                            numValueOf = Integer.valueOf(z7Var.j());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 14:
                            numValueOf2 = Integer.valueOf(z7Var.j());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 15:
                            j6VarA.add((b0) b0.c.d(z7Var));
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 16:
                            numValueOf3 = Integer.valueOf(z7Var.j());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 17:
                            lValueOf2 = Long.valueOf(z7Var.k());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 18:
                            lValueOf3 = Long.valueOf(z7Var.k());
                            lValueOf4 = l2;
                            break;
                        case 19:
                            lValueOf4 = Long.valueOf(z7Var.k());
                            lValueOf3 = l;
                            break;
                        case 20:
                            strJ2 = ((n) z7Var.a).j(z7Var.a());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 21:
                            dValueOf = Double.valueOf(Double.longBitsToDouble(z7Var.i()));
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 22:
                            dValueOf2 = Double.valueOf(Double.longBitsToDouble(z7Var.i()));
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 23:
                            strJ3 = ((n) z7Var.a).j(z7Var.a());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 24:
                            bool = (Boolean) q7.a.d(z7Var);
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 25:
                            bool2 = (Boolean) q7.a.d(z7Var);
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 26:
                            j6VarA2.add(((n) z7Var.a).j(z7Var.a()));
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        case 27:
                            lValueOf6 = Long.valueOf(z7Var.k());
                            lValueOf4 = l2;
                            lValueOf3 = l;
                            break;
                        default:
                            int i = z7Var.h;
                            Object objD = s1.a(i).d(z7Var);
                            if (w5Var == null) {
                                nVar = new n();
                                w5Var = new w5(nVar);
                            }
                            try {
                                s1.a(i).e(w5Var, iG, objD);
                                lValueOf4 = l2;
                                lValueOf3 = l;
                            } catch (IOException unused) {
                                throw new AssertionError();
                            }
                            break;
                    }
                    break;
            }
        }
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        p6 p6Var = (p6) obj;
        Long l = p6Var.f7958e;
        if (l != null) {
            q7.f7969d.e(w5Var, 1, l);
        }
        String str = p6Var.f7959f;
        if (str != null) {
            q7.h.e(w5Var, 2, str);
        }
        Integer num = p6Var.f7960g;
        if (num != null) {
            q7.b.e(w5Var, 13, num);
        }
        Integer num2 = p6Var.h;
        if (num2 != null) {
            q7.b.e(w5Var, 14, num2);
        }
        b0.c.c().e(w5Var, 15, p6Var.i);
        Integer num3 = p6Var.j;
        if (num3 != null) {
            q7.b.e(w5Var, 16, num3);
        }
        Long l2 = p6Var.k;
        if (l2 != null) {
            q7.f7969d.e(w5Var, 17, l2);
        }
        Long l3 = p6Var.l;
        if (l3 != null) {
            q7.f7969d.e(w5Var, 18, l3);
        }
        Long l4 = p6Var.m;
        if (l4 != null) {
            q7.f7969d.e(w5Var, 27, l4);
        }
        Long l5 = p6Var.n;
        if (l5 != null) {
            q7.f7969d.e(w5Var, 19, l5);
        }
        String str2 = p6Var.o;
        if (str2 != null) {
            q7.h.e(w5Var, 20, str2);
        }
        Integer num4 = p6Var.p;
        if (num4 != null) {
            q7.b.e(w5Var, 3, num4);
        }
        Double d2 = p6Var.q;
        if (d2 != null) {
            q7.f7972g.e(w5Var, 21, d2);
        }
        Long l6 = p6Var.r;
        if (l6 != null) {
            q7.f7969d.e(w5Var, 4, l6);
        }
        Double d3 = p6Var.s;
        if (d3 != null) {
            q7.f7972g.e(w5Var, 22, d3);
        }
        String str3 = p6Var.t;
        if (str3 != null) {
            q7.h.e(w5Var, 23, str3);
        }
        Boolean bool = p6Var.u;
        if (bool != null) {
            q7.a.e(w5Var, 24, bool);
        }
        String str4 = p6Var.v;
        if (str4 != null) {
            q7.h.e(w5Var, 5, str4);
        }
        Integer num5 = p6Var.w;
        if (num5 != null) {
            q7.b.e(w5Var, 6, num5);
        }
        q7.h.c().e(w5Var, 26, p6Var.x);
        Boolean bool2 = p6Var.y;
        if (bool2 != null) {
            q7.a.e(w5Var, 25, bool2);
        }
        w5Var.b(p6Var.c());
    }
}
