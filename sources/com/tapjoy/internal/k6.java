package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class k6 extends q7 {
    public k6() {
        super(1, Long.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        return w5.a(((Long) obj).longValue());
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) {
        return Long.valueOf(z7Var.k());
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        w5Var.f(((Long) obj).longValue());
    }
}
