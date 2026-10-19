package com.applovin.exoplayer2.e.j;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
final class d implements v {
    private final int Gd;
    private final b Gt;
    private final long Gu;
    private final long Gv;
    private final long fH;

    public d(b bVar, int i, long j, long j2) {
        this.Gt = bVar;
        this.Gd = i;
        this.Gu = j;
        long j3 = (j2 - j) / ((long) bVar.Gq);
        this.Gv = j3;
        this.fH = aJ(j3);
    }

    private long aJ(long j) {
        return ai.e(j * ((long) this.Gd), 1000000L, this.Gt.Go);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        long jB = ai.b((((long) this.Gt.Go) * j) / (((long) this.Gd) * 1000000), 0L, this.Gv - 1);
        long j2 = this.Gu + (((long) this.Gt.Gq) * jB);
        long jAJ = aJ(jB);
        w wVar = new w(jAJ, j2);
        if (jAJ >= j || jB == this.Gv - 1) {
            return new v.a(wVar);
        }
        long j3 = jB + 1;
        return new v.a(wVar, new w(aJ(j3), this.Gu + (((long) this.Gt.Gq) * j3)));
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return true;
    }
}
