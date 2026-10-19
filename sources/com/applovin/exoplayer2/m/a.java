package com.applovin.exoplayer2.m;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.l.v;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final float acy;
    public final List<byte[]> dB;
    public final int dE;

    @Nullable
    public final String dw;
    public final int height;
    public final int wo;

    private a(List<byte[]> list, int i, int i2, int i3, float f2, @Nullable String str) {
        this.dB = list;
        this.wo = i;
        this.dE = i2;
        this.height = i3;
        this.acy = f2;
        this.dw = str;
    }

    public static a as(com.applovin.exoplayer2.l.y yVar) throws ai {
        String strI;
        int i;
        float f2;
        try {
            yVar.fz(4);
            int iPo = (yVar.po() & 3) + 1;
            if (iPo == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iPo2 = yVar.po() & 31;
            for (int i2 = 0; i2 < iPo2; i2++) {
                arrayList.add(at(yVar));
            }
            int iPo3 = yVar.po();
            for (int i3 = 0; i3 < iPo3; i3++) {
                arrayList.add(at(yVar));
            }
            int i4 = -1;
            if (iPo2 > 0) {
                v.b bVarN = com.applovin.exoplayer2.l.v.n((byte[]) arrayList.get(0), iPo, ((byte[]) arrayList.get(0)).length);
                int i5 = bVarN.dE;
                int i6 = bVarN.height;
                float f3 = bVarN.acy;
                strI = com.applovin.exoplayer2.l.e.i(bVarN.acv, bVarN.acw, bVarN.acx);
                i4 = i5;
                i = i6;
                f2 = f3;
            } else {
                strI = null;
                i = -1;
                f2 = 1.0f;
            }
            return new a(arrayList, iPo, i4, i, f2, strI);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw ai.c("Error parsing AVC config", e2);
        }
    }

    private static byte[] at(com.applovin.exoplayer2.l.y yVar) {
        int iPp = yVar.pp();
        int iIl = yVar.il();
        yVar.fz(iPp);
        return com.applovin.exoplayer2.l.e.m(yVar.hO(), iIl, iPp);
    }
}
