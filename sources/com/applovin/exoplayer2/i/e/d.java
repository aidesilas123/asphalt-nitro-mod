package com.applovin.exoplayer2.i.e;

import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class d implements f {
    private final List<List<com.applovin.exoplayer2.i.a>> OV;
    private final List<Long> RW;

    public d(List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        this.OV = list;
        this.RW = list2;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int be(long j) {
        int iB = ai.b((List<? extends Comparable<? super Long>>) this.RW, Long.valueOf(j), false, false);
        if (iB < this.RW.size()) {
            return iB;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> bf(long j) {
        int iA = ai.a((List<? extends Comparable<? super Long>>) this.RW, Long.valueOf(j), true, false);
        return iA == -1 ? Collections.emptyList() : this.OV.get(iA);
    }

    @Override // com.applovin.exoplayer2.i.f
    public long ej(int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i >= 0);
        com.applovin.exoplayer2.l.a.checkArgument(i < this.RW.size());
        return this.RW.get(i).longValue();
    }

    @Override // com.applovin.exoplayer2.i.f
    public int lX() {
        return this.RW.size();
    }
}
