package com.fyber.inneractive.sdk.player.exoplayer2.source;

import com.fyber.inneractive.sdk.player.controller.u;
import com.fyber.inneractive.sdk.player.exoplayer2.source.f;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Runnable {
    public final /* synthetic */ Object a;
    public final /* synthetic */ long b;
    public final /* synthetic */ long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ IOException f2510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f.a f2511e;

    public d(f.a aVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar, int i, int i2, com.fyber.inneractive.sdk.player.exoplayer2.i iVar, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
        this.f2511e = aVar;
        this.a = obj;
        this.b = j;
        this.c = j2;
        this.f2510d = iOException;
    }

    @Override // java.lang.Runnable
    public void run() {
        f.a aVar = this.f2511e;
        f fVar = aVar.b;
        f.a.a(aVar, this.b);
        f.a.a(this.f2511e, this.c);
        IAlog.a("%s AdaptiveMediaSourceEventListener onLoadError called. with exception %s", ((u) fVar).b(), this.f2510d);
    }
}
