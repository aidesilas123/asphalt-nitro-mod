package com.applovin.exoplayer2;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class ad {
    private final com.applovin.exoplayer2.j.j bC;
    public final Object ch;
    private final as[] ck;
    private final ah cs;

    @Nullable
    private ad fA;
    private com.applovin.exoplayer2.h.ad fB;
    private com.applovin.exoplayer2.j.k fC;
    private long fD;
    public final com.applovin.exoplayer2.h.n ft;
    public final com.applovin.exoplayer2.h.x[] fu;
    public boolean fv;
    public boolean fw;
    public ae fx;
    public boolean fy;
    private final boolean[] fz;

    public ad(as[] asVarArr, long j, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.k.b bVar, ah ahVar, ae aeVar, com.applovin.exoplayer2.j.k kVar) {
        this.ck = asVarArr;
        this.fD = j;
        this.bC = jVar;
        this.cs = ahVar;
        p.a aVar = aeVar.fE;
        this.ch = aVar.gM;
        this.fx = aeVar;
        this.fB = com.applovin.exoplayer2.h.ad.NG;
        this.fC = kVar;
        this.fu = new com.applovin.exoplayer2.h.x[asVarArr.length];
        this.fz = new boolean[asVarArr.length];
        this.ft = a(aVar, ahVar, bVar, aeVar.fF, aeVar.fG);
    }

    private static com.applovin.exoplayer2.h.n a(p.a aVar, ah ahVar, com.applovin.exoplayer2.k.b bVar, long j, long j2) {
        com.applovin.exoplayer2.h.n nVarA = ahVar.a(aVar, bVar, j);
        return j2 != C.TIME_UNSET ? new com.applovin.exoplayer2.h.d(nVarA, true, 0L, j2) : nVarA;
    }

    private static void a(ah ahVar, com.applovin.exoplayer2.h.n nVar) {
        try {
            if (nVar instanceof com.applovin.exoplayer2.h.d) {
                ahVar.f(((com.applovin.exoplayer2.h.d) nVar).ft);
            } else {
                ahVar.f(nVar);
            }
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.c("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    private void a(com.applovin.exoplayer2.h.x[] xVarArr) {
        int i = 0;
        while (true) {
            as[] asVarArr = this.ck;
            if (i >= asVarArr.length) {
                return;
            }
            if (asVarArr[i].M() == -2) {
                xVarArr[i] = null;
            }
            i++;
        }
    }

    private void b(com.applovin.exoplayer2.h.x[] xVarArr) {
        int i = 0;
        while (true) {
            as[] asVarArr = this.ck;
            if (i >= asVarArr.length) {
                return;
            }
            if (asVarArr[i].M() == -2 && this.fC.eW(i)) {
                xVarArr[i] = new com.applovin.exoplayer2.h.g();
            }
            i++;
        }
    }

    private void cm() {
        if (!co()) {
            return;
        }
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.j.k kVar = this.fC;
            if (i >= kVar.fR) {
                return;
            }
            boolean zEW = kVar.eW(i);
            com.applovin.exoplayer2.j.d dVar = this.fC.VE[i];
            if (zEW && dVar != null) {
                dVar.enable();
            }
            i++;
        }
    }

    private void cn() {
        if (!co()) {
            return;
        }
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.j.k kVar = this.fC;
            if (i >= kVar.fR) {
                return;
            }
            boolean zEW = kVar.eW(i);
            com.applovin.exoplayer2.j.d dVar = this.fC.VE[i];
            if (zEW && dVar != null) {
                dVar.X();
            }
            i++;
        }
    }

    private boolean co() {
        return this.fA == null;
    }

    public long a(com.applovin.exoplayer2.j.k kVar, long j, boolean z) {
        return a(kVar, j, z, new boolean[this.ck.length]);
    }

    public long a(com.applovin.exoplayer2.j.k kVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= kVar.fR) {
                break;
            }
            boolean[] zArr2 = this.fz;
            if (z || !kVar.a(this.fC, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        a(this.fu);
        cn();
        this.fC = kVar;
        cm();
        long jA = this.ft.a(kVar.VE, this.fz, this.fu, zArr, j);
        b(this.fu);
        this.fw = false;
        int i2 = 0;
        while (true) {
            com.applovin.exoplayer2.h.x[] xVarArr = this.fu;
            if (i2 >= xVarArr.length) {
                return jA;
            }
            if (xVarArr[i2] != null) {
                com.applovin.exoplayer2.l.a.checkState(kVar.eW(i2));
                if (this.ck[i2].M() != -2) {
                    this.fw = true;
                }
            } else {
                com.applovin.exoplayer2.l.a.checkState(kVar.VE[i2] == null);
            }
            i2++;
        }
    }

    public void a(float f2, ba baVar) throws p {
        this.fv = true;
        this.fB = this.ft.cj();
        com.applovin.exoplayer2.j.k kVarB = b(f2, baVar);
        ae aeVar = this.fx;
        long jMax = aeVar.fF;
        long j = aeVar.fH;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a(kVarB, jMax, false);
        long j2 = this.fD;
        ae aeVar2 = this.fx;
        this.fD = j2 + (aeVar2.fF - jA);
        this.fx = aeVar2.v(jA);
    }

    public void a(@Nullable ad adVar) {
        if (adVar == this.fA) {
            return;
        }
        cn();
        this.fA = adVar;
        cm();
    }

    public com.applovin.exoplayer2.j.k b(float f2, ba baVar) throws p {
        com.applovin.exoplayer2.j.k kVarA = this.bC.a(this.ck, cj(), this.fx.fE, baVar);
        for (com.applovin.exoplayer2.j.d dVar : kVarA.VE) {
            if (dVar != null) {
                dVar.v(f2);
            }
        }
        return kVarA;
    }

    public long cd() {
        return this.fD;
    }

    public long ce() {
        return this.fx.fF + this.fD;
    }

    public boolean cf() {
        return this.fv && (!this.fw || this.ft.cg() == Long.MIN_VALUE);
    }

    public long cg() {
        if (!this.fv) {
            return this.fx.fF;
        }
        long jCg = this.fw ? this.ft.cg() : Long.MIN_VALUE;
        return jCg == Long.MIN_VALUE ? this.fx.fH : jCg;
    }

    public long ch() {
        if (this.fv) {
            return this.ft.ch();
        }
        return 0L;
    }

    @Nullable
    public ad ci() {
        return this.fA;
    }

    public com.applovin.exoplayer2.h.ad cj() {
        return this.fB;
    }

    public com.applovin.exoplayer2.j.k ck() {
        return this.fC;
    }

    public void cl() {
        com.applovin.exoplayer2.h.n nVar = this.ft;
        if (nVar instanceof com.applovin.exoplayer2.h.d) {
            long j = this.fx.fG;
            if (j == C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((com.applovin.exoplayer2.h.d) nVar).v(0L, j);
        }
    }

    public long q(long j) {
        return j + cd();
    }

    public long r(long j) {
        return j - cd();
    }

    public void release() {
        cn();
        a(this.cs, this.ft);
    }

    public void s(long j) {
        this.fD = j;
    }

    public void t(long j) {
        com.applovin.exoplayer2.l.a.checkState(co());
        if (this.fv) {
            this.ft.t(r(j));
        }
    }

    public void u(long j) {
        com.applovin.exoplayer2.l.a.checkState(co());
        this.ft.aR(r(j));
    }
}
