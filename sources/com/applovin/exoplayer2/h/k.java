package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.av;
import com.applovin.exoplayer2.h.n;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class k implements n, n.a {

    @Nullable
    private n.a KS;
    private final long Lt;
    private final com.applovin.exoplayer2.k.b Lu;

    @Nullable
    private a Lv;
    private boolean Lw;
    private long Lx = C.TIME_UNSET;
    public final p.a fE;
    private n ft;
    private p gf;

    public interface a {
        void a(p.a aVar, IOException iOException);

        void h(p.a aVar);
    }

    public k(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        this.fE = aVar;
        this.Lu = bVar;
        this.Lt = j;
    }

    private long aU(long j) {
        long j2 = this.Lx;
        return j2 != C.TIME_UNSET ? j2 : j;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(long j, av avVar) {
        return ((n) ai.R(this.ft)).a(j, avVar);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(com.applovin.exoplayer2.j.d[] dVarArr, boolean[] zArr, x[] xVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.Lx;
        if (j3 == C.TIME_UNSET || j != this.Lt) {
            j2 = j;
        } else {
            this.Lx = C.TIME_UNSET;
            j2 = j3;
        }
        return ((n) ai.R(this.ft)).a(dVarArr, zArr, xVarArr, zArr2, j2);
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(n.a aVar, long j) {
        this.KS = aVar;
        n nVar = this.ft;
        if (nVar != null) {
            nVar.a(this, aU(this.Lt));
        }
    }

    @Override // com.applovin.exoplayer2.h.n.a
    public void a(n nVar) {
        ((n.a) ai.R(this.KS)).a((n) this);
        a aVar = this.Lv;
        if (aVar != null) {
            aVar.h(this.fE);
        }
    }

    public void a(p pVar) {
        com.applovin.exoplayer2.l.a.checkState(this.gf == null);
        this.gf = pVar;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long aQ(long j) {
        return ((n) ai.R(this.ft)).aQ(j);
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean aR(long j) {
        n nVar = this.ft;
        return nVar != null && nVar.aR(j);
    }

    public void aT(long j) {
        this.Lx = j;
    }

    @Override // com.applovin.exoplayer2.h.y.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(n nVar) {
        ((n.a) ai.R(this.KS)).a(this);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long cg() {
        return ((n) ai.R(this.ft)).cg();
    }

    @Override // com.applovin.exoplayer2.h.n
    public long ch() {
        return ((n) ai.R(this.ft)).ch();
    }

    @Override // com.applovin.exoplayer2.h.n
    public ad cj() {
        return ((n) ai.R(this.ft)).cj();
    }

    @Override // com.applovin.exoplayer2.h.n
    public void d(long j, boolean z) {
        ((n) ai.R(this.ft)).d(j, z);
    }

    public void g(p.a aVar) {
        long jAU = aU(this.Lt);
        n nVarA = ((p) com.applovin.exoplayer2.l.a.checkNotNull(this.gf)).a(aVar, this.Lu, jAU);
        this.ft = nVarA;
        if (this.KS != null) {
            nVarA.a(this, jAU);
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public void kM() throws IOException {
        try {
            n nVar = this.ft;
            if (nVar != null) {
                nVar.kM();
            } else {
                p pVar = this.gf;
                if (pVar != null) {
                    pVar.kS();
                }
            }
        } catch (IOException e2) {
            a aVar = this.Lv;
            if (aVar == null) {
                throw e2;
            }
            if (this.Lw) {
                return;
            }
            this.Lw = true;
            aVar.a(this.fE, e2);
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public long kN() {
        return ((n) ai.R(this.ft)).kN();
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean kO() {
        n nVar = this.ft;
        return nVar != null && nVar.kO();
    }

    public long kW() {
        return this.Lt;
    }

    public long kX() {
        return this.Lx;
    }

    public void kY() {
        if (this.ft != null) {
            ((p) com.applovin.exoplayer2.l.a.checkNotNull(this.gf)).f(this.ft);
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public void t(long j) {
        ((n) ai.R(this.ft)).t(j);
    }
}
