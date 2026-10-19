package com.applovin.exoplayer2.e.f;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;

/* JADX INFO: loaded from: classes.dex */
final class g implements e {
    private final long fH;
    private final long tX;
    private final long yO;
    private final long zi;
    private final int zj;

    @Nullable
    private final long[] zk;

    private g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    private g(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.zi = j;
        this.zj = i;
        this.fH = j2;
        this.zk = jArr;
        this.tX = j3;
        this.yO = j3 != -1 ? j + j3 : -1L;
    }

    @Nullable
    public static g b(long j, long j2, r.a aVar, y yVar) {
        int iPD;
        int i = aVar.mJ;
        int i2 = aVar.dM;
        int iPx = yVar.px();
        if ((iPx & 1) != 1 || (iPD = yVar.pD()) == 0) {
            return null;
        }
        long jE = ai.e(iPD, ((long) i) * 1000000, i2);
        if ((iPx & 6) != 6) {
            return new g(j2, aVar.jz, jE);
        }
        long jPv = yVar.pv();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = yVar.po();
        }
        if (j != -1) {
            long j3 = j2 + jPv;
            if (j != j3) {
                q.h("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new g(j2, aVar.jz, jE, jPv, jArr);
    }

    private long ce(int i) {
        return (this.fH * ((long) i)) / 100;
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        if (!hU()) {
            return new v.a(new w(0L, this.zi + ((long) this.zj)));
        }
        long jB = ai.b(j, 0L, this.fH);
        double d2 = (jB * 100.0d) / this.fH;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                double d4 = ((long[]) com.applovin.exoplayer2.l.a.N(this.zk))[i];
                d3 = d4 + ((d2 - ((double) i)) * ((i == 99 ? 256.0d : r3[i + 1]) - d4));
            }
        }
        return new v.a(new w(jB, this.zi + ai.b(Math.round((d3 / 256.0d) * this.tX), this.zj, this.tX - 1)));
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long aq(long j) {
        long j2 = j - this.zi;
        if (!hU() || j2 <= this.zj) {
            return 0L;
        }
        long[] jArr = (long[]) com.applovin.exoplayer2.l.a.N(this.zk);
        double d2 = (j2 * 256.0d) / this.tX;
        int iA = ai.a(jArr, (long) d2, true, true);
        long jCe = ce(iA);
        long j3 = jArr[iA];
        int i = iA + 1;
        long jCe2 = ce(i);
        return jCe + Math.round((j3 == (iA == 99 ? 256L : jArr[i]) ? 0.0d : (d2 - j3) / (r0 - j3)) * (jCe2 - jCe));
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return this.zk != null;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long iF() {
        return this.yO;
    }
}
