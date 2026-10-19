package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class j4 extends q7 {
    public j4() {
        super(1, Boolean.class);
    }

    @Override // com.tapjoy.internal.q7
    public final /* bridge */ /* synthetic */ int b(Object obj) {
        return 1;
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws IOException {
        int iJ = z7Var.j();
        if (iJ == 0) {
            return Boolean.FALSE;
        }
        if (iJ == 1) {
            return Boolean.TRUE;
        }
        throw new IOException(String.format("Invalid boolean value 0x%02x", Integer.valueOf(iJ)));
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        w5Var.e(((Boolean) obj).booleanValue() ? 1 : 0);
    }
}
