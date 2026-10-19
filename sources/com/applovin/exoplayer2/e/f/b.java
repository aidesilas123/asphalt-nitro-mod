package com.applovin.exoplayer2.e.f;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.r;

/* JADX INFO: loaded from: classes.dex */
final class b implements e {
    private long fH;
    private final long yO;
    private final r yP;
    private final r yQ;

    public b(long j, long j2, long j3) {
        this.fH = j;
        this.yO = j3;
        r rVar = new r();
        this.yP = rVar;
        r rVar2 = new r();
        this.yQ = rVar2;
        rVar.bo(0L);
        rVar2.bo(j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        int iA = ai.a(this.yP, j, true, true);
        w wVar = new w(this.yP.fu(iA), this.yQ.fu(iA));
        if (wVar.rJ == j || iA == this.yP.size() - 1) {
            return new v.a(wVar);
        }
        int i = iA + 1;
        return new v.a(wVar, new w(this.yP.fu(i), this.yQ.fu(i)));
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long aq(long j) {
        return this.yP.fu(ai.a(this.yQ, j, true, true));
    }

    public boolean ar(long j) {
        r rVar = this.yP;
        return j - rVar.fu(rVar.size() - 1) < 100000;
    }

    void as(long j) {
        this.fH = j;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long iF() {
        return this.yO;
    }

    public void s(long j, long j2) {
        if (ar(j)) {
            return;
        }
        this.yP.bo(j);
        this.yQ.bo(j2);
    }
}
