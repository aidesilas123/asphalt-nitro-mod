package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class q implements j {
    private String Ct;
    private long Dj;
    private final com.applovin.exoplayer2.l.y ED;
    private final r.a EE;
    private int EF;
    private boolean EG;
    private int Z;

    @Nullable
    private final String dq;
    private int jz;
    private long rJ;
    private boolean vJ;
    private com.applovin.exoplayer2.e.x wl;

    public q() {
        this(null);
    }

    public q(@Nullable String str) {
        this.Z = 0;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(4);
        this.ED = yVar;
        yVar.hO()[0] = -1;
        this.EE = new r.a();
        this.rJ = C.TIME_UNSET;
        this.dq = str;
    }

    private void P(com.applovin.exoplayer2.l.y yVar) {
        byte[] bArrHO = yVar.hO();
        int iPk = yVar.pk();
        for (int iIl = yVar.il(); iIl < iPk; iIl++) {
            boolean z = (bArrHO[iIl] & 255) == 255;
            boolean z2 = this.EG && (bArrHO[iIl] & 224) == 224;
            this.EG = z;
            if (z2) {
                yVar.fx(iIl + 1);
                this.EG = false;
                this.ED.hO()[1] = bArrHO[iIl];
                this.EF = 2;
                this.Z = 1;
                return;
            }
        }
        yVar.fx(iPk);
    }

    private void Q(com.applovin.exoplayer2.l.y yVar) {
        int iMin = Math.min(yVar.pj(), 4 - this.EF);
        yVar.r(this.ED.hO(), this.EF, iMin);
        int i = this.EF + iMin;
        this.EF = i;
        if (i < 4) {
            return;
        }
        this.ED.fx(0);
        if (!this.EE.aK(this.ED.px())) {
            this.EF = 0;
            this.Z = 1;
            return;
        }
        r.a aVar = this.EE;
        this.jz = aVar.jz;
        if (!this.vJ) {
            this.Dj = (((long) aVar.mJ) * 1000000) / ((long) aVar.dM);
            this.wl.j(new v.a().g(this.Ct).m(this.EE.eg).I(4096).N(this.EE.mI).O(this.EE.dM).j(this.dq).bT());
            this.vJ = true;
        }
        this.ED.fx(0);
        this.wl.c(this.ED, 4);
        this.Z = 2;
    }

    private void R(com.applovin.exoplayer2.l.y yVar) {
        int iMin = Math.min(yVar.pj(), this.jz - this.EF);
        this.wl.c(yVar, iMin);
        int i = this.EF + iMin;
        this.EF = i;
        int i2 = this.jz;
        if (i < i2) {
            return;
        }
        long j = this.rJ;
        if (j != C.TIME_UNSET) {
            this.wl.a(j, 1, i2, 0, null);
            this.rJ += this.Dj;
        }
        this.EF = 0;
        this.Z = 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.N(this.wl);
        while (yVar.pj() > 0) {
            int i = this.Z;
            if (i == 0) {
                P(yVar);
            } else if (i == 1) {
                Q(yVar);
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                R(yVar);
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
        this.EF = 0;
        this.EG = false;
        this.rJ = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
