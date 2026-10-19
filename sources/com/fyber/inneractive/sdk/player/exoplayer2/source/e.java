package com.fyber.inneractive.sdk.player.exoplayer2.source;

import com.fyber.inneractive.sdk.player.controller.u;
import com.fyber.inneractive.sdk.player.exoplayer2.source.f;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Runnable {
    public final /* synthetic */ Object a;
    public final /* synthetic */ long b;
    public final /* synthetic */ f.a c;

    public e(f.a aVar, int i, com.fyber.inneractive.sdk.player.exoplayer2.i iVar, int i2, Object obj, long j) {
        this.c = aVar;
        this.a = obj;
        this.b = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        f.a aVar = this.c;
        f fVar = aVar.b;
        f.a.a(aVar, this.b);
        IAlog.a("%s AdaptiveMediaSourceEventListener onDownstreamFormatChanged called.", ((u) fVar).b());
    }
}
