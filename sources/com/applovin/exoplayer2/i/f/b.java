package com.applovin.exoplayer2.i.f;

import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b implements f {
    private final com.applovin.exoplayer2.i.a[] Sb;
    private final long[] Sc;

    public b(com.applovin.exoplayer2.i.a[] aVarArr, long[] jArr) {
        this.Sb = aVarArr;
        this.Sc = jArr;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int be(long j) {
        int iB = ai.b(this.Sc, j, false, false);
        if (iB < this.Sc.length) {
            return iB;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> bf(long j) {
        int iA = ai.a(this.Sc, j, true, false);
        if (iA != -1) {
            com.applovin.exoplayer2.i.a[] aVarArr = this.Sb;
            if (aVarArr[iA] != com.applovin.exoplayer2.i.a.NV) {
                return Collections.singletonList(aVarArr[iA]);
            }
        }
        return Collections.emptyList();
    }

    @Override // com.applovin.exoplayer2.i.f
    public long ej(int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i >= 0);
        com.applovin.exoplayer2.l.a.checkArgument(i < this.Sc.length);
        return this.Sc[i];
    }

    @Override // com.applovin.exoplayer2.i.f
    public int lX() {
        return this.Sc.length;
    }
}
