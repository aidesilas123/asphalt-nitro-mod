package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import com.fyber.inneractive.sdk.player.exoplayer2.util.u;

/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public final int a;
    public final long[] b;
    public final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f2355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f2356f;

    public k(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(iArr2.length == jArr2.length);
        this.b = jArr;
        this.c = iArr;
        this.f2354d = i;
        this.f2355e = jArr2;
        this.f2356f = iArr2;
        this.a = jArr.length;
    }

    public int a(long j) {
        for (int iB = u.b(this.f2355e, j, true, false); iB >= 0; iB--) {
            if ((this.f2356f[iB] & 1) != 0) {
                return iB;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int iA = u.a(this.f2355e, j, true, false); iA < this.f2355e.length; iA++) {
            if ((this.f2356f[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }
}
