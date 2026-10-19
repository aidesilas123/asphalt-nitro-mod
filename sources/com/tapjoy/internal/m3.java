package com.tapjoy.internal;

import java.io.EOFException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes4.dex */
public final class m3 extends q7 {
    public m3() {
        super(3, c1.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        return ((c1) obj).f();
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws ProtocolException, EOFException {
        long jA = z7Var.a();
        n nVar = (n) z7Var.a;
        nVar.getClass();
        return new c1(nVar.g(jA));
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        w5Var.b((c1) obj);
    }
}
