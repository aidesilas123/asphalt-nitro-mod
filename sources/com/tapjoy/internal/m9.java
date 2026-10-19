package com.tapjoy.internal;

import android.graphics.Rect;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class m9 implements x3 {
    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        Rect rect = new Rect();
        int iB = k.b(b4Var.t());
        if (iB == 0) {
            k0 k0Var = (k0) b4Var;
            k0Var.I(1);
            rect.left = b4Var.k();
            rect.top = b4Var.k();
            rect.right = b4Var.k();
            rect.bottom = b4Var.k();
            while (b4Var.e()) {
                b4Var.u();
            }
            k0Var.I(2);
        } else {
            if (iB != 2) {
                throw new IllegalStateException("Unexpected token: ".concat(f4.a(b4Var.t())));
            }
            k0 k0Var2 = (k0) b4Var;
            k0Var2.I(3);
            while (b4Var.e()) {
                String strO = b4Var.o();
                if ("left".equals(strO)) {
                    rect.left = b4Var.k();
                } else if (ViewHierarchyConstants.DIMENSION_TOP_KEY.equals(strO)) {
                    rect.top = b4Var.k();
                } else if (TtmlNode.RIGHT.equals(strO)) {
                    rect.right = b4Var.k();
                } else if ("bottom".equals(strO)) {
                    rect.bottom = b4Var.k();
                } else {
                    b4Var.u();
                }
            }
            k0Var2.I(4);
        }
        return rect;
    }
}
