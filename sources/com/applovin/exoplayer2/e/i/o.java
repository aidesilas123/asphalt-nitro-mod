package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class o implements j {
    private int Ai;
    private boolean CY;
    private com.applovin.exoplayer2.e.x wl;
    private int xI;
    private final com.applovin.exoplayer2.l.y Et = new com.applovin.exoplayer2.l.y(10);
    private long Da = C.TIME_UNSET;

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.N(this.wl);
        if (this.CY) {
            int iPj = yVar.pj();
            int i = this.xI;
            if (i < 10) {
                int iMin = Math.min(iPj, 10 - i);
                System.arraycopy(yVar.hO(), yVar.il(), this.Et.hO(), this.xI, iMin);
                if (this.xI + iMin == 10) {
                    this.Et.fx(0);
                    if (73 != this.Et.po() || 68 != this.Et.po() || 51 != this.Et.po()) {
                        com.applovin.exoplayer2.l.q.h("Id3Reader", "Discarding invalid ID3 tag");
                        this.CY = false;
                        return;
                    } else {
                        this.Et.fz(3);
                        this.Ai = this.Et.pC() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iPj, this.Ai - this.xI);
            this.wl.c(yVar, iMin2);
            this.xI += iMin2;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.jy();
        com.applovin.exoplayer2.e.x xVarY = jVar.y(dVar.jz(), 5);
        this.wl = xVarY;
        xVarY.j(new v.a().g(dVar.jA()).m(MimeTypes.APPLICATION_ID3).bT());
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void e(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.CY = true;
        if (j != C.TIME_UNSET) {
            this.Da = j;
        }
        this.Ai = 0;
        this.xI = 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jb() {
        this.CY = false;
        this.Da = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
        int i;
        com.applovin.exoplayer2.l.a.N(this.wl);
        if (this.CY && (i = this.Ai) != 0 && this.xI == i) {
            long j = this.Da;
            if (j != C.TIME_UNSET) {
                this.wl.a(j, 1, i, 0, null);
            }
            this.CY = false;
        }
    }
}
