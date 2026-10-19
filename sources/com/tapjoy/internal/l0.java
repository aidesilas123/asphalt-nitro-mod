package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 extends q7 {
    public l0() {
        super(3, s0.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        s0 s0Var = (s0) obj;
        return s0Var.c().f() + b0.c.c().a(1, s0Var.f7988d);
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
                j6VarA.add((b0) b0.c.d(z7Var));
            }
        }
        z7Var.c(jD);
        return new s0(j6VarA, nVar != null ? new c1(nVar.clone().k()) : c1.b);
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        s0 s0Var = (s0) obj;
        b0.c.c().e(w5Var, 1, s0Var.f7988d);
        w5Var.b(s0Var.c());
    }
}
