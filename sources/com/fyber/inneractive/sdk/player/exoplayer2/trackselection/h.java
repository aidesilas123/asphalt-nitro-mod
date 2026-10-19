package com.fyber.inneractive.sdk.player.exoplayer2.trackselection;

import com.fyber.inneractive.sdk.player.exoplayer2.o;
import com.fyber.inneractive.sdk.player.exoplayer2.source.s;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    public final s a;
    public final f b;
    public final Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o[] f2539d;

    public h(s sVar, f fVar, Object obj, o[] oVarArr) {
        this.a = sVar;
        this.b = fVar;
        this.c = obj;
        this.f2539d = oVarArr;
    }

    public boolean a(h hVar, int i) {
        return hVar != null && u.a(this.b.b[i], hVar.b.b[i]) && u.a(this.f2539d[i], hVar.f2539d[i]);
    }
}
