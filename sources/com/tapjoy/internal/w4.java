package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class w4 extends q7 {
    public w4() {
        super(1, Integer.class);
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        if (iIntValue >= 0) {
            return w5.a(iIntValue);
        }
        return 10;
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) {
        return Integer.valueOf(z7Var.j());
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        if (iIntValue >= 0) {
            w5Var.e(iIntValue);
        } else {
            w5Var.f(iIntValue);
        }
    }
}
