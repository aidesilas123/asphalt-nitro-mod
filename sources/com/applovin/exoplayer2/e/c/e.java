package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.c.d;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;

/* JADX INFO: loaded from: classes.dex */
final class e extends d {
    private boolean vJ;
    private final y wm;
    private final y wn;
    private int wo;
    private boolean wp;
    private int wq;

    public e(x xVar) {
        super(xVar);
        this.wm = new y(v.abK);
        this.wn = new y(4);
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) throws ai {
        int iPo = yVar.po();
        long jPu = j + (((long) yVar.pu()) * 1000);
        if (iPo == 0 && !this.vJ) {
            y yVar2 = new y(new byte[yVar.pj()]);
            yVar.r(yVar2.hO(), 0, yVar.pj());
            com.applovin.exoplayer2.m.a aVarAs = com.applovin.exoplayer2.m.a.as(yVar2);
            this.wo = aVarAs.wo;
            this.wl.j(new v.a().m("video/avc").k(aVarAs.dw).J(aVarAs.dE).K(aVarAs.height).e(aVarAs.acy).c(aVarAs.dB).bT());
            this.vJ = true;
            return false;
        }
        if (iPo != 1 || !this.vJ) {
            return false;
        }
        int i = this.wq == 1 ? 1 : 0;
        if (!this.wp && i == 0) {
            return false;
        }
        byte[] bArrHO = this.wn.hO();
        bArrHO[0] = 0;
        bArrHO[1] = 0;
        bArrHO[2] = 0;
        int i2 = 4 - this.wo;
        int i3 = 0;
        while (yVar.pj() > 0) {
            yVar.r(this.wn.hO(), i2, this.wo);
            this.wn.fx(0);
            int iPD = this.wn.pD();
            this.wm.fx(0);
            this.wl.c(this.wm, 4);
            this.wl.c(yVar, iPD);
            i3 = i3 + 4 + iPD;
        }
        this.wl.a(jPu, i, i3, 0, null);
        this.wp = true;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean e(y yVar) throws d.a {
        int iPo = yVar.po();
        int i = (iPo >> 4) & 15;
        int i2 = iPo & 15;
        if (i2 == 7) {
            this.wq = i;
            return i != 5;
        }
        throw new d.a("Video format not supported: " + i2);
    }
}
