package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ad;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class h implements j {
    private int Ai;
    private int CV;
    private String Ct;
    private int Cu;
    private long Cw;
    private com.applovin.exoplayer2.v dU;

    @Nullable
    private final String dq;
    private com.applovin.exoplayer2.e.x wl;
    private final com.applovin.exoplayer2.l.y Cs = new com.applovin.exoplayer2.l.y(new byte[18]);
    private int Z = 0;
    private long rJ = C.TIME_UNSET;

    public h(@Nullable String str) {
        this.dq = str;
    }

    private boolean L(com.applovin.exoplayer2.l.y yVar) {
        while (yVar.pj() > 0) {
            int i = this.CV << 8;
            this.CV = i;
            int iPo = i | yVar.po();
            this.CV = iPo;
            if (com.applovin.exoplayer2.b.o.aF(iPo)) {
                byte[] bArrHO = this.Cs.hO();
                int i2 = this.CV;
                bArrHO[0] = (byte) ((i2 >> 24) & 255);
                bArrHO[1] = (byte) ((i2 >> 16) & 255);
                bArrHO[2] = (byte) ((i2 >> 8) & 255);
                bArrHO[3] = (byte) (i2 & 255);
                this.Cu = 4;
                this.CV = 0;
                return true;
            }
        }
        return false;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int iMin = Math.min(yVar.pj(), i - this.Cu);
        yVar.r(bArr, this.Cu, iMin);
        int i2 = this.Cu + iMin;
        this.Cu = i2;
        return i2 == i;
    }

    private void jd() {
        byte[] bArrHO = this.Cs.hO();
        if (this.dU == null) {
            com.applovin.exoplayer2.v vVarA = com.applovin.exoplayer2.b.o.a(bArrHO, this.Ct, this.dq, null);
            this.dU = vVarA;
            this.wl.j(vVarA);
        }
        this.Ai = com.applovin.exoplayer2.b.o.f(bArrHO);
        this.Cw = (int) ((((long) com.applovin.exoplayer2.b.o.e(bArrHO)) * 1000000) / ((long) this.dU.dM));
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.N(this.wl);
        while (yVar.pj() > 0) {
            int i = this.Z;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
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
                } else if (a(yVar, this.Cs.hO(), 18)) {
                    jd();
                    this.Cs.fx(0);
                    this.wl.c(this.Cs, 18);
                    this.Z = 2;
                }
            } else if (L(yVar)) {
                this.Z = 1;
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
        this.CV = 0;
        this.rJ = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
