package com.applovin.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class av {
    public static final av hj;
    public static final av hk;
    public static final av hl;
    public static final av hm;
    public static final av hn;
    public final long ho;
    public final long hp;

    static {
        av avVar = new av(0L, 0L);
        hj = avVar;
        hk = new av(Long.MAX_VALUE, Long.MAX_VALUE);
        hl = new av(Long.MAX_VALUE, 0L);
        hm = new av(0L, Long.MAX_VALUE);
        hn = avVar;
    }

    public av(long j, long j2) {
        com.applovin.exoplayer2.l.a.checkArgument(j >= 0);
        com.applovin.exoplayer2.l.a.checkArgument(j2 >= 0);
        this.ho = j;
        this.hp = j2;
    }

    public long a(long j, long j2, long j3) {
        long j4 = this.ho;
        if (j4 == 0 && this.hp == 0) {
            return j;
        }
        long jD = com.applovin.exoplayer2.l.ai.d(j, j4, Long.MIN_VALUE);
        long jC = com.applovin.exoplayer2.l.ai.c(j, this.hp, Long.MAX_VALUE);
        boolean z = jD <= j2 && j2 <= jC;
        boolean z2 = jD <= j3 && j3 <= jC;
        return (z && z2) ? Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3 : z ? j2 : z2 ? j3 : jD;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || av.class != obj.getClass()) {
            return false;
        }
        av avVar = (av) obj;
        return this.ho == avVar.ho && this.hp == avVar.hp;
    }

    public int hashCode() {
        return (((int) this.ho) * 31) + ((int) this.hp);
    }
}
