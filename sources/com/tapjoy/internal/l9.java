package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class l9 extends q7 {
    public l9() {
        super(3, f.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        f fVar = (f) obj;
        String str = fVar.f7896d;
        int iA = str != null ? q7.h.a(1, str) : 0;
        String str2 = fVar.f7897e;
        int iA2 = iA + (str2 != null ? q7.h.a(2, str2) : 0);
        String str3 = fVar.f7898f;
        int iA3 = iA2 + (str3 != null ? q7.h.a(3, str3) : 0);
        String str4 = fVar.f7899g;
        int iA4 = iA3 + (str4 != null ? q7.h.a(4, str4) : 0);
        String str5 = fVar.h;
        int iA5 = iA4 + (str5 != null ? q7.h.a(5, str5) : 0);
        String str6 = fVar.i;
        int iA6 = iA5 + (str6 != null ? q7.h.a(6, str6) : 0);
        Integer num = fVar.j;
        int iA7 = iA6 + (num != null ? q7.b.a(7, num) : 0);
        Integer num2 = fVar.k;
        int iA8 = iA7 + (num2 != null ? q7.b.a(8, num2) : 0);
        Integer num3 = fVar.l;
        int iA9 = iA8 + (num3 != null ? q7.b.a(9, num3) : 0);
        String str7 = fVar.m;
        int iA10 = iA9 + (str7 != null ? q7.h.a(10, str7) : 0);
        String str8 = fVar.n;
        int iA11 = iA10 + (str8 != null ? q7.h.a(11, str8) : 0);
        String str9 = fVar.o;
        int iA12 = iA11 + (str9 != null ? q7.h.a(12, str9) : 0);
        String str10 = fVar.p;
        int iA13 = iA12 + (str10 != null ? q7.h.a(13, str10) : 0);
        String str11 = fVar.q;
        int iA14 = iA13 + (str11 != null ? q7.h.a(14, str11) : 0);
        String str12 = fVar.r;
        int iA15 = iA14 + (str12 != null ? q7.h.a(15, str12) : 0);
        String str13 = fVar.s;
        int iA16 = iA15 + (str13 != null ? q7.h.a(16, str13) : 0);
        String str14 = fVar.t;
        int iA17 = iA16 + (str14 != null ? q7.h.a(17, str14) : 0);
        String str15 = fVar.u;
        return fVar.c().f() + iA17 + (str15 != null ? q7.h.a(18, str15) : 0);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        Integer num;
        long jD = z7Var.d();
        n nVar = null;
        w5 w5Var = null;
        String strJ = null;
        String strJ2 = null;
        String strJ3 = null;
        String strJ4 = null;
        String strJ5 = null;
        String strJ6 = null;
        Integer numValueOf = null;
        Integer numValueOf2 = null;
        Integer numValueOf3 = null;
        String strJ7 = null;
        String strJ8 = null;
        String strJ9 = null;
        String strJ10 = null;
        String strJ11 = null;
        String strJ12 = null;
        String strJ13 = null;
        String strJ14 = null;
        String strJ15 = null;
        while (true) {
            int iG = z7Var.g();
            String str = strJ7;
            if (iG == -1) {
                Integer num2 = numValueOf3;
                z7Var.c(jD);
                return new f(strJ, strJ2, strJ3, strJ4, strJ5, strJ6, numValueOf, numValueOf2, num2, str, strJ15, strJ8, strJ9, strJ10, strJ11, strJ12, strJ13, strJ14, nVar != null ? new c1(nVar.clone().k()) : c1.b);
            }
            switch (iG) {
                case 1:
                    num = numValueOf3;
                    strJ = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 2:
                    num = numValueOf3;
                    strJ2 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 3:
                    num = numValueOf3;
                    strJ3 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 4:
                    num = numValueOf3;
                    strJ4 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 5:
                    num = numValueOf3;
                    strJ5 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 6:
                    num = numValueOf3;
                    strJ6 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 7:
                    numValueOf = Integer.valueOf(z7Var.j());
                    strJ7 = str;
                    break;
                case 8:
                    numValueOf2 = Integer.valueOf(z7Var.j());
                    strJ7 = str;
                    break;
                case 9:
                    numValueOf3 = Integer.valueOf(z7Var.j());
                    strJ7 = str;
                    break;
                case 10:
                    num = numValueOf3;
                    strJ7 = ((n) z7Var.a).j(z7Var.a());
                    numValueOf3 = num;
                    break;
                case 11:
                    num = numValueOf3;
                    strJ15 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 12:
                    num = numValueOf3;
                    strJ8 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 13:
                    num = numValueOf3;
                    strJ9 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 14:
                    num = numValueOf3;
                    strJ10 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 15:
                    num = numValueOf3;
                    strJ11 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 16:
                    num = numValueOf3;
                    strJ12 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 17:
                    num = numValueOf3;
                    strJ13 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                case 18:
                    num = numValueOf3;
                    strJ14 = ((n) z7Var.a).j(z7Var.a());
                    strJ7 = str;
                    numValueOf3 = num;
                    break;
                default:
                    num = numValueOf3;
                    int i = z7Var.h;
                    Object objD = s1.a(i).d(z7Var);
                    if (w5Var == null) {
                        nVar = new n();
                        w5Var = new w5(nVar);
                    }
                    try {
                        s1.a(i).e(w5Var, iG, objD);
                        strJ7 = str;
                        numValueOf3 = num;
                    } catch (IOException unused) {
                        throw new AssertionError();
                    }
                    break;
            }
        }
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        f fVar = (f) obj;
        String str = fVar.f7896d;
        if (str != null) {
            q7.h.e(w5Var, 1, str);
        }
        String str2 = fVar.f7897e;
        if (str2 != null) {
            q7.h.e(w5Var, 2, str2);
        }
        String str3 = fVar.f7898f;
        if (str3 != null) {
            q7.h.e(w5Var, 3, str3);
        }
        String str4 = fVar.f7899g;
        if (str4 != null) {
            q7.h.e(w5Var, 4, str4);
        }
        String str5 = fVar.h;
        if (str5 != null) {
            q7.h.e(w5Var, 5, str5);
        }
        String str6 = fVar.i;
        if (str6 != null) {
            q7.h.e(w5Var, 6, str6);
        }
        Integer num = fVar.j;
        if (num != null) {
            q7.b.e(w5Var, 7, num);
        }
        Integer num2 = fVar.k;
        if (num2 != null) {
            q7.b.e(w5Var, 8, num2);
        }
        Integer num3 = fVar.l;
        if (num3 != null) {
            q7.b.e(w5Var, 9, num3);
        }
        String str7 = fVar.m;
        if (str7 != null) {
            q7.h.e(w5Var, 10, str7);
        }
        String str8 = fVar.n;
        if (str8 != null) {
            q7.h.e(w5Var, 11, str8);
        }
        String str9 = fVar.o;
        if (str9 != null) {
            q7.h.e(w5Var, 12, str9);
        }
        String str10 = fVar.p;
        if (str10 != null) {
            q7.h.e(w5Var, 13, str10);
        }
        String str11 = fVar.q;
        if (str11 != null) {
            q7.h.e(w5Var, 14, str11);
        }
        String str12 = fVar.r;
        if (str12 != null) {
            q7.h.e(w5Var, 15, str12);
        }
        String str13 = fVar.s;
        if (str13 != null) {
            q7.h.e(w5Var, 16, str13);
        }
        String str14 = fVar.t;
        if (str14 != null) {
            q7.h.e(w5Var, 17, str14);
        }
        String str15 = fVar.u;
        if (str15 != null) {
            q7.h.e(w5Var, 18, str15);
        }
        w5Var.b(fVar.c());
    }
}
