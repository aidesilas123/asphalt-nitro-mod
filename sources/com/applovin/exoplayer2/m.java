package com.applovin.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class m implements com.applovin.exoplayer2.l.s {
    private final com.applovin.exoplayer2.l.ac aX;
    private final a aY;

    @Nullable
    private ar aZ;

    @Nullable
    private com.applovin.exoplayer2.l.s ba;
    private boolean bb = true;
    private boolean bc;

    public interface a {
        void b(am amVar);
    }

    public m(a aVar, com.applovin.exoplayer2.l.d dVar) {
        this.aY = aVar;
        this.aX = new com.applovin.exoplayer2.l.ac(dVar);
    }

    private void g(boolean z) {
        if (h(z)) {
            this.bb = true;
            if (this.bc) {
                this.aX.start();
                return;
            }
            return;
        }
        com.applovin.exoplayer2.l.s sVar = (com.applovin.exoplayer2.l.s) com.applovin.exoplayer2.l.a.checkNotNull(this.ba);
        long jAu = sVar.au();
        if (this.bb) {
            if (jAu < this.aX.au()) {
                this.aX.W();
                return;
            } else {
                this.bb = false;
                if (this.bc) {
                    this.aX.start();
                }
            }
        }
        this.aX.d(jAu);
        am amVarAv = sVar.av();
        if (amVarAv.equals(this.aX.av())) {
            return;
        }
        this.aX.a(amVarAv);
        this.aY.b(amVarAv);
    }

    private boolean h(boolean z) {
        ar arVar = this.aZ;
        return arVar == null || arVar.cR() || (!this.aZ.isReady() && (z || this.aZ.R()));
    }

    public void W() {
        this.bc = false;
        this.aX.W();
    }

    @Override // com.applovin.exoplayer2.l.s
    public void a(am amVar) {
        com.applovin.exoplayer2.l.s sVar = this.ba;
        if (sVar != null) {
            sVar.a(amVar);
            amVar = this.ba.av();
        }
        this.aX.a(amVar);
    }

    public void a(ar arVar) throws p {
        com.applovin.exoplayer2.l.s sVar;
        com.applovin.exoplayer2.l.s sVarO = arVar.O();
        if (sVarO == null || sVarO == (sVar = this.ba)) {
            return;
        }
        if (sVar != null) {
            throw p.a(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.ba = sVarO;
        this.aZ = arVar;
        sVarO.a(this.aX.av());
    }

    @Override // com.applovin.exoplayer2.l.s
    public long au() {
        return this.bb ? this.aX.au() : ((com.applovin.exoplayer2.l.s) com.applovin.exoplayer2.l.a.checkNotNull(this.ba)).au();
    }

    @Override // com.applovin.exoplayer2.l.s
    public am av() {
        com.applovin.exoplayer2.l.s sVar = this.ba;
        return sVar != null ? sVar.av() : this.aX.av();
    }

    public void b(ar arVar) {
        if (arVar == this.aZ) {
            this.ba = null;
            this.aZ = null;
            this.bb = true;
        }
    }

    public void d(long j) {
        this.aX.d(j);
    }

    public long f(boolean z) {
        g(z);
        return au();
    }

    public void start() {
        this.bc = true;
        this.aX.start();
    }
}
