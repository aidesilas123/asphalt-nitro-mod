package com.applovin.exoplayer2;

import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements an {
    protected final ba.c U = new ba.c();

    protected d() {
    }

    private int L() {
        int iAF = aF();
        if (iAF == 1) {
            return 0;
        }
        return iAF;
    }

    private void c(long j) {
        long jAN = aN() + j;
        long jAM = aM();
        if (jAM != C.TIME_UNSET) {
            jAN = Math.min(jAN, jAM);
        }
        b(Math.max(jAN, 0L));
    }

    public final void A() {
        int iG = G();
        if (iG != -1) {
            o(iG);
        }
    }

    @Override // com.applovin.exoplayer2.an
    public final void B() {
        if (aX().isEmpty() || aP()) {
            return;
        }
        boolean z = z();
        if (I() && !J()) {
            if (z) {
                A();
            }
        } else if (!z || aN() > aJ()) {
            b(0L);
        } else {
            A();
        }
    }

    public final boolean C() {
        return F() != -1;
    }

    public final void D() {
        int iF = F();
        if (iF != -1) {
            o(iF);
        }
    }

    @Override // com.applovin.exoplayer2.an
    public final void E() {
        if (aX().isEmpty() || aP()) {
            return;
        }
        if (C()) {
            D();
        } else if (I() && H()) {
            w();
        }
    }

    public final int F() {
        ba baVarAX = aX();
        if (baVarAX.isEmpty()) {
            return -1;
        }
        return baVarAX.a(aL(), L(), aG());
    }

    public final int G() {
        ba baVarAX = aX();
        if (baVarAX.isEmpty()) {
            return -1;
        }
        return baVarAX.b(aL(), L(), aG());
    }

    public final boolean H() {
        ba baVarAX = aX();
        return !baVarAX.isEmpty() && baVarAX.a(aL(), this.U).iN;
    }

    public final boolean I() {
        ba baVarAX = aX();
        return !baVarAX.isEmpty() && baVarAX.a(aL(), this.U).dn();
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean J() {
        ba baVarAX = aX();
        return !baVarAX.isEmpty() && baVarAX.a(aL(), this.U).iM;
    }

    public final long K() {
        ba baVarAX = aX();
        return baVarAX.isEmpty() ? C.TIME_UNSET : baVarAX.a(aL(), this.U).dl();
    }

    protected an.a a(an.a aVar) {
        return new an.a.C0017a().c(aVar).d(3, !aP()).d(4, J() && !aP()).d(5, z() && !aP()).d(6, !aX().isEmpty() && (z() || !I() || J()) && !aP()).d(7, C() && !aP()).d(8, !aX().isEmpty() && (C() || (I() && H())) && !aP()).d(9, !aP()).d(10, J() && !aP()).d(11, J() && !aP()).cC();
    }

    @Override // com.applovin.exoplayer2.an
    public final void b(long j) {
        a(aL(), j);
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean n(int i) {
        return aA().X(i);
    }

    public final void o(int i) {
        a(i, C.TIME_UNSET);
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean v() {
        return aB() == 3 && aE() && aC() == 0;
    }

    public final void w() {
        o(aL());
    }

    @Override // com.applovin.exoplayer2.an
    public final void x() {
        c(-aH());
    }

    @Override // com.applovin.exoplayer2.an
    public final void y() {
        c(aI());
    }

    public final boolean z() {
        return G() != -1;
    }
}
