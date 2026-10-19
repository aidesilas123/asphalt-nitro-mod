package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class k4 implements x3 {
    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        ((k0) b4Var).I(3);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        int iK = 1;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("id".equals(strO)) {
                strP = b4Var.p();
            } else if ("name".equals(strO)) {
                strP2 = b4Var.p();
            } else if ("quantity".equals(strO)) {
                iK = b4Var.k();
            } else if ("token".equals(strO)) {
                strP3 = b4Var.p();
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return new x4(strP, strP2, iK, strP3);
    }
}
