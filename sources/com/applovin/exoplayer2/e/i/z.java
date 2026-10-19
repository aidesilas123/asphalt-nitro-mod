package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class z {
    private final com.applovin.exoplayer2.e.x[] CX;
    private final List<com.applovin.exoplayer2.v> zN;

    public z(List<com.applovin.exoplayer2.v> list) {
        this.zN = list;
        this.CX = new com.applovin.exoplayer2.e.x[list.size()];
    }

    public void a(long j, com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.e.b.a(j, yVar, this.CX);
    }

    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        for (int i = 0; i < this.CX.length; i++) {
            dVar.jy();
            com.applovin.exoplayer2.e.x xVarY = jVar.y(dVar.jz(), 3);
            com.applovin.exoplayer2.v vVar = this.zN.get(i);
            String str = vVar.dz;
            com.applovin.exoplayer2.l.a.checkArgument(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            String strJA = vVar.f4do;
            if (strJA == null) {
                strJA = dVar.jA();
            }
            xVarY.j(new v.a().g(strJA).m(str).E(vVar.dr).j(vVar.dq).S(vVar.dQ).c(vVar.dB).bT());
            this.CX[i] = xVarY;
        }
    }
}
