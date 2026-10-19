package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.d;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.f;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements g.a {
    public final a a;
    public final g.a b;
    public final g.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f.a f2551d;

    public e(a aVar, g.a aVar2, g.a aVar3, f.a aVar4, int i, d.a aVar5) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f2551d = aVar4;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g.a
    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.g a() {
        b bVar;
        a aVar = this.a;
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVarA = this.b.a();
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVarA2 = this.c.a();
        f.a aVar2 = this.f2551d;
        if (aVar2 != null) {
            c cVar = (c) aVar2;
            bVar = new b(cVar.a, cVar.b, CacheDataSink.DEFAULT_BUFFER_SIZE);
        } else {
            bVar = null;
        }
        return new d(aVar, gVarA, gVarA2, bVar, 2, null);
    }
}
