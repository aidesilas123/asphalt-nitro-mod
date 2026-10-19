package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ht, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1074Ht {
    public long A00;
    public long A01;
    public volatile long A02 = C.TIME_UNSET;

    public C1074Ht(long j) {
        A02(j);
    }

    public static long A00(long j) {
        return (1000000 * j) / 90000;
    }

    public static long A01(long j) {
        return (90000 * j) / 1000000;
    }

    private final synchronized void A02(long j) {
        HI.A04(this.A02 == C.TIME_UNSET);
        this.A00 = j;
    }

    public final long A03() {
        return this.A00;
    }

    public final long A04() {
        if (this.A02 != C.TIME_UNSET) {
            return this.A01 + this.A02;
        }
        long j = this.A00;
        return j != Long.MAX_VALUE ? j : C.TIME_UNSET;
    }

    public final long A05() {
        if (this.A00 == Long.MAX_VALUE) {
            return 0L;
        }
        return this.A02 == C.TIME_UNSET ? C.TIME_UNSET : this.A01;
    }

    public final long A06(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.A02 != C.TIME_UNSET) {
            this.A02 = j;
        } else {
            long j2 = this.A00;
            if (j2 != Long.MAX_VALUE) {
                this.A01 = j2 - j;
            }
            synchronized (this) {
                this.A02 = j;
                notifyAll();
            }
        }
        return this.A01 + j;
    }

    public final long A07(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.A02 != C.TIME_UNSET) {
            long jA01 = A01(this.A02);
            long j2 = (4294967296L + jA01) / 8589934592L;
            long j3 = ((j2 - 1) * 8589934592L) + j;
            long j4 = (8589934592L * j2) + j;
            if (Math.abs(j3 - jA01) >= Math.abs(j4 - jA01)) {
                j3 = j4;
            }
            j = j3;
        }
        return A06(A00(j));
    }

    public final void A08() {
        this.A02 = C.TIME_UNSET;
    }
}
