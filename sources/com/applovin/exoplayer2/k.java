package com.applovin.exoplayer2;

import android.os.SystemClock;
import com.applovin.exoplayer2.ab;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class k implements z {
    private long aA;
    private long aB;
    private long aC;
    private long aD;
    private float aE;
    private float aF;
    private float aG;
    private long aH;
    private long aI;
    private long aJ;
    private final float ar;
    private final float as;
    private final long at;
    private final float au;
    private final long av;
    private final long aw;
    private final float ax;
    private long ay;
    private long az;

    public static final class a {
        private float ar = 0.97f;
        private float as = 1.03f;
        private long at = 1000;
        private float aK = 1.0E-7f;
        private long av = h.g(20);
        private long aL = h.g(500);
        private float ax = 0.999f;

        public k ao() {
            return new k(this.ar, this.as, this.at, this.aK, this.av, this.aL, this.ax);
        }
    }

    private k(float f2, float f3, long j, float f4, long j2, long j3, float f5) {
        this.ar = f2;
        this.as = f3;
        this.at = j;
        this.au = f4;
        this.av = j2;
        this.aw = j3;
        this.ax = f5;
        this.ay = C.TIME_UNSET;
        this.az = C.TIME_UNSET;
        this.aB = C.TIME_UNSET;
        this.aC = C.TIME_UNSET;
        this.aF = f2;
        this.aE = f3;
        this.aG = 1.0f;
        this.aH = C.TIME_UNSET;
        this.aA = C.TIME_UNSET;
        this.aD = C.TIME_UNSET;
        this.aI = C.TIME_UNSET;
        this.aJ = C.TIME_UNSET;
    }

    private static long a(long j, long j2, float f2) {
        return (long) ((j * f2) + ((1.0f - f2) * j2));
    }

    private void an() {
        long j = this.ay;
        if (j != C.TIME_UNSET) {
            long j2 = this.az;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.aB;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.aC;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.aA == j) {
            return;
        }
        this.aA = j;
        this.aD = j;
        this.aI = C.TIME_UNSET;
        this.aJ = C.TIME_UNSET;
        this.aH = C.TIME_UNSET;
    }

    private void b(long j, long j2) {
        long j3 = j - j2;
        long j4 = this.aI;
        if (j4 == C.TIME_UNSET) {
            this.aI = j3;
            this.aJ = 0L;
        } else {
            long jMax = Math.max(j3, a(j4, j3, this.ax));
            this.aI = jMax;
            this.aJ = a(this.aJ, Math.abs(j3 - jMax), this.ax);
        }
    }

    private void i(long j) {
        long j2 = this.aI + (this.aJ * 3);
        if (this.aD > j2) {
            float fG = h.g(this.at);
            this.aD = com.applovin.exoplayer2.common.b.d.a(j2, this.aA, this.aD - (((long) ((this.aG - 1.0f) * fG)) + ((long) ((this.aE - 1.0f) * fG))));
            return;
        }
        long jB = com.applovin.exoplayer2.l.ai.b(j - ((long) (Math.max(0.0f, this.aG - 1.0f) / this.au)), this.aD, j2);
        this.aD = jB;
        long j3 = this.aC;
        if (j3 == C.TIME_UNSET || jB <= j3) {
            return;
        }
        this.aD = j3;
    }

    @Override // com.applovin.exoplayer2.z
    public float a(long j, long j2) {
        if (this.ay == C.TIME_UNSET) {
            return 1.0f;
        }
        b(j, j2);
        if (this.aH != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.aH < this.at) {
            return this.aG;
        }
        this.aH = SystemClock.elapsedRealtime();
        i(j);
        long j3 = j - this.aD;
        if (Math.abs(j3) < this.av) {
            this.aG = 1.0f;
        } else {
            this.aG = com.applovin.exoplayer2.l.ai.a((this.au * j3) + 1.0f, this.aF, this.aE);
        }
        return this.aG;
    }

    @Override // com.applovin.exoplayer2.z
    public void a(ab.e eVar) {
        this.ay = h.g(eVar.eI);
        this.aB = h.g(eVar.eJ);
        this.aC = h.g(eVar.eK);
        float f2 = eVar.aF;
        if (f2 == -3.4028235E38f) {
            f2 = this.ar;
        }
        this.aF = f2;
        float f3 = eVar.aE;
        if (f3 == -3.4028235E38f) {
            f3 = this.as;
        }
        this.aE = f3;
        an();
    }

    @Override // com.applovin.exoplayer2.z
    public void al() {
        long j = this.aD;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.aw;
        this.aD = j2;
        long j3 = this.aC;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.aD = j3;
        }
        this.aH = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.z
    public long am() {
        return this.aD;
    }

    @Override // com.applovin.exoplayer2.z
    public void h(long j) {
        this.az = j;
        an();
    }
}
