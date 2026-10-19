package com.tapjoy.internal;

import android.graphics.Point;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.o2;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public final class v4 implements x3 {
    public static Point b(b4 b4Var) throws IOException {
        ((k0) b4Var).I(3);
        Point point = null;
        while (b4Var.e()) {
            if (TypedValues.CycleType.S_WAVE_OFFSET.equals(b4Var.o())) {
                k0 k0Var = (k0) b4Var;
                k0Var.I(3);
                int iK = 0;
                int iK2 = 0;
                while (b4Var.e()) {
                    String strO = b4Var.o();
                    if ("x".equals(strO)) {
                        iK = b4Var.k();
                    } else if ("y".equals(strO)) {
                        iK2 = b4Var.k();
                    } else {
                        b4Var.u();
                    }
                }
                k0Var.I(4);
                point = new Point(iK, iK2);
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return point;
    }

    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        ((k0) b4Var).I(3);
        n3 n3Var = null;
        Point pointB = null;
        Point pointB2 = null;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("image".equals(strO)) {
                String strP = b4Var.p();
                if (!TextUtils.isEmpty(strP)) {
                    n3Var = new n3(new URL(strP));
                }
            } else if (o2.h.C.equals(strO)) {
                pointB = b(b4Var);
            } else if (o2.h.D.equals(strO)) {
                pointB2 = b(b4Var);
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return new g8(n3Var, pointB, pointB2);
    }
}
