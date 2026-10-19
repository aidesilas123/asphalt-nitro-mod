package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.s;
import com.applovin.exoplayer2.h.t;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.i;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class u extends com.applovin.exoplayer2.h.a implements t.b {
    private final com.applovin.exoplayer2.d.h LS;
    private final i.a Lc;
    private final s.a MA;
    private final com.applovin.exoplayer2.k.v MB;
    private final int MC;
    private boolean MD;
    private long ME;
    private boolean MF;
    private boolean MG;

    @Nullable
    private com.applovin.exoplayer2.k.aa MH;
    private final ab.f ea;
    private final com.applovin.exoplayer2.ab gL;

    public static final class a implements r {
        private final i.a Lc;
        private s.a MA;
        private int MC;
        private com.applovin.exoplayer2.d.i MJ;

        @Nullable
        private String eo;

        @Nullable
        private Object er;
        private com.applovin.exoplayer2.k.v sm;

        public a(i.a aVar) {
            this(aVar, new com.applovin.exoplayer2.e.f());
        }

        public a(i.a aVar, final com.applovin.exoplayer2.e.l lVar) {
            this(aVar, new s.a() { // from class: com.applovin.exoplayer2.h.m0
                @Override // com.applovin.exoplayer2.h.s.a
                public final s createProgressiveMediaExtractor() {
                    return u.a.a(lVar);
                }
            });
        }

        public a(i.a aVar, s.a aVar2) {
            this.Lc = aVar;
            this.MA = aVar2;
            this.MJ = new com.applovin.exoplayer2.d.d();
            this.sm = new com.applovin.exoplayer2.k.r();
            this.MC = 1048576;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ s a(com.applovin.exoplayer2.e.l lVar) {
            return new c(lVar);
        }

        public u c(com.applovin.exoplayer2.ab abVar) {
            com.applovin.exoplayer2.l.a.checkNotNull(abVar.ea);
            ab.f fVar = abVar.ea;
            boolean z = fVar.er == null && this.er != null;
            boolean z2 = fVar.eo == null && this.eo != null;
            if (z && z2) {
                abVar = abVar.bU().e(this.er).o(this.eo).bV();
            } else if (z) {
                abVar = abVar.bU().e(this.er).bV();
            } else if (z2) {
                abVar = abVar.bU().o(this.eo).bV();
            }
            com.applovin.exoplayer2.ab abVar2 = abVar;
            return new u(abVar2, this.Lc, this.MA, this.MJ.a(abVar2), this.sm, this.MC);
        }
    }

    private u(com.applovin.exoplayer2.ab abVar, i.a aVar, s.a aVar2, com.applovin.exoplayer2.d.h hVar, com.applovin.exoplayer2.k.v vVar, int i) {
        this.ea = (ab.f) com.applovin.exoplayer2.l.a.checkNotNull(abVar.ea);
        this.gL = abVar;
        this.Lc = aVar;
        this.MA = aVar2;
        this.LS = hVar;
        this.MB = vVar;
        this.MC = i;
        this.MD = true;
        this.ME = C.TIME_UNSET;
    }

    private void ls() {
        ba aaVar = new aa(this.ME, this.MF, false, this.MG, null, this.gL);
        if (this.MD) {
            aaVar = new h(aaVar) { // from class: com.applovin.exoplayer2.h.u.1
                @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
                public ba.a a(int i, ba.a aVar, boolean z) {
                    super.a(i, aVar, z);
                    aVar.iz = true;
                    return aVar;
                }

                @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
                public ba.c a(int i, ba.c cVar, long j) {
                    super.a(i, cVar, j);
                    cVar.iz = true;
                    return cVar;
                }
            };
        }
        e(aaVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public n a(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        com.applovin.exoplayer2.k.i iVarOx = this.Lc.ox();
        com.applovin.exoplayer2.k.aa aaVar = this.MH;
        if (aaVar != null) {
            iVarOx.c(aaVar);
        }
        return new t(this.ea.ef, iVarOx, this.MA.createProgressiveMediaExtractor(), this.LS, f(aVar), this.MB, e(aVar), this, bVar, this.ea.eo, this.MC);
    }

    @Override // com.applovin.exoplayer2.h.t.b
    public void a(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.ME;
        }
        if (!this.MD && this.ME == j && this.MF == z && this.MG == z2) {
            return;
        }
        this.ME = j;
        this.MF = z;
        this.MG = z2;
        this.MD = false;
        ls();
    }

    @Override // com.applovin.exoplayer2.h.a
    protected void b(@Nullable com.applovin.exoplayer2.k.aa aaVar) {
        this.MH = aaVar;
        this.LS.aD();
        ls();
    }

    @Override // com.applovin.exoplayer2.h.p
    public void f(n nVar) {
        ((t) nVar).release();
    }

    @Override // com.applovin.exoplayer2.h.a
    protected void kJ() {
        this.LS.release();
    }

    @Override // com.applovin.exoplayer2.h.p
    public void kS() {
    }

    @Override // com.applovin.exoplayer2.h.p
    public com.applovin.exoplayer2.ab kZ() {
        return this.gL;
    }
}
