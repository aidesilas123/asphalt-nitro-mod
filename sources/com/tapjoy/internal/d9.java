package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class d9 implements x3 {
    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        ((k0) b4Var).I(3);
        String strP = "";
        String strP2 = strP;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("campaign_id".equals(strO)) {
                strP = b4Var.v() ? "" : b4Var.p();
            } else if ("product_id".equals(strO)) {
                strP2 = b4Var.v() ? "" : b4Var.p();
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return new o9(strP, strP2);
    }
}
