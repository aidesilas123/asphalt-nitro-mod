package com.fyber.inneractive.sdk.player.exoplayer2.trackselection;

import com.fyber.inneractive.sdk.player.exoplayer2.source.r;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2538g;
    public final Object h;

    public c(r rVar, int i) {
        this(rVar, i, 0, null);
    }

    public c(r rVar, int i, int i2, Object obj) {
        super(rVar, i);
        this.f2538g = i2;
        this.h = null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public void a(long j) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public int d() {
        return this.f2538g;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public int e() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e
    public Object g() {
        return this.h;
    }
}
