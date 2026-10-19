package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.b;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class b implements j {
    private int Ai;
    private final com.applovin.exoplayer2.l.x Cr;
    private final com.applovin.exoplayer2.l.y Cs;
    private String Ct;
    private int Cu;
    private boolean Cv;
    private long Cw;
    private int Z;
    private com.applovin.exoplayer2.v dU;

    @Nullable
    private final String dq;
    private long rJ;
    private com.applovin.exoplayer2.e.x wl;

    public b() {
        this(null);
    }

    public b(@Nullable String str) {
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(new byte[128]);
        this.Cr = xVar;
        this.Cs = new com.applovin.exoplayer2.l.y(xVar.tf);
        this.Z = 0;
        this.rJ = C.TIME_UNSET;
        this.dq = str;
    }

    private boolean L(com.applovin.exoplayer2.l.y yVar) {
        while (true) {
            if (yVar.pj() <= 0) {
                return false;
            }
            if (this.Cv) {
                int iPo = yVar.po();
                if (iPo == 119) {
                    this.Cv = false;
                    return true;
                }
                this.Cv = iPo == 11;
            } else {
                this.Cv = yVar.po() == 11;
            }
        }
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int iMin = Math.min(yVar.pj(), i - this.Cu);
        yVar.r(bArr, this.Cu, iMin);
        int i2 = this.Cu + iMin;
        this.Cu = i2;
        return i2 == i;
    }

    private void jd() {
        this.Cr.fx(0);
        b.a aVarC = com.applovin.exoplayer2.b.b.c(this.Cr);
        com.applovin.exoplayer2.v vVar = this.dU;
        if (vVar == null || aVarC.dL != vVar.dL || aVarC.dM != vVar.dM || !ai.r(aVarC.eg, vVar.dz)) {
            com.applovin.exoplayer2.v vVarBT = new v.a().g(this.Ct).m(aVarC.eg).N(aVarC.dL).O(aVarC.dM).j(this.dq).bT();
            this.dU = vVarBT;
            this.wl.j(vVarBT);
        }
        this.Ai = aVarC.jz;
        this.Cw = (((long) aVarC.jA) * 1000000) / ((long) this.dU.dM);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.N(this.wl);
        while (yVar.pj() > 0) {
            int i = this.Z;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = Math.min(yVar.pj(), this.Ai - this.Cu);
                        this.wl.c(yVar, iMin);
                        int i2 = this.Cu + iMin;
                        this.Cu = i2;
                        int i3 = this.Ai;
                        if (i2 == i3) {
                            long j = this.rJ;
                            if (j != C.TIME_UNSET) {
                                this.wl.a(j, 1, i3, 0, null);
                                this.rJ += this.Cw;
                            }
                            this.Z = 0;
                        }
                    }
                } else if (a(yVar, this.Cs.hO(), 128)) {
                    jd();
                    this.Cs.fx(0);
                    this.wl.c(this.Cs, 128);
                    this.Z = 2;
                }
            } else if (L(yVar)) {
                this.Z = 1;
                this.Cs.hO()[0] = Ascii.VT;
                this.Cs.hO()[1] = 119;
                this.Cu = 2;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.jy();
        this.Ct = dVar.jA();
        this.wl = jVar.y(dVar.jz(), 1);
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
        this.Cu = 0;
        this.Cv = false;
        this.rJ = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
