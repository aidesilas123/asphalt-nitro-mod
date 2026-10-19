package com.applovin.exoplayer2.g.g;

import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.applovin.exoplayer2.g.g {
    private final y Fk = new y();
    private final x Kr = new x();
    private ag zS;

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(com.applovin.exoplayer2.g.d dVar, ByteBuffer byteBuffer) {
        ag agVar = this.zS;
        if (agVar == null || dVar.dD != agVar.pU()) {
            ag agVar2 = new ag(dVar.rJ);
            this.zS = agVar2;
            agVar2.bs(dVar.rJ - dVar.dD);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.Fk.l(bArrArray, iLimit);
        this.Kr.l(bArrArray, iLimit);
        this.Kr.bR(39);
        long jBQ = (((long) this.Kr.bQ(1)) << 32) | ((long) this.Kr.bQ(32));
        this.Kr.bR(20);
        int iBQ = this.Kr.bQ(12);
        int iBQ2 = this.Kr.bQ(8);
        a.InterfaceC0038a eVar = null;
        this.Fk.fz(14);
        if (iBQ2 == 0) {
            eVar = new e();
        } else if (iBQ2 == 255) {
            eVar = a.a(this.Fk, iBQ, jBQ);
        } else if (iBQ2 == 4) {
            eVar = f.Y(this.Fk);
        } else if (iBQ2 == 5) {
            eVar = d.a(this.Fk, jBQ, this.zS);
        } else if (iBQ2 == 6) {
            eVar = g.b(this.Fk, jBQ, this.zS);
        }
        return eVar == null ? new com.applovin.exoplayer2.g.a(new a.InterfaceC0038a[0]) : new com.applovin.exoplayer2.g.a(eVar);
    }
}
