package com.fyber.inneractive.sdk.player.exoplayer2.source.chunk;

import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.j;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.x;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements x.c {
    public final j a;
    public final int b;
    public final i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f2509g;
    public final g h;

    public a(g gVar, j jVar, int i, i iVar, int i2, Object obj, long j, long j2) {
        this.h = (g) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(gVar);
        this.a = (j) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(jVar);
        this.b = i;
        this.c = iVar;
        this.f2506d = i2;
        this.f2507e = obj;
        this.f2508f = j;
        this.f2509g = j2;
    }

    public abstract long c();
}
