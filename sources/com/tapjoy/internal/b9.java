package com.tapjoy.internal;

import android.graphics.Point;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class b9 implements x3 {
    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        Point point = new Point();
        ((k0) b4Var).I(3);
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("x".equals(strO)) {
                point.x = b4Var.k();
            } else if ("y".equals(strO)) {
                point.y = b4Var.k();
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return point;
    }
}
