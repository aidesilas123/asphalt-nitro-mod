package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class ab {
    private boolean EV;
    private final int Fq;
    private boolean Fr;
    private boolean Fs;
    private final ag Fo = new ag(0);
    private long Ft = C.TIME_UNSET;
    private long Fu = C.TIME_UNSET;
    private long fH = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y CB = new com.applovin.exoplayer2.l.y();

    ab(int i) {
        this.Fq = i;
    }

    private int Y(com.applovin.exoplayer2.e.i iVar) {
        this.CB.I(ai.ada);
        this.EV = true;
        iVar.ic();
        return 0;
    }

    private int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        int iMin = (int) Math.min(this.Fq, iVar.mo28if());
        long j = 0;
        if (iVar.ie() != j) {
            uVar.uc = j;
            return 1;
        }
        this.CB.U(iMin);
        iVar.ic();
        iVar.c(this.CB.hO(), 0, iMin);
        this.Ft = q(this.CB, i);
        this.Fr = true;
        return 0;
    }

    private int c(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        long jMo28if = iVar.mo28if();
        int iMin = (int) Math.min(this.Fq, jMo28if);
        long j = jMo28if - ((long) iMin);
        if (iVar.ie() != j) {
            uVar.uc = j;
            return 1;
        }
        this.CB.U(iMin);
        iVar.ic();
        iVar.c(this.CB.hO(), 0, iMin);
        this.Fu = r(this.CB, i);
        this.Fs = true;
        return 0;
    }

    private long q(com.applovin.exoplayer2.l.y yVar, int i) {
        int iPk = yVar.pk();
        for (int iIl = yVar.il(); iIl < iPk; iIl++) {
            if (yVar.hO()[iIl] == 71) {
                long jF = ae.f(yVar, iIl, i);
                if (jF != C.TIME_UNSET) {
                    return jF;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private long r(com.applovin.exoplayer2.l.y yVar, int i) {
        int iIl = yVar.il();
        int iPk = yVar.pk();
        for (int i2 = iPk - 188; i2 >= iIl; i2--) {
            if (ae.a(yVar.hO(), iIl, iPk, i2)) {
                long jF = ae.f(yVar, i2, i);
                if (jF != C.TIME_UNSET) {
                    return jF;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        if (i <= 0) {
            return Y(iVar);
        }
        if (!this.Fs) {
            return c(iVar, uVar, i);
        }
        if (this.Fu == C.TIME_UNSET) {
            return Y(iVar);
        }
        if (!this.Fr) {
            return b(iVar, uVar, i);
        }
        long j = this.Ft;
        if (j == C.TIME_UNSET) {
            return Y(iVar);
        }
        long jBr = this.Fo.br(this.Fu) - this.Fo.br(j);
        this.fH = jBr;
        if (jBr < 0) {
            com.applovin.exoplayer2.l.q.h("TsDurationReader", "Invalid duration: " + this.fH + ". Using TIME_UNSET instead.");
            this.fH = C.TIME_UNSET;
        }
        return Y(iVar);
    }

    public long dd() {
        return this.fH;
    }

    public boolean jt() {
        return this.EV;
    }

    public ag jv() {
        return this.Fo;
    }
}
