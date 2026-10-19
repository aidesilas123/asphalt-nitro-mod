package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class r extends q7 {
    public r() {
        super(3, y.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        y yVar = (y) obj;
        f fVar = yVar.f8022d;
        int iA = fVar != null ? f.c.a(1, fVar) : 0;
        r5 r5Var = yVar.f8023e;
        int iA2 = iA + (r5Var != null ? r5.c.a(2, r5Var) : 0);
        p6 p6Var = yVar.f8024f;
        return yVar.c().f() + iA2 + (p6Var != null ? p6.c.a(3, p6Var) : 0);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        long jD = z7Var.d();
        n nVar = null;
        f fVar = null;
        r5 r5Var = null;
        p6 p6Var = null;
        w5 w5Var = null;
        while (true) {
            int iG = z7Var.g();
            if (iG == -1) {
                break;
            }
            if (iG == 1) {
                fVar = (f) f.c.d(z7Var);
            } else if (iG == 2) {
                r5Var = (r5) r5.c.d(z7Var);
            } else if (iG != 3) {
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
                p6Var = (p6) p6.c.d(z7Var);
            }
        }
        z7Var.c(jD);
        return new y(fVar, r5Var, p6Var, nVar != null ? new c1(nVar.clone().k()) : c1.b);
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        y yVar = (y) obj;
        f fVar = yVar.f8022d;
        if (fVar != null) {
            f.c.e(w5Var, 1, fVar);
        }
        r5 r5Var = yVar.f8023e;
        if (r5Var != null) {
            r5.c.e(w5Var, 2, r5Var);
        }
        p6 p6Var = yVar.f8024f;
        if (p6Var != null) {
            p6.c.e(w5Var, 3, p6Var);
        }
        w5Var.b(yVar.c());
    }
}
