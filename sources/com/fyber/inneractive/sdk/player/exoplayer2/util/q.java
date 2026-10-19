package com.fyber.inneractive.sdk.player.exoplayer2.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements g {
    public boolean a;
    public long b;
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.m f2614d = com.fyber.inneractive.sdk.player.exoplayer2.m.f2478d;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    public com.fyber.inneractive.sdk.player.exoplayer2.m a(com.fyber.inneractive.sdk.player.exoplayer2.m mVar) {
        if (this.a) {
            a(o());
        }
        this.f2614d = mVar;
        return mVar;
    }

    public void a(long j) {
        this.b = j;
        if (this.a) {
            this.c = SystemClock.elapsedRealtime();
        }
    }

    public void a(g gVar) {
        a(gVar.o());
        this.f2614d = gVar.i();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    public com.fyber.inneractive.sdk.player.exoplayer2.m i() {
        return this.f2614d;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    public long o() {
        long j = this.b;
        if (!this.a) {
            return j;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.c;
        com.fyber.inneractive.sdk.player.exoplayer2.m mVar = this.f2614d;
        return j + (mVar.a == 1.0f ? com.fyber.inneractive.sdk.player.exoplayer2.b.a(jElapsedRealtime) : jElapsedRealtime * ((long) mVar.c));
    }
}
