package com.applovin.exoplayer2.l;

import com.applovin.exoplayer2.am;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements s {
    private boolean GL;
    private long acM;
    private long acN;
    private final d bR;
    private am gy = am.gC;

    public ac(d dVar) {
        this.bR = dVar;
    }

    public void W() {
        if (this.GL) {
            d(au());
            this.GL = false;
        }
    }

    @Override // com.applovin.exoplayer2.l.s
    public void a(am amVar) {
        if (this.GL) {
            d(au());
        }
        this.gy = amVar;
    }

    @Override // com.applovin.exoplayer2.l.s
    public long au() {
        long j = this.acM;
        if (!this.GL) {
            return j;
        }
        long jOK = this.bR.oK() - this.acN;
        am amVar = this.gy;
        return j + (amVar.gD == 1.0f ? com.applovin.exoplayer2.h.g(jOK) : amVar.x(jOK));
    }

    @Override // com.applovin.exoplayer2.l.s
    public am av() {
        return this.gy;
    }

    public void d(long j) {
        this.acM = j;
        if (this.GL) {
            this.acN = this.bR.oK();
        }
    }

    public void start() {
        if (this.GL) {
            return;
        }
        this.acN = this.bR.oK();
        this.GL = true;
    }
}
