package com.applovin.exoplayer2.f;

import androidx.annotation.IntRange;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class d extends com.applovin.exoplayer2.c.g {
    private long Hb;
    private int Hc;
    private int jA;

    public d() {
        super(2);
        this.Hc = 32;
    }

    private boolean e(com.applovin.exoplayer2.c.g gVar) {
        ByteBuffer byteBuffer;
        if (!jS()) {
            return true;
        }
        if (this.jA >= this.Hc || gVar.gX() != gX()) {
            return false;
        }
        ByteBuffer byteBuffer2 = gVar.rH;
        return byteBuffer2 == null || (byteBuffer = this.rH) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    public void cQ(@IntRange(from = 1) int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i > 0);
        this.Hc = i;
    }

    @Override // com.applovin.exoplayer2.c.g, com.applovin.exoplayer2.c.a
    public void clear() {
        super.clear();
        this.jA = 0;
    }

    public boolean d(com.applovin.exoplayer2.c.g gVar) {
        com.applovin.exoplayer2.l.a.checkArgument(!gVar.hg());
        com.applovin.exoplayer2.l.a.checkArgument(!gVar.ha());
        com.applovin.exoplayer2.l.a.checkArgument(!gVar.gY());
        if (!e(gVar)) {
            return false;
        }
        int i = this.jA;
        this.jA = i + 1;
        if (i == 0) {
            this.rJ = gVar.rJ;
            if (gVar.gZ()) {
                bs(1);
            }
        }
        if (gVar.gX()) {
            bs(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = gVar.rH;
        if (byteBuffer != null) {
            by(byteBuffer.remaining());
            this.rH.put(byteBuffer);
        }
        this.Hb = gVar.rJ;
        return true;
    }

    public int iI() {
        return this.jA;
    }

    public long jQ() {
        return this.rJ;
    }

    public long jR() {
        return this.Hb;
    }

    public boolean jS() {
        return this.jA > 0;
    }
}
