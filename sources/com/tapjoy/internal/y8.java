package com.tapjoy.internal;

import android.graphics.Rect;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class y8 implements x3 {
    @Override // com.tapjoy.internal.x3
    public final Object a(b4 b4Var) throws IOException {
        ((k0) b4Var).I(3);
        Rect rect = null;
        String strP = null;
        String strQ = null;
        String strQ2 = null;
        b bVarA = null;
        String strP2 = "";
        boolean zI = false;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if (TtmlNode.TAG_REGION.equals(strO)) {
                rect = (Rect) g.b.a(b4Var);
            } else if ("value".equals(strO)) {
                strP = b4Var.p();
            } else if ("dismiss".equals(strO)) {
                zI = b4Var.i();
            } else if ("url".equals(strO)) {
                strP2 = b4Var.p();
            } else if ("redirect_url".equals(strO)) {
                strQ = b4Var.q();
            } else if ("ad_content".equals(strO)) {
                strQ2 = b4Var.q();
            } else if (b.a(strO)) {
                bVarA = b.a(strO, b4Var);
            } else {
                b4Var.u();
            }
        }
        ((k0) b4Var).I(4);
        return new j9(rect, strP, zI, strP2, strQ, strQ2, bVarA);
    }
}
