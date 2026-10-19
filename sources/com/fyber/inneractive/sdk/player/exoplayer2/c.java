package com.fyber.inneractive.sdk.player.exoplayer2;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.k a;
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2218g;

    public c(com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar, int i, int i2, long j, long j2) {
        this(kVar, i, i2, j, j2, null);
    }

    public c(com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar, int i, int i2, long j, long j2, com.fyber.inneractive.sdk.player.exoplayer2.util.n nVar) {
        this.a = kVar;
        this.b = ((long) i) * 1000;
        this.c = ((long) i2) * 1000;
        this.f2215d = j * 1000;
        this.f2216e = j2 * 1000;
    }

    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.b a() {
        return this.a;
    }

    public final void a(boolean z) {
        this.f2217f = 0;
        this.f2218g = false;
        if (z) {
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar = this.a;
            synchronized (kVar) {
                if (kVar.a) {
                    synchronized (kVar) {
                        boolean z2 = kVar.f2577e > 0;
                        kVar.f2577e = 0;
                        if (z2) {
                            kVar.b();
                        }
                    }
                }
            }
        }
    }

    public boolean a(long j) {
        int i;
        boolean z = false;
        char c = j > this.c ? (char) 0 : j < this.b ? (char) 2 : (char) 1;
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar = this.a;
        synchronized (kVar) {
            i = kVar.f2578f * kVar.b;
        }
        boolean z2 = i >= this.f2217f;
        boolean z3 = this.f2218g;
        if (c == 2 || (c == 1 && z3 && !z2)) {
            z = true;
        }
        this.f2218g = z;
        return z;
    }
}
