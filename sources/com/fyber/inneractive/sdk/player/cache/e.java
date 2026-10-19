package com.fyber.inneractive.sdk.player.cache;

import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.player.cache.d;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;

/* JADX INFO: loaded from: classes2.dex */
public class e implements g.a {
    public final d.c a;
    public d.b b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s f2156d;

    public e(d.b bVar, d.c cVar, int i, s sVar) {
        this.b = bVar;
        this.c = i;
        this.a = cVar;
        this.f2156d = sVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g.a
    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.g a() {
        d dVar = new d();
        dVar.h = this.b;
        dVar.j = this.c;
        dVar.k = this.f2156d;
        dVar.i = this.a;
        return dVar;
    }
}
