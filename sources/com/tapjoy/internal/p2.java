package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class p2 extends q7 {
    public p2() {
        super(2, Double.class);
    }

    @Override // com.tapjoy.internal.q7
    public final /* bridge */ /* synthetic */ int b(Object obj) {
        return 8;
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) {
        return Double.valueOf(Double.longBitsToDouble(z7Var.i()));
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        w5Var.d(Double.doubleToLongBits(((Double) obj).doubleValue()));
    }
}
