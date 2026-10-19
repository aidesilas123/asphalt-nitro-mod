package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public class d implements v {
    private final int dv;
    private final long fH;
    private final int jz;
    private final long tV;
    private final long tW;
    private final long tX;
    private final boolean tY;

    public d(long j, long j2, int i, int i2, boolean z) {
        this.tV = j;
        this.tW = j2;
        this.jz = i2 == -1 ? 1 : i2;
        this.dv = i;
        this.tY = z;
        if (j == -1) {
            this.tX = -1L;
            this.fH = C.TIME_UNSET;
        } else {
            this.tX = j - j2;
            this.fH = a(j, j2, i);
        }
    }

    private static long a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / ((long) i);
    }

    private long am(long j) {
        long j2 = (j * ((long) this.dv)) / 8000000;
        int i = this.jz;
        long jMin = (j2 / ((long) i)) * ((long) i);
        long j3 = this.tX;
        if (j3 != -1) {
            jMin = Math.min(jMin, j3 - ((long) i));
        }
        return this.tW + Math.max(jMin, 0L);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        if (this.tX == -1 && !this.tY) {
            return new v.a(new w(0L, this.tW));
        }
        long jAm = am(j);
        long jAl = al(jAm);
        w wVar = new w(jAl, jAm);
        if (this.tX != -1 && jAl < j) {
            int i = this.jz;
            if (((long) i) + jAm < this.tV) {
                long j2 = jAm + ((long) i);
                return new v.a(wVar, new w(al(j2), j2));
            }
        }
        return new v.a(wVar);
    }

    public long al(long j) {
        return a(j, this.tW, this.dv);
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return this.tX != -1 || this.tY;
    }
}
