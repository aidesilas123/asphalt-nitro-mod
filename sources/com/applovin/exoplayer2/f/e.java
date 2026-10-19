package com.applovin.exoplayer2.f;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class e {
    private long Hd;
    private long He;
    private boolean Hf;

    e() {
    }

    private long aK(long j) {
        return this.Hd + Math.max(0L, ((this.He - 529) * 1000000) / j);
    }

    public void Y() {
        this.Hd = 0L;
        this.He = 0L;
        this.Hf = false;
    }

    public long a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.g gVar) {
        if (this.He == 0) {
            this.Hd = gVar.rJ;
        }
        if (this.Hf) {
            return gVar.rJ;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(gVar.rH);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int iAH = com.applovin.exoplayer2.b.r.aH(i);
        if (iAH != -1) {
            long jAK = aK(vVar.dM);
            this.He += (long) iAH;
            return jAK;
        }
        this.Hf = true;
        this.He = 0L;
        this.Hd = gVar.rJ;
        com.applovin.exoplayer2.l.q.h("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return gVar.rJ;
    }

    public long k(com.applovin.exoplayer2.v vVar) {
        return aK(vVar.dM);
    }
}
