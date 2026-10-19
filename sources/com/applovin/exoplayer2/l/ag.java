package com.applovin.exoplayer2.l;

import androidx.annotation.GuardedBy;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class ag {

    @GuardedBy("this")
    private long CD;

    @GuardedBy("this")
    private long acS;

    @GuardedBy("this")
    private long acT;
    private final ThreadLocal<Long> acU = new ThreadLocal<>();

    public ag(long j) {
        aI(j);
    }

    public static long bt(long j) {
        return (j * 1000000) / 90000;
    }

    public static long bu(long j) {
        return (j * 90000) / 1000000;
    }

    public synchronized void aI(long j) {
        this.CD = j;
        this.acS = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.acT = C.TIME_UNSET;
    }

    public synchronized long br(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j2 = this.acT;
        if (j2 != C.TIME_UNSET) {
            long jBu = bu(j2);
            long j3 = (4294967296L + jBu) / 8589934592L;
            long j4 = ((j3 - 1) * 8589934592L) + j;
            j += j3 * 8589934592L;
            if (Math.abs(j4 - jBu) < Math.abs(j - jBu)) {
                j = j4;
            }
        }
        return bs(bt(j));
    }

    public synchronized long bs(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.acS == C.TIME_UNSET) {
            long jLongValue = this.CD;
            if (jLongValue == 9223372036854775806L) {
                jLongValue = ((Long) a.checkNotNull(this.acU.get())).longValue();
            }
            this.acS = jLongValue - j;
            notifyAll();
        }
        this.acT = j;
        return j + this.acS;
    }

    public synchronized long pS() {
        long j;
        j = this.CD;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            j = C.TIME_UNSET;
        }
        return j;
    }

    public synchronized long pT() {
        long j;
        j = this.acT;
        return j != C.TIME_UNSET ? j + this.acS : pS();
    }

    public synchronized long pU() {
        return this.acS;
    }
}
