package com.fyber.inneractive.sdk.player.exoplayer2.source;

import com.fyber.inneractive.sdk.player.exoplayer2.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends com.fyber.inneractive.sdk.player.exoplayer2.p {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f2524g = new Object();
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2527f;

    public q(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.b = j;
        this.c = j2;
        this.f2525d = j3;
        this.f2526e = j4;
        this.f2527f = z2;
    }

    public q(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
    public int a() {
        return 1;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
    public int a(Object obj) {
        return f2524g.equals(obj) ? 0 : -1;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
    public p.b a(int i, p.b bVar, boolean z) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i, 0, 1);
        Object obj = z ? f2524g : null;
        long j = this.b;
        long j2 = -this.f2525d;
        bVar.a = obj;
        bVar.b = obj;
        bVar.c = 0;
        bVar.f2497d = j;
        bVar.f2498e = j2;
        return bVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
    public p.c a(int i, p.c cVar, boolean z, long j) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i, 0, 1);
        Object obj = z ? f2524g : null;
        long j2 = this.f2526e;
        boolean z2 = this.f2527f;
        if (z2) {
            j2 += j;
            if (j2 > this.c) {
                j2 = C.TIME_UNSET;
            }
        }
        long j3 = this.c;
        long j4 = this.f2525d;
        cVar.a = obj;
        cVar.b = z2;
        cVar.f2500e = j2;
        cVar.f2501f = j3;
        cVar.c = 0;
        cVar.f2499d = 0;
        cVar.f2502g = j4;
        return cVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
    public int b() {
        return 1;
    }
}
