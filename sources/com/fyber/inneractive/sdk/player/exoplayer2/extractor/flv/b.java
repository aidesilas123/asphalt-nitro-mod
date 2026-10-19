package com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.f;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.l;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements f, m {
    public static final int n = u.a("FLV");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public h f2243e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2245g;
    public int h;
    public int i;
    public long j;
    public a k;
    public e l;
    public c m;
    public final k a = new k(4);
    public final k b = new k(9);
    public final k c = new k(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f2242d = new k();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2244f = 1;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(g gVar, l lVar) throws InterruptedException, IOException {
        while (true) {
            int i = this.f2244f;
            boolean z = true;
            if (i == 1) {
                if (((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.b.a, 0, 9, true)) {
                    this.b.e(0);
                    this.b.f(4);
                    int iL = this.b.l();
                    boolean z2 = (iL & 4) != 0;
                    boolean z3 = (iL & 1) != 0;
                    if (z2 && this.k == null) {
                        this.k = new a(this.f2243e.a(8, 1));
                    }
                    if (z3 && this.l == null) {
                        this.l = new e(this.f2243e.a(9, 2));
                    }
                    if (this.m == null) {
                        this.m = new c(null);
                    }
                    this.f2243e.c();
                    this.f2243e.a(this);
                    this.f2245g = (this.b.c() - 9) + 4;
                    this.f2244f = 2;
                } else {
                    z = false;
                }
                if (!z) {
                    return -1;
                }
            } else if (i == 2) {
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c(this.f2245g);
                this.f2245g = 0;
                this.f2244f = 3;
            } else if (i == 3) {
                if (((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.c.a, 0, 11, true)) {
                    this.c.e(0);
                    this.h = this.c.l();
                    this.i = this.c.n();
                    this.j = this.c.n();
                    this.j = (((long) (this.c.l() << 24)) | this.j) * 1000;
                    this.c.f(3);
                    this.f2244f = 4;
                } else {
                    z = false;
                }
                if (!z) {
                    return -1;
                }
            } else if (i == 4 && c(gVar)) {
                return 0;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long a(long j) {
        return 0L;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2244f = 1;
        this.f2245g = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(h hVar) {
        this.f2243e = hVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public boolean a() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(g gVar) throws InterruptedException, IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.a(this.a.a, 0, 3, false);
        this.a.e(0);
        if (this.a.n() != n) {
            return false;
        }
        bVar.a(this.a.a, 0, 2, false);
        this.a.e(0);
        if ((this.a.q() & 250) != 0) {
            return false;
        }
        bVar.a(this.a.a, 0, 4, false);
        this.a.e(0);
        int iC = this.a.c();
        bVar.f2229e = 0;
        bVar.a(iC, false);
        bVar.a(this.a.a, 0, 4, false);
        this.a.e(0);
        return this.a.c() == 0;
    }

    public final k b(g gVar) throws InterruptedException, IOException {
        if (this.i > this.f2242d.b()) {
            k kVar = this.f2242d;
            kVar.a = new byte[Math.max(kVar.b() * 2, this.i)];
            kVar.c = 0;
            kVar.b = 0;
        } else {
            this.f2242d.e(0);
        }
        this.f2242d.d(this.i);
        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.f2242d.a, 0, this.i, false);
        return this.f2242d;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long c() {
        return this.m.b;
    }

    public final boolean c(g gVar) throws InterruptedException, IOException {
        boolean z;
        c cVar;
        e eVar;
        a aVar;
        int i = this.h;
        if (i == 8 && (aVar = this.k) != null) {
            aVar.a(b(gVar), this.j);
        } else if (i == 9 && (eVar = this.l) != null) {
            eVar.a(b(gVar), this.j);
        } else {
            if (i != 18 || (cVar = this.m) == null) {
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c(this.i);
                z = false;
                this.f2245g = 4;
                this.f2244f = 2;
                return z;
            }
            cVar.a(b(gVar), this.j);
        }
        z = true;
        this.f2245g = 4;
        this.f2244f = 2;
        return z;
    }
}
