package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.c;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class d implements j {
    private int Ai;
    private final com.applovin.exoplayer2.l.x Cr;
    private final com.applovin.exoplayer2.l.y Cs;
    private String Ct;
    private int Cu;
    private long Cw;
    private boolean Cy;
    private boolean Cz;
    private int Z;
    private com.applovin.exoplayer2.v dU;

    @Nullable
    private final String dq;
    private long rJ;
    private com.applovin.exoplayer2.e.x wl;

    public d() {
        this(null);
    }

    public d(@Nullable String str) {
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(new byte[16]);
        this.Cr = xVar;
        this.Cs = new com.applovin.exoplayer2.l.y(xVar.tf);
        this.Z = 0;
        this.Cu = 0;
        this.Cy = false;
        this.Cz = false;
        this.rJ = C.TIME_UNSET;
        this.dq = str;
    }

    private boolean L(com.applovin.exoplayer2.l.y yVar) {
        int iPo;
        while (true) {
            if (yVar.pj() <= 0) {
                return false;
            }
            if (this.Cy) {
                iPo = yVar.po();
                this.Cy = iPo == 172;
                if (iPo == 64 || iPo == 65) {
                    break;
                }
            } else {
                this.Cy = yVar.po() == 172;
            }
        }
        this.Cz = iPo == 65;
        return true;
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
        c.a aVarD = com.applovin.exoplayer2.b.c.d(this.Cr);
        com.applovin.exoplayer2.v vVar = this.dU;
        if (vVar == null || aVarD.dL != vVar.dL || aVarD.dM != vVar.dM || !"audio/ac4".equals(vVar.dz)) {
            com.applovin.exoplayer2.v vVarBT = new v.a().g(this.Ct).m("audio/ac4").N(aVarD.dL).O(aVarD.dM).j(this.dq).bT();
            this.dU = vVarBT;
            this.wl.j(vVarBT);
        }
        this.Ai = aVarD.jz;
        this.Cw = (((long) aVarD.jA) * 1000000) / ((long) this.dU.dM);
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
                } else if (a(yVar, this.Cs.hO(), 16)) {
                    jd();
                    this.Cs.fx(0);
                    this.wl.c(this.Cs, 16);
                    this.Z = 2;
                }
            } else if (L(yVar)) {
                this.Z = 1;
                this.Cs.hO()[0] = -84;
                this.Cs.hO()[1] = (byte) (this.Cz ? 65 : 64);
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
        this.Cy = false;
        this.Cz = false;
        this.rJ = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
