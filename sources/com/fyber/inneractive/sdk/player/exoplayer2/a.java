package com.fyber.inneractive.sdk.player.exoplayer2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements n {
    public final int a;
    public o b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.source.o f2183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2185g = true;
    public boolean h;

    public a(int i) {
        this.a = i;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final int a() {
        return this.f2182d;
    }

    public final int a(j jVar, com.fyber.inneractive.sdk.player.exoplayer2.decoder.b bVar, boolean z) {
        int iA = this.f2183e.a(jVar, bVar, z);
        if (iA == -4) {
            if (bVar.b(4)) {
                this.f2185g = true;
                return this.h ? -4 : -3;
            }
            bVar.f2223d += this.f2184f;
        } else if (iA == -5) {
            i iVar = jVar.a;
            long j = iVar.w;
            if (j != Long.MAX_VALUE) {
                jVar.a = iVar.a(j + this.f2184f);
            }
        }
        return iA;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void a(int i) {
        this.c = i;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void a(long j) throws d {
        this.h = false;
        this.f2185g = false;
        a(j, false);
    }

    public abstract void a(long j, boolean z) throws d;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void a(o oVar, i[] iVarArr, com.fyber.inneractive.sdk.player.exoplayer2.source.o oVar2, long j, boolean z, long j2) throws d {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2182d == 0);
        this.b = oVar;
        this.f2182d = 1;
        a(z);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!this.h);
        this.f2183e = oVar2;
        this.f2185g = false;
        this.f2184f = j2;
        a(iVarArr);
        a(j, z);
    }

    public abstract void a(boolean z) throws d;

    public void a(i[] iVarArr) throws d {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void a(i[] iVarArr, com.fyber.inneractive.sdk.player.exoplayer2.source.o oVar, long j) throws d {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!this.h);
        this.f2183e = oVar;
        this.f2185g = false;
        this.f2184f = j;
        a(iVarArr);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void c() {
        this.h = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void d() throws d {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2182d == 2);
        this.f2182d = 1;
        r();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void e() throws IOException {
        this.f2183e.a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void f() throws d {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2182d == 1);
        this.f2182d = 2;
        q();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final boolean g() {
        return this.f2185g;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final boolean h() {
        return this.h;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public com.fyber.inneractive.sdk.player.exoplayer2.util.g j() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final int k() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final void l() {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2182d == 1);
        this.f2182d = 0;
        this.f2183e = null;
        this.h = false;
        p();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final a m() {
        return this;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.n
    public final com.fyber.inneractive.sdk.player.exoplayer2.source.o n() {
        return this.f2183e;
    }

    public abstract void p();

    public abstract void q() throws d;

    public abstract void r() throws d;
}
