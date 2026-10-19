package com.fyber.inneractive.sdk.player.exoplayer2.util;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public long a;
    public long b;
    public volatile long c = C.TIME_UNSET;

    public r(long j) {
        c(j);
    }

    public long a() {
        if (this.a == Long.MAX_VALUE) {
            return 0L;
        }
        return this.c == C.TIME_UNSET ? C.TIME_UNSET : this.b;
    }

    public long a(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.c != C.TIME_UNSET) {
            this.c = j;
        } else {
            long j2 = this.a;
            if (j2 != Long.MAX_VALUE) {
                this.b = j2 - j;
            }
            synchronized (this) {
                this.c = j;
                notifyAll();
            }
        }
        return j + this.b;
    }

    public long b(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.c != C.TIME_UNSET) {
            long j2 = (this.c * 90000) / 1000000;
            long j3 = (4294967296L + j2) / 8589934592L;
            long j4 = ((j3 - 1) * 8589934592L) + j;
            j += j3 * 8589934592L;
            if (Math.abs(j4 - j2) < Math.abs(j - j2)) {
                j = j4;
            }
        }
        return a((j * 1000000) / 90000);
    }

    public synchronized void c(long j) {
        a.b(this.c == C.TIME_UNSET);
        this.a = j;
    }
}
