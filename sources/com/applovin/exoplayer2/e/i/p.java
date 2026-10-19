package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class p implements j {
    private int Ai;
    private String Ct;
    private int Cu;
    private long Cw;
    private int EA;
    private boolean EB;
    private long EC;
    private final com.applovin.exoplayer2.l.y Eu;
    private final com.applovin.exoplayer2.l.x Ev;
    private int Ew;
    private boolean Ex;
    private int Ey;
    private int Ez;
    private int Z;
    private int dL;
    private com.applovin.exoplayer2.v dU;

    @Nullable
    private final String dq;

    @Nullable
    private String dw;
    private int js;
    private long rJ;
    private com.applovin.exoplayer2.e.x wl;

    public p(@Nullable String str) {
        this.dq = str;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(1024);
        this.Eu = yVar;
        this.Ev = new com.applovin.exoplayer2.l.x(yVar.hO());
        this.rJ = C.TIME_UNSET;
    }

    private void b(com.applovin.exoplayer2.l.x xVar, int i) {
        int iIl = xVar.il();
        if ((iIl & 7) == 0) {
            this.Eu.fx(iIl >> 3);
        } else {
            xVar.q(this.Eu.hO(), 0, i * 8);
            this.Eu.fx(0);
        }
        this.wl.c(this.Eu, i);
        long j = this.rJ;
        if (j != C.TIME_UNSET) {
            this.wl.a(j, 1, i, 0, null);
            this.rJ += this.Cw;
        }
    }

    private void cA(int i) {
        this.Eu.U(i);
        this.Ev.I(this.Eu.hO());
    }

    private void e(com.applovin.exoplayer2.l.x xVar) throws ai {
        if (!xVar.ik()) {
            this.Ex = true;
            f(xVar);
        } else if (!this.Ex) {
            return;
        }
        if (this.Ey != 0) {
            throw ai.c(null, null);
        }
        if (this.Ez != 0) {
            throw ai.c(null, null);
        }
        b(xVar, i(xVar));
        if (this.EB) {
            xVar.bR((int) this.EC);
        }
    }

    private void f(com.applovin.exoplayer2.l.x xVar) throws ai {
        boolean zIk;
        int iBQ = xVar.bQ(1);
        int iBQ2 = iBQ == 1 ? xVar.bQ(1) : 0;
        this.Ey = iBQ2;
        if (iBQ2 != 0) {
            throw ai.c(null, null);
        }
        if (iBQ == 1) {
            j(xVar);
        }
        if (!xVar.ik()) {
            throw ai.c(null, null);
        }
        this.Ez = xVar.bQ(6);
        int iBQ3 = xVar.bQ(4);
        int iBQ4 = xVar.bQ(3);
        if (iBQ3 != 0 || iBQ4 != 0) {
            throw ai.c(null, null);
        }
        if (iBQ == 0) {
            int iIl = xVar.il();
            int iH = h(xVar);
            xVar.fx(iIl);
            byte[] bArr = new byte[(iH + 7) / 8];
            xVar.q(bArr, 0, iH);
            com.applovin.exoplayer2.v vVarBT = new v.a().g(this.Ct).m(MimeTypes.AUDIO_AAC).k(this.dw).N(this.dL).O(this.js).c(Collections.singletonList(bArr)).j(this.dq).bT();
            if (!vVarBT.equals(this.dU)) {
                this.dU = vVarBT;
                this.Cw = 1024000000 / ((long) vVarBT.dM);
                this.wl.j(vVarBT);
            }
        } else {
            xVar.bR(((int) j(xVar)) - h(xVar));
        }
        g(xVar);
        boolean zIk2 = xVar.ik();
        this.EB = zIk2;
        this.EC = 0L;
        if (zIk2) {
            if (iBQ == 1) {
                this.EC = j(xVar);
            } else {
                do {
                    zIk = xVar.ik();
                    this.EC = (this.EC << 8) + ((long) xVar.bQ(8));
                } while (zIk);
            }
        }
        if (xVar.ik()) {
            xVar.bR(8);
        }
    }

    private void g(com.applovin.exoplayer2.l.x xVar) {
        int iBQ = xVar.bQ(3);
        this.EA = iBQ;
        if (iBQ == 0) {
            xVar.bR(8);
            return;
        }
        if (iBQ == 1) {
            xVar.bR(9);
            return;
        }
        if (iBQ == 3 || iBQ == 4 || iBQ == 5) {
            xVar.bR(6);
        } else {
            if (iBQ != 6 && iBQ != 7) {
                throw new IllegalStateException();
            }
            xVar.bR(1);
        }
    }

    private int h(com.applovin.exoplayer2.l.x xVar) throws ai {
        int iPf = xVar.pf();
        a.C0019a c0019aA = com.applovin.exoplayer2.b.a.a(xVar, true);
        this.dw = c0019aA.dw;
        this.js = c0019aA.js;
        this.dL = c0019aA.dL;
        return iPf - xVar.pf();
    }

    private int i(com.applovin.exoplayer2.l.x xVar) throws ai {
        int iBQ;
        if (this.EA != 0) {
            throw ai.c(null, null);
        }
        int i = 0;
        do {
            iBQ = xVar.bQ(8);
            i += iBQ;
        } while (iBQ == 255);
        return i;
    }

    private static long j(com.applovin.exoplayer2.l.x xVar) {
        return xVar.bQ((xVar.bQ(2) + 1) * 8);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) throws ai {
        com.applovin.exoplayer2.l.a.N(this.wl);
        while (yVar.pj() > 0) {
            int i = this.Z;
            if (i != 0) {
                if (i == 1) {
                    int iPo = yVar.po();
                    if ((iPo & 224) == 224) {
                        this.Ew = iPo;
                        this.Z = 2;
                    } else if (iPo != 86) {
                        this.Z = 0;
                    }
                } else if (i == 2) {
                    int iPo2 = ((this.Ew & (-225)) << 8) | yVar.po();
                    this.Ai = iPo2;
                    if (iPo2 > this.Eu.hO().length) {
                        cA(this.Ai);
                    }
                    this.Cu = 0;
                    this.Z = 3;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(yVar.pj(), this.Ai - this.Cu);
                    yVar.r(this.Ev.tf, this.Cu, iMin);
                    int i2 = this.Cu + iMin;
                    this.Cu = i2;
                    if (i2 == this.Ai) {
                        this.Ev.fx(0);
                        e(this.Ev);
                        this.Z = 0;
                    }
                }
            } else if (yVar.po() == 86) {
                this.Z = 1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.jy();
        this.wl = jVar.y(dVar.jz(), 1);
        this.Ct = dVar.jA();
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void e(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.rJ = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jb() {
        this.Z = 0;
        this.rJ = C.TIME_UNSET;
        this.Ex = false;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
