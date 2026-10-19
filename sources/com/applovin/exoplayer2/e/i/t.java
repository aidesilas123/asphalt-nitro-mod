package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class t implements ad {
    private int Cu;
    private final j EL;
    private boolean EO;
    private boolean EP;
    private boolean EQ;
    private int ER;
    private int ES;
    private boolean ET;
    private long rJ;
    private ag zS;
    private final com.applovin.exoplayer2.l.x EN = new com.applovin.exoplayer2.l.x(new byte[10]);
    private int Z = 0;

    public t(j jVar) {
        this.EL = jVar;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, @Nullable byte[] bArr, int i) {
        int iMin = Math.min(yVar.pj(), i - this.Cu);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            yVar.fz(iMin);
        } else {
            yVar.r(bArr, this.Cu, iMin);
        }
        int i2 = this.Cu + iMin;
        this.Cu = i2;
        return i2 == i;
    }

    private boolean jr() {
        this.EN.fx(0);
        int iBQ = this.EN.bQ(24);
        if (iBQ != 1) {
            com.applovin.exoplayer2.l.q.h("PesReader", "Unexpected start code prefix: " + iBQ);
            this.ES = -1;
            return false;
        }
        this.EN.bR(8);
        int iBQ2 = this.EN.bQ(16);
        this.EN.bR(5);
        this.ET = this.EN.ik();
        this.EN.bR(2);
        this.EO = this.EN.ik();
        this.EP = this.EN.ik();
        this.EN.bR(6);
        int iBQ3 = this.EN.bQ(8);
        this.ER = iBQ3;
        if (iBQ2 == 0) {
            this.ES = -1;
        } else {
            int i = ((iBQ2 + 6) - 9) - iBQ3;
            this.ES = i;
            if (i < 0) {
                com.applovin.exoplayer2.l.q.h("PesReader", "Found negative packet payload size: " + this.ES);
                this.ES = -1;
            }
        }
        return true;
    }

    private void js() {
        this.EN.fx(0);
        this.rJ = C.TIME_UNSET;
        if (this.EO) {
            this.EN.bR(4);
            long jBQ = ((long) this.EN.bQ(3)) << 30;
            this.EN.bR(1);
            long jBQ2 = jBQ | ((long) (this.EN.bQ(15) << 15));
            this.EN.bR(1);
            long jBQ3 = jBQ2 | ((long) this.EN.bQ(15));
            this.EN.bR(1);
            if (!this.EQ && this.EP) {
                this.EN.bR(4);
                long jBQ4 = ((long) this.EN.bQ(3)) << 30;
                this.EN.bR(1);
                long jBQ5 = jBQ4 | ((long) (this.EN.bQ(15) << 15));
                this.EN.bR(1);
                long jBQ6 = jBQ5 | ((long) this.EN.bQ(15));
                this.EN.bR(1);
                this.zS.br(jBQ6);
                this.EQ = true;
            }
            this.rJ = this.zS.br(jBQ3);
        }
    }

    private void v(int i) {
        this.Z = i;
        this.Cu = 0;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.zS = agVar;
        this.EL.a(jVar, dVar);
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public final void jb() {
        this.Z = 0;
        this.Cu = 0;
        this.EQ = false;
        this.EL.jb();
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public final void p(com.applovin.exoplayer2.l.y yVar, int i) throws ai {
        com.applovin.exoplayer2.l.a.N(this.zS);
        if ((i & 1) != 0) {
            int i2 = this.Z;
            if (i2 != 0 && i2 != 1) {
                if (i2 == 2) {
                    com.applovin.exoplayer2.l.q.h("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.ES != -1) {
                        com.applovin.exoplayer2.l.q.h("PesReader", "Unexpected start indicator: expected " + this.ES + " more bytes");
                    }
                    this.EL.jc();
                }
            }
            v(1);
        }
        while (yVar.pj() > 0) {
            int i3 = this.Z;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        if (a(yVar, this.EN.tf, Math.min(10, this.ER)) && a(yVar, (byte[]) null, this.ER)) {
                            js();
                            i |= this.ET ? 4 : 0;
                            this.EL.e(this.rJ, i);
                            v(3);
                        }
                    } else {
                        if (i3 != 3) {
                            throw new IllegalStateException();
                        }
                        int iPj = yVar.pj();
                        int i4 = this.ES;
                        int i5 = i4 != -1 ? iPj - i4 : 0;
                        if (i5 > 0) {
                            iPj -= i5;
                            yVar.fA(yVar.il() + iPj);
                        }
                        this.EL.K(yVar);
                        int i6 = this.ES;
                        if (i6 != -1) {
                            int i7 = i6 - iPj;
                            this.ES = i7;
                            if (i7 == 0) {
                                this.EL.jc();
                                v(1);
                            }
                        }
                    }
                } else if (a(yVar, this.EN.tf, 9)) {
                    v(jr() ? 2 : 0);
                }
            } else {
                yVar.fz(yVar.pj());
            }
        }
    }
}
