package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class y1 extends q7 {
    public y1() {
        super(3, k2.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        k2 k2Var = (k2) obj;
        return k2Var.c().f() + q7.h.c().a(1, k2Var.f7932d);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        j6 j6VarA = i3.a();
        long jD = z7Var.d();
        n nVar = null;
        w5 w5Var = null;
        while (true) {
            int iG = z7Var.g();
            if (iG == -1) {
                break;
            }
            if (iG != 1) {
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
                j6VarA.add(((n) z7Var.a).j(z7Var.a()));
            }
        }
        z7Var.c(jD);
        return new k2(j6VarA, nVar != null ? new c1(nVar.clone().k()) : c1.b);
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        k2 k2Var = (k2) obj;
        q7.h.c().e(w5Var, 1, k2Var.f7932d);
        w5Var.b(k2Var.c());
    }
}
