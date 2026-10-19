package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.p;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public final class o implements v {
    private final long uA;
    private final p uz;

    public o(p pVar, long j) {
        this.uz = pVar;
        this.uA = j;
    }

    private w p(long j, long j2) {
        return new w((j * 1000000) / ((long) this.uz.dM), this.uA + j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        com.applovin.exoplayer2.l.a.N(this.uz.uJ);
        p pVar = this.uz;
        p.a aVar = pVar.uJ;
        long[] jArr = aVar.uK;
        long[] jArr2 = aVar.uL;
        int iA = ai.a(jArr, pVar.an(j), true, false);
        w wVarP = p(iA == -1 ? 0L : jArr[iA], iA != -1 ? jArr2[iA] : 0L);
        if (wVarP.rJ == j || iA == jArr.length - 1) {
            return new v.a(wVarP);
        }
        int i = iA + 1;
        return new v.a(wVarP, p(jArr[i], jArr2[i]));
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.uz.dd();
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return true;
    }
}
