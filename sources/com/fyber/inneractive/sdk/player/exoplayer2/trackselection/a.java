package com.fyber.inneractive.sdk.player.exoplayer2.trackselection;

import android.os.SystemClock;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.source.r;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements e {
    public final r a;
    public final int b;
    public final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i[] f2529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f2530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2531f;

    public static final class b implements Comparator<i> {
        public b() {
        }

        @Override // java.util.Comparator
        public int compare(i iVar, i iVar2) {
            return iVar2.b - iVar.b;
        }
    }

    public a(r rVar, int... iArr) {
        int i = 0;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(iArr.length > 0);
        this.a = (r) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(rVar);
        int length = iArr.length;
        this.b = length;
        this.f2529d = new i[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f2529d[i2] = rVar.a(iArr[i2]);
        }
        Arrays.sort(this.f2529d, new b());
        this.c = new int[this.b];
        while (true) {
            int i3 = this.b;
            if (i >= i3) {
                this.f2530e = new long[i3];
                return;
            } else {
                this.c[i] = rVar.a(this.f2529d[i]);
                i++;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final int a() {
        return this.c[e()];
    }

    public final int a(i iVar) {
        for (int i = 0; i < this.b; i++) {
            if (this.f2529d[i] == iVar) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final i a(int i) {
        return this.f2529d[i];
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final boolean a(int i, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zB = b(i, jElapsedRealtime);
        int i2 = 0;
        while (i2 < this.b && !zB) {
            zB = (i2 == i || b(i2, jElapsedRealtime)) ? false : true;
            i2++;
        }
        if (!zB) {
            return false;
        }
        long[] jArr = this.f2530e;
        jArr[i] = Math.max(jArr[i], jElapsedRealtime + j);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final int b(int i) {
        return this.c[i];
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final r b() {
        return this.a;
    }

    public final boolean b(int i, long j) {
        return this.f2530e[i] > j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final int c(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final i c() {
        return this.f2529d[e()];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.a == aVar.a && Arrays.equals(this.c, aVar.c);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public final int f() {
        return this.c.length;
    }

    public int hashCode() {
        if (this.f2531f == 0) {
            this.f2531f = (System.identityHashCode(this.a) * 31) + Arrays.hashCode(this.c);
        }
        return this.f2531f;
    }
}
