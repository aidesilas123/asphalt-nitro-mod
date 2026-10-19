package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {
    public d a;
    public n b;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f2369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2371f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2372g;
    public int h;
    public int i;
    public a j;
    public long k;
    public boolean l;
    public boolean m;

    public static class a {
        public com.fyber.inneractive.sdk.player.exoplayer2.i a;
        public f b;
    }

    public static final class b implements f {
        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public long a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
            return -1L;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public m b() {
            return new m.a(C.TIME_UNSET);
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public long c(long j) {
            return 0L;
        }
    }

    public long a(long j) {
        return (((long) this.i) * j) / 1000000;
    }

    public abstract long a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar);

    public void a(boolean z) {
        if (z) {
            this.j = new a();
            this.f2371f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.f2370e = -1L;
        this.f2372g = 0L;
    }

    public abstract boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, long j, a aVar) throws InterruptedException, IOException;

    public void b(long j) {
        this.f2372g = j;
    }
}
