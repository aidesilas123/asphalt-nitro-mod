package com.fyber.inneractive.sdk.player.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.e;
import com.fyber.inneractive.sdk.player.exoplayer2.h;
import com.fyber.inneractive.sdk.player.exoplayer2.p;
import com.fyber.inneractive.sdk.player.exoplayer2.source.s;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements e {
    public final n[] a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f2460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h f2461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArraySet<e.a> f2462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p.c f2463g;
    public final p.b h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public p o;
    public Object p;
    public s q;
    public com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f r;
    public m s;
    public h.b t;
    public int u;
    public long v;

    @SuppressLint({"HandlerLeak"})
    public g(n[] nVarArr, com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g gVar, c cVar) {
        Log.i("ExoPlayerImpl", "Init ExoPlayerLib/2.4.4 [" + u.f2616e + o2.i.f6491e);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(nVarArr.length > 0);
        this.a = (n[]) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(nVarArr);
        this.b = (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(gVar);
        this.j = false;
        this.k = 1;
        this.f2462f = new CopyOnWriteArraySet<>();
        com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f fVar = new com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f(new com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[nVarArr.length]);
        this.c = fVar;
        this.o = p.a;
        this.f2463g = new p.c();
        this.h = new p.b();
        this.q = s.f2528d;
        this.r = fVar;
        this.s = m.f2478d;
        f fVar2 = new f(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f2460d = fVar2;
        h.b bVar = new h.b(0, 0L);
        this.t = bVar;
        this.f2461e = new h(nVarArr, gVar, cVar, this.j, fVar2, bVar, this);
    }

    public int a() {
        return (this.o.c() || this.l > 0) ? this.u : this.o.a(this.t.a, this.h, false).c;
    }

    public void a(int i, long j) {
        if (i < 0 || (!this.o.c() && i >= this.o.b())) {
            throw new k(this.o, i, j);
        }
        this.l++;
        this.u = i;
        if (!this.o.c()) {
            this.o.a(i, this.f2463g, false, 0L);
            long j2 = j == C.TIME_UNSET ? this.f2463g.f2500e : j;
            p.c cVar = this.f2463g;
            int i2 = cVar.c;
            long jA = cVar.f2502g + b.a(j2);
            long j3 = this.o.a(i2, this.h, false).f2497d;
            while (j3 != C.TIME_UNSET && jA >= j3 && i2 < this.f2463g.f2499d) {
                jA -= j3;
                i2++;
                j3 = this.o.a(i2, this.h, false).f2497d;
            }
        }
        if (j == C.TIME_UNSET) {
            this.v = 0L;
            this.f2461e.f2466f.obtainMessage(3, new h.c(this.o, i, C.TIME_UNSET)).sendToTarget();
            return;
        }
        this.v = j;
        this.f2461e.f2466f.obtainMessage(3, new h.c(this.o, i, b.a(j))).sendToTarget();
        Iterator<e.a> it = this.f2462f.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void a(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.f2461e.f2466f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            Iterator<e.a> it = this.f2462f.iterator();
            while (it.hasNext()) {
                it.next().a(z, this.k);
            }
        }
    }

    public void a(e.c... cVarArr) {
        h hVar = this.f2461e;
        if (hVar.r) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        } else {
            hVar.w++;
            hVar.f2466f.obtainMessage(11, cVarArr).sendToTarget();
        }
    }

    public void b() {
        h hVar = this.f2461e;
        synchronized (hVar) {
            if (!hVar.r) {
                hVar.f2466f.sendEmptyMessage(6);
                while (!hVar.r) {
                    try {
                        hVar.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                hVar.f2467g.quit();
            }
        }
        this.f2460d.removeCallbacksAndMessages(null);
    }
}
