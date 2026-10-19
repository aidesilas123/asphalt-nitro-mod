package com.applovin.exoplayer2.i.i;

import android.text.TextUtils;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g extends com.applovin.exoplayer2.i.d {
    private final y TJ;
    private final c TK;

    public g() {
        super("WebvttDecoder");
        this.TJ = new y();
        this.TK = new c();
    }

    private static int an(y yVar) {
        int i = -1;
        int iIl = 0;
        while (i == -1) {
            iIl = yVar.il();
            String strPJ = yVar.pJ();
            i = strPJ == null ? 0 : "STYLE".equals(strPJ) ? 2 : strPJ.startsWith("NOTE") ? 1 : 3;
        }
        yVar.fx(iIl);
        return i;
    }

    private static void ao(y yVar) {
        while (!TextUtils.isEmpty(yVar.pJ())) {
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f c(byte[] bArr, int i, boolean z) throws com.applovin.exoplayer2.i.h {
        e eVarA;
        this.TJ.l(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            h.ap(this.TJ);
            while (!TextUtils.isEmpty(this.TJ.pJ())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iAn = an(this.TJ);
                if (iAn == 0) {
                    return new i(arrayList2);
                }
                if (iAn == 1) {
                    ao(this.TJ);
                } else if (iAn == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new com.applovin.exoplayer2.i.h("A style block was found after the first cue.");
                    }
                    this.TJ.pJ();
                    arrayList.addAll(this.TK.ah(this.TJ));
                } else if (iAn == 3 && (eVarA = f.a(this.TJ, arrayList)) != null) {
                    arrayList2.add(eVarA);
                }
            }
        } catch (ai e2) {
            throw new com.applovin.exoplayer2.i.h(e2);
        }
    }
}
