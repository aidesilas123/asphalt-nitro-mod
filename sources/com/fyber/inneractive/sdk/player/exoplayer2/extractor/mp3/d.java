package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements b.a {
    public final long a;
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f2314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2316f;

    public d(long j, long j2, long j3, long[] jArr, long j4, int i) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.f2314d = jArr;
        this.f2315e = j4;
        this.f2316f = i;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long a(long j) {
        if (!a()) {
            return this.a;
        }
        float f2 = (j * 100.0f) / this.b;
        if (f2 <= 0.0f) {
            f = 0.0f;
        } else if (f2 < 100.0f) {
            int i = (int) f2;
            float f3 = i != 0 ? this.f2314d[i - 1] : 0.0f;
            f = (((i < 99 ? this.f2314d[i] : 256.0f) - f3) * (f2 - i)) + f3;
        }
        long jRound = Math.round(((double) f) * 0.00390625d * this.f2315e);
        long j2 = this.a;
        long j3 = jRound + j2;
        long j4 = this.c;
        return Math.min(j3, j4 != -1 ? j4 - 1 : ((j2 - ((long) this.f2316f)) + this.f2315e) - 1);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public boolean a() {
        return this.f2314d != null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b.a
    public long b(long j) {
        if (a()) {
            if (j >= this.a) {
                double d2 = ((j - r4) * 256.0d) / this.f2315e;
                int iB = u.b(this.f2314d, (long) d2, true, false) + 1;
                long j2 = (((long) iB) * this.b) / 100;
                long j3 = iB == 0 ? 0L : this.f2314d[iB - 1];
                return j2 + ((iB == 99 ? 256L : this.f2314d[iB]) != j3 ? (long) (((((r6 * ((long) (iB + 1))) / 100) - j2) * (d2 - j3)) / (r16 - j3)) : 0L);
            }
        }
        return 0L;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long c() {
        return this.b;
    }
}
