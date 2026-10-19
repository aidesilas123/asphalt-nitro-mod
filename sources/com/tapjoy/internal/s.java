package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class s extends q7 {
    public s() {
        super(3, b0.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        b0 b0Var = (b0) obj;
        int iA = q7.h.a(1, b0Var.f7862d);
        a6 a6Var = q7.f7969d;
        int iA2 = a6Var.a(2, b0Var.f7863e) + iA;
        Long l = b0Var.f7864f;
        return b0Var.c().f() + iA2 + (l != null ? a6Var.a(3, l) : 0);
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        long jD = z7Var.d();
        String strJ = null;
        Long lValueOf = null;
        n nVar = null;
        w5 w5Var = null;
        Long lValueOf2 = null;
        while (true) {
            int iG = z7Var.g();
            if (iG == -1) {
                break;
            }
            if (iG == 1) {
                strJ = ((n) z7Var.a).j(z7Var.a());
            } else if (iG == 2) {
                lValueOf = Long.valueOf(z7Var.k());
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
                lValueOf2 = Long.valueOf(z7Var.k());
            }
        }
        z7Var.c(jD);
        if (strJ != null && lValueOf != null) {
            return new b0(strJ, lValueOf, lValueOf2, nVar != null ? new c1(nVar.clone().k()) : c1.b);
        }
        i3.a(strJ, "id", lValueOf, "received");
        throw null;
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        b0 b0Var = (b0) obj;
        q7.h.e(w5Var, 1, b0Var.f7862d);
        a6 a6Var = q7.f7969d;
        a6Var.e(w5Var, 2, b0Var.f7863e);
        Long l = b0Var.f7864f;
        if (l != null) {
            a6Var.e(w5Var, 3, l);
        }
        w5Var.b(b0Var.c());
    }
}
