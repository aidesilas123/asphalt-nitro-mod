package com.applovin.exoplayer2.e.f;

import android.util.Pair;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.g.e.j;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class c implements e {
    private final long fH;
    private final long[] yR;
    private final long[] yS;

    private c(long[] jArr, long[] jArr2, long j) {
        this.yR = jArr;
        this.yS = jArr2;
        this.fH = j == C.TIME_UNSET ? com.applovin.exoplayer2.h.g(jArr2[jArr2.length - 1]) : j;
    }

    private static Pair<Long, Long> a(long j, long[] jArr, long[] jArr2) {
        int iA = ai.a(jArr, j, true, true);
        long j2 = jArr[iA];
        long j3 = jArr2[iA];
        int i = iA + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr[i] == j2 ? 0.0d : (j - j2) / (r6 - j2)) * (jArr2[i] - j3))) + j3));
    }

    public static c a(long j, j jVar, long j2) {
        int length = jVar.JY.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += (long) (jVar.JW + jVar.JY[i3]);
            j3 += (long) (jVar.JX + jVar.JZ[i3]);
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new c(jArr, jArr2, j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        Pair<Long, Long> pairA = a(com.applovin.exoplayer2.h.f(ai.b(j, 0L, this.fH)), this.yS, this.yR);
        return new v.a(new w(com.applovin.exoplayer2.h.g(((Long) pairA.first).longValue()), ((Long) pairA.second).longValue()));
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long aq(long j) {
        return com.applovin.exoplayer2.h.g(((Long) a(j, this.yR, this.yS).second).longValue());
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
        return -1L;
    }
}
