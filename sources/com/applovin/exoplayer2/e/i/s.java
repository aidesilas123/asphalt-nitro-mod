package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class s implements x {
    private com.applovin.exoplayer2.v dU;
    private com.applovin.exoplayer2.e.x wl;
    private ag zS;

    public s(String str) {
        this.dU = new v.a().m(str).bT();
    }

    private void io() {
        com.applovin.exoplayer2.l.a.N(this.zS);
        ai.R(this.wl);
    }

    @Override // com.applovin.exoplayer2.e.i.x
    public void K(com.applovin.exoplayer2.l.y yVar) {
        io();
        long jPT = this.zS.pT();
        long jPU = this.zS.pU();
        if (jPT == C.TIME_UNSET || jPU == C.TIME_UNSET) {
            return;
        }
        com.applovin.exoplayer2.v vVar = this.dU;
        if (jPU != vVar.dD) {
            com.applovin.exoplayer2.v vVarBT = vVar.bR().p(jPU).bT();
            this.dU = vVarBT;
            this.wl.j(vVarBT);
        }
        int iPj = yVar.pj();
        this.wl.c(yVar, iPj);
        this.wl.a(jPT, 1, iPj, 0, null);
    }

    @Override // com.applovin.exoplayer2.e.i.x
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.zS = agVar;
        dVar.jy();
        com.applovin.exoplayer2.e.x xVarY = jVar.y(dVar.jz(), 5);
        this.wl = xVarY;
        xVarY.j(this.dU);
    }
}
