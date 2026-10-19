package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import com.fyber.inneractive.sdk.player.exoplayer2.upstream.f;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements f.a {
    public final a a;
    public final long b;

    public c(a aVar, long j) {
        this(aVar, j, CacheDataSink.DEFAULT_BUFFER_SIZE);
    }

    public c(a aVar, long j, int i) {
        this.a = aVar;
        this.b = j;
    }
}
