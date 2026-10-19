package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class f5 extends q7 {
    public f5() {
        super(3, r5.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        r5 r5Var = (r5) obj;
        String str = r5Var.f7977d;
        int iA = str != null ? q7.h.a(1, str) : 0;
        Integer num = r5Var.f7978e;
        int iA2 = iA + (num != null ? q7.b.a(2, num) : 0);
        String str2 = r5Var.f7979f;
        int iA3 = iA2 + (str2 != null ? q7.h.a(4, str2) : 0);
        String str3 = r5Var.f7980g;
        return r5Var.c().f() + iA3 + (str3 != null ? q7.h.a(5, str3) : 0);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        long jD = z7Var.d();
        n nVar = null;
        w5 w5Var = null;
        String strJ = null;
        Integer numValueOf = null;
        String strJ2 = null;
        String strJ3 = null;
        while (true) {
            int iG = z7Var.g();
            if (iG == -1) {
                break;
            }
            if (iG == 1) {
                strJ = ((n) z7Var.a).j(z7Var.a());
            } else if (iG == 2) {
                numValueOf = Integer.valueOf(z7Var.j());
            } else if (iG == 3) {
                ((n) z7Var.a).j(z7Var.a());
            } else if (iG == 4) {
                strJ2 = ((n) z7Var.a).j(z7Var.a());
            } else if (iG != 5) {
                int i = z7Var.h;
                Object objD = s1.a(i).d(z7Var);
                if (w5Var == null) {
                    nVar = new n();
                    w5Var = new w5(nVar);
                }
                try {
                    s1.a(i).e(w5Var, iG, objD);
                } catch (IOException unused) {
                    throw new AssertionError();
                }
            } else {
                strJ3 = ((n) z7Var.a).j(z7Var.a());
            }
        }
        z7Var.c(jD);
        return new r5(strJ, numValueOf, strJ2, strJ3, nVar != null ? new c1(nVar.clone().k()) : c1.b);
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        r5 r5Var = (r5) obj;
        String str = r5Var.f7977d;
        if (str != null) {
            q7.h.e(w5Var, 1, str);
        }
        Integer num = r5Var.f7978e;
        if (num != null) {
            q7.b.e(w5Var, 2, num);
        }
        String str2 = r5Var.f7979f;
        if (str2 != null) {
            q7.h.e(w5Var, 4, str2);
        }
        String str3 = r5Var.f7980g;
        if (str3 != null) {
            q7.h.e(w5Var, 5, str3);
        }
        w5Var.b(r5Var.c());
    }
}
