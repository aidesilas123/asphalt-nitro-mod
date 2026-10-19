package com.fyber.inneractive.sdk.player.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.fyber.inneractive.sdk.player.exoplayer2.e;
import com.fyber.inneractive.sdk.player.exoplayer2.p;
import com.fyber.inneractive.sdk.player.exoplayer2.source.m;
import com.fyber.inneractive.sdk.player.exoplayer2.source.n;
import com.fyber.inneractive.sdk.player.exoplayer2.source.s;
import com.fyber.inneractive.sdk.player.exoplayer2.util.q;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Handler.Callback, m.a, n.a {
    public c A;
    public long B;
    public a C;
    public a D;
    public a E;
    public p F;
    public final n[] a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.a[] b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.c f2464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f2465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f2466f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HandlerThread f2467g;
    public final Handler h;
    public final e i;
    public final p.c j;
    public final p.b k;
    public b l;
    public m m;
    public n n;
    public com.fyber.inneractive.sdk.player.exoplayer2.util.g o;
    public com.fyber.inneractive.sdk.player.exoplayer2.source.n p;
    public n[] q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v = 1;
    public int w;
    public int x;
    public long y;
    public int z;

    public static final class a {
        public final com.fyber.inneractive.sdk.player.exoplayer2.source.m a;
        public final Object b;
        public final com.fyber.inneractive.sdk.player.exoplayer2.source.o[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean[] f2468d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f2469e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2470f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f2471g;
        public boolean h;
        public boolean i;
        public boolean j;
        public a k;
        public boolean l;
        public com.fyber.inneractive.sdk.player.exoplayer2.trackselection.h m;
        public final n[] n;
        public final com.fyber.inneractive.sdk.player.exoplayer2.a[] o;
        public final com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g p;
        public final com.fyber.inneractive.sdk.player.exoplayer2.c q;
        public final com.fyber.inneractive.sdk.player.exoplayer2.source.n r;
        public com.fyber.inneractive.sdk.player.exoplayer2.trackselection.h s;

        public a(n[] nVarArr, com.fyber.inneractive.sdk.player.exoplayer2.a[] aVarArr, long j, com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.c cVar, com.fyber.inneractive.sdk.player.exoplayer2.source.n nVar, Object obj, int i, boolean z, long j2) {
            this.n = nVarArr;
            this.o = aVarArr;
            this.f2469e = j;
            this.p = gVar;
            this.q = cVar;
            this.r = nVar;
            this.b = com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(obj);
            this.f2470f = i;
            this.h = z;
            this.f2471g = j2;
            this.c = new com.fyber.inneractive.sdk.player.exoplayer2.source.o[nVarArr.length];
            this.f2468d = new boolean[nVarArr.length];
            this.a = nVar.a(i, cVar.a(), j2);
        }

        public long a() {
            return this.f2469e - this.f2471g;
        }

        public long a(long j) {
            return Math.abs(j - a());
        }

        public long a(long j, boolean z, boolean[] zArr) {
            int i;
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f fVar = this.m.b;
            int i2 = 0;
            while (true) {
                boolean z2 = true;
                if (i2 >= fVar.a) {
                    break;
                }
                boolean[] zArr2 = this.f2468d;
                if (z || !this.m.a(this.s, i2)) {
                    z2 = false;
                }
                zArr2[i2] = z2;
                i2++;
            }
            long jA = this.a.a((com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[]) fVar.b.clone(), this.f2468d, this.c, zArr, j);
            this.s = this.m;
            this.j = false;
            int i3 = 0;
            while (true) {
                com.fyber.inneractive.sdk.player.exoplayer2.source.o[] oVarArr = this.c;
                if (i3 >= oVarArr.length) {
                    break;
                }
                if (oVarArr[i3] != null) {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(fVar.b[i3] != null);
                    this.j = true;
                } else {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(fVar.b[i3] == null);
                }
                i3++;
            }
            com.fyber.inneractive.sdk.player.exoplayer2.c cVar = this.q;
            n[] nVarArr = this.n;
            s sVar = this.m.a;
            cVar.f2217f = 0;
            for (int i4 = 0; i4 < nVarArr.length; i4++) {
                if (fVar.b[i4] != null) {
                    int i5 = cVar.f2217f;
                    int iK = nVarArr[i4].k();
                    int i6 = u.a;
                    if (iK == 0) {
                        i = 16777216;
                    } else if (iK == 1) {
                        i = C.DEFAULT_AUDIO_BUFFER_SIZE;
                    } else if (iK == 2) {
                        i = C.DEFAULT_VIDEO_BUFFER_SIZE;
                    } else {
                        if (iK != 3 && iK != 4) {
                            throw new IllegalStateException();
                        }
                        i = 131072;
                    }
                    cVar.f2217f = i5 + i;
                }
            }
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar = cVar.a;
            int i7 = cVar.f2217f;
            synchronized (kVar) {
                boolean z3 = i7 < kVar.f2577e;
                kVar.f2577e = i7;
                if (z3) {
                    kVar.b();
                }
            }
            return jA;
        }

        public boolean b() {
            return this.i && (!this.j || this.a.d() == Long.MIN_VALUE);
        }

        public void c() {
            try {
                this.r.a(this.a);
            } catch (RuntimeException e2) {
                Log.e("ExoPlayerImplInternal", "Period release failed.", e2);
            }
        }

        public boolean d() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
            boolean z;
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.h hVarA = this.p.a(this.o, this.a.b());
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.h hVar = this.s;
            hVarA.getClass();
            if (hVar == null) {
                z = false;
                break;
            }
            for (int i = 0; i < hVarA.b.a; i++) {
                if (!hVarA.a(hVar, i)) {
                    z = false;
                    break;
                }
            }
            z = true;
            if (z) {
                return false;
            }
            this.m = hVarA;
            return true;
        }
    }

    public static final class b {
        public final int a;
        public final long b;
        public volatile long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public volatile long f2472d;

        public b(int i, long j) {
            this.a = i;
            this.b = j;
            this.c = j;
            this.f2472d = j;
        }
    }

    public static final class c {
        public final p a;
        public final int b;
        public final long c;

        public c(p pVar, int i, long j) {
            this.a = pVar;
            this.b = i;
            this.c = j;
        }
    }

    public static final class d {
        public final p a;
        public final Object b;
        public final b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f2473d;

        public d(p pVar, Object obj, b bVar, int i) {
            this.a = pVar;
            this.b = obj;
            this.c = bVar;
            this.f2473d = i;
        }
    }

    public h(n[] nVarArr, com.fyber.inneractive.sdk.player.exoplayer2.trackselection.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.c cVar, boolean z, Handler handler, b bVar, e eVar) {
        this.a = nVarArr;
        this.c = gVar;
        this.f2464d = cVar;
        this.s = z;
        this.h = handler;
        this.l = bVar;
        this.i = eVar;
        this.b = new com.fyber.inneractive.sdk.player.exoplayer2.a[nVarArr.length];
        for (int i = 0; i < nVarArr.length; i++) {
            nVarArr[i].a(i);
            this.b[i] = nVarArr[i].m();
        }
        this.f2465e = new q();
        this.q = new n[0];
        this.j = new p.c();
        this.k = new p.b();
        this.m = m.f2478d;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f2467g = handlerThread;
        handlerThread.start();
        this.f2466f = new Handler(handlerThread.getLooper(), this);
    }

    public final int a(int i, p pVar, p pVar2) {
        int iA = -1;
        while (iA == -1 && i < pVar.a() - 1) {
            i++;
            iA = pVar2.a(pVar.a(i, this.k, true).b);
        }
        return iA;
    }

    public final Pair<Integer, Long> a(int i, long j) {
        return a(this.F, i, j, 0L);
    }

    public final Pair<Integer, Long> a(c cVar) {
        p pVar = cVar.a;
        if (pVar.c()) {
            pVar = this.F;
        }
        try {
            Pair<Integer, Long> pairA = a(pVar, cVar.b, cVar.c, 0L);
            p pVar2 = this.F;
            if (pVar2 == pVar) {
                return pairA;
            }
            int iA = pVar2.a(pVar.a(((Integer) pairA.first).intValue(), this.k, true).b);
            if (iA != -1) {
                return Pair.create(Integer.valueOf(iA), pairA.second);
            }
            int iA2 = a(((Integer) pairA.first).intValue(), pVar, this.F);
            if (iA2 != -1) {
                return a(this.F.a(iA2, this.k, false).c, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
            throw new k(this.F, cVar.b, cVar.c);
        }
    }

    public final Pair<Integer, Long> a(p pVar, int i, long j, long j2) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i, 0, pVar.b());
        pVar.a(i, this.j, false, j2);
        if (j == C.TIME_UNSET) {
            j = this.j.f2500e;
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        p.c cVar = this.j;
        int i2 = cVar.c;
        long j3 = cVar.f2502g + j;
        long j4 = pVar.a(i2, this.k, false).f2497d;
        while (j4 != C.TIME_UNSET && j3 >= j4 && i2 < this.j.f2499d) {
            j3 -= j4;
            i2++;
            j4 = pVar.a(i2, this.k, false).f2497d;
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(j3));
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015a A[LOOP:2: B:63:0x015a->B:67:0x016a, LOOP_START] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() throws com.fyber.inneractive.sdk.player.exoplayer2.d, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 897
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.h.a():void");
    }

    public final void a(int i) {
        if (this.v != i) {
            this.v = i;
            this.h.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    public final void a(long j, long j2) {
        this.f2466f.removeMessages(2);
        long jElapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (jElapsedRealtime <= 0) {
            this.f2466f.sendEmptyMessage(2);
        } else {
            this.f2466f.sendEmptyMessageDelayed(2, jElapsedRealtime);
        }
    }

    public final void a(Pair<p, Object> pair) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        int i;
        p pVar = this.F;
        p pVar2 = (p) pair.first;
        this.F = pVar2;
        Object obj = pair.second;
        if (pVar != null) {
            i = 0;
        } else if (this.z > 0) {
            Pair<Integer, Long> pairA = a(this.A);
            i = this.z;
            this.z = 0;
            this.A = null;
            if (pairA == null) {
                a(obj, i);
                return;
            }
            this.l = new b(((Integer) pairA.first).intValue(), ((Long) pairA.second).longValue());
        } else {
            if (this.l.b == C.TIME_UNSET) {
                if (pVar2.c()) {
                    a(obj, 0);
                    return;
                } else {
                    Pair<Integer, Long> pairA2 = a(0, C.TIME_UNSET);
                    this.l = new b(((Integer) pairA2.first).intValue(), ((Long) pairA2.second).longValue());
                }
            }
            i = 0;
        }
        a aVar = this.E;
        if (aVar == null) {
            aVar = this.C;
        }
        if (aVar == null) {
            b(obj, i);
            return;
        }
        int iA = this.F.a(aVar.b);
        if (iA != -1) {
            this.F.a(iA, this.k, false);
            boolean z = iA == this.F.a() - 1 && !this.F.a(this.k.c, this.j).b;
            aVar.f2470f = iA;
            aVar.h = z;
            boolean z2 = aVar == this.D;
            b bVar = this.l;
            if (iA != bVar.a) {
                b bVar2 = new b(iA, bVar.b);
                bVar2.c = bVar.c;
                bVar2.f2472d = bVar.f2472d;
                this.l = bVar2;
            }
            while (true) {
                a aVar2 = aVar.k;
                if (aVar2 == null) {
                    break;
                }
                iA++;
                this.F.a(iA, this.k, true);
                boolean z3 = iA == this.F.a() - 1 && !this.F.a(this.k.c, this.j).b;
                if (aVar2.b.equals(this.k.b)) {
                    aVar2.f2470f = iA;
                    aVar2.h = z3;
                    z2 |= aVar2 == this.D;
                    aVar = aVar2;
                } else if (z2) {
                    this.C = aVar;
                    aVar.k = null;
                    a(aVar2);
                } else {
                    int i2 = this.E.f2470f;
                    this.l = new b(i2, b(i2, this.l.c));
                }
            }
            b(obj, i);
            return;
        }
        int iA2 = a(aVar.f2470f, pVar, this.F);
        if (iA2 == -1) {
            a(obj, i);
            return;
        }
        Pair<Integer, Long> pairA3 = a(this.F.a(iA2, this.k, false).c, C.TIME_UNSET);
        int iIntValue = ((Integer) pairA3.first).intValue();
        long jLongValue = ((Long) pairA3.second).longValue();
        this.F.a(iIntValue, this.k, true);
        Object obj2 = this.k.b;
        aVar.f2470f = -1;
        while (true) {
            aVar = aVar.k;
            if (aVar == null) {
                this.l = new b(iIntValue, b(iIntValue, jLongValue));
                b(obj, i);
                return;
            }
            aVar.f2470f = aVar.b.equals(obj2) ? iIntValue : -1;
        }
    }

    public final void a(a aVar) {
        while (aVar != null) {
            aVar.c();
            aVar = aVar.k;
        }
    }

    public final void a(m mVar) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.g gVar = this.o;
        if (gVar != null) {
            mVar = gVar.a(mVar);
        } else {
            q qVar = this.f2465e;
            if (qVar.a) {
                qVar.a(qVar.o());
            }
            qVar.f2614d = mVar;
        }
        this.m = mVar;
        this.h.obtainMessage(7, mVar).sendToTarget();
    }

    public final void a(n nVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (nVar.a() == 2) {
            nVar.d();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n.a
    public void a(p pVar, Object obj) {
        this.f2466f.obtainMessage(7, Pair.create(pVar, obj)).sendToTarget();
    }

    public final void a(com.fyber.inneractive.sdk.player.exoplayer2.source.m mVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        a aVar = this.C;
        if (aVar == null || aVar.a != mVar) {
            return;
        }
        aVar.i = true;
        aVar.d();
        aVar.f2471g = aVar.a(aVar.f2471g, false, new boolean[aVar.n.length]);
        if (this.E == null) {
            a aVar2 = this.C;
            this.D = aVar2;
            b(aVar2.f2471g);
            b(this.D);
        }
        b();
    }

    public final void a(com.fyber.inneractive.sdk.player.exoplayer2.source.n nVar, boolean z) {
        this.h.sendEmptyMessage(0);
        b(true);
        this.f2464d.a(false);
        if (z) {
            this.l = new b(0, C.TIME_UNSET);
        }
        this.p = nVar;
        nVar.a(this.i, true, (n.a) this);
        a(2);
        this.f2466f.sendEmptyMessage(2);
    }

    public void a(com.fyber.inneractive.sdk.player.exoplayer2.source.p pVar) {
        this.f2466f.obtainMessage(9, (com.fyber.inneractive.sdk.player.exoplayer2.source.m) pVar).sendToTarget();
    }

    public final void a(Object obj, int i) {
        this.l = new b(0, 0L);
        b(obj, i);
        this.l = new b(0, C.TIME_UNSET);
        a(4);
        b(false);
    }

    public final void a(e.c[] cVarArr) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        try {
            for (e.c cVar : cVarArr) {
                cVar.a.a(cVar.b, cVar.c);
            }
            if (this.p != null) {
                this.f2466f.sendEmptyMessage(2);
            }
            synchronized (this) {
                this.x++;
                notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.x++;
                notifyAll();
                throw th;
            }
        }
    }

    public final void a(boolean[] zArr, int i) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        this.q = new n[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            n[] nVarArr = this.a;
            if (i2 >= nVarArr.length) {
                return;
            }
            n nVar = nVarArr[i2];
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e eVar = this.E.m.b.b[i2];
            if (eVar != null) {
                int i4 = i3 + 1;
                this.q[i3] = nVar;
                if (nVar.a() == 0) {
                    o oVar = this.E.m.f2539d[i2];
                    boolean z = this.s && this.v == 3;
                    boolean z2 = !zArr[i2] && z;
                    int iF = eVar.f();
                    i[] iVarArr = new i[iF];
                    for (int i5 = 0; i5 < iF; i5++) {
                        iVarArr[i5] = eVar.a(i5);
                    }
                    a aVar = this.E;
                    nVar.a(oVar, iVarArr, aVar.c[i2], this.B, z2, aVar.a());
                    com.fyber.inneractive.sdk.player.exoplayer2.util.g gVarJ = nVar.j();
                    if (gVarJ != null) {
                        if (this.o != null) {
                            throw new com.fyber.inneractive.sdk.player.exoplayer2.d(2, null, new IllegalStateException("Multiple renderer media clocks enabled."), -1);
                        }
                        this.o = gVarJ;
                        this.n = nVar;
                        gVarJ.a(this.m);
                    }
                    if (z) {
                        nVar.f();
                    }
                }
                i3 = i4;
            }
            i2++;
        }
    }

    public final boolean a(long j) {
        a aVar;
        return j == C.TIME_UNSET || this.l.c < j || ((aVar = this.E.k) != null && aVar.i);
    }

    public final boolean a(boolean z) {
        a aVar = this.C;
        long jD = !aVar.i ? aVar.f2471g : aVar.a.d();
        if (jD == Long.MIN_VALUE) {
            a aVar2 = this.C;
            if (aVar2.h) {
                return true;
            }
            jD = this.F.a(aVar2.f2470f, this.k, false).f2497d;
        }
        com.fyber.inneractive.sdk.player.exoplayer2.c cVar = this.f2464d;
        long jA = jD - this.C.a(this.B);
        long j = z ? cVar.f2216e : cVar.f2215d;
        return j <= 0 || jA >= j;
    }

    public final long b(int i, long j) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        a aVar;
        h();
        this.t = false;
        a(2);
        a aVar2 = this.E;
        if (aVar2 == null) {
            a aVar3 = this.C;
            if (aVar3 != null) {
                aVar3.c();
            }
            aVar = null;
        } else {
            aVar = null;
            while (aVar2 != null) {
                if (aVar2.f2470f == i && aVar2.i) {
                    aVar = aVar2;
                } else {
                    aVar2.c();
                }
                aVar2 = aVar2.k;
            }
        }
        a aVar4 = this.E;
        if (aVar4 != aVar || aVar4 != this.D) {
            for (n nVar : this.q) {
                nVar.l();
            }
            this.q = new n[0];
            this.o = null;
            this.n = null;
            this.E = null;
        }
        if (aVar != null) {
            aVar.k = null;
            this.C = aVar;
            this.D = aVar;
            b(aVar);
            a aVar5 = this.E;
            if (aVar5.j) {
                j = aVar5.a.b(j);
            }
            b(j);
            b();
        } else {
            this.C = null;
            this.D = null;
            this.E = null;
            b(j);
        }
        this.f2466f.sendEmptyMessage(2);
        return j;
    }

    public final void b() {
        a aVar = this.C;
        long jA = !aVar.i ? 0L : aVar.a.a();
        if (jA == Long.MIN_VALUE) {
            c(false);
            return;
        }
        long jA2 = this.C.a(this.B);
        boolean zA = this.f2464d.a(jA - jA2);
        c(zA);
        if (!zA) {
            this.C.l = true;
            return;
        }
        a aVar2 = this.C;
        aVar2.l = false;
        aVar2.a.a(jA2);
    }

    public final void b(long j) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        a aVar = this.E;
        long jA = j + (aVar == null ? 60000000L : aVar.a());
        this.B = jA;
        this.f2465e.a(jA);
        for (n nVar : this.q) {
            nVar.a(this.B);
        }
    }

    public final void b(a aVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (this.E == aVar) {
            return;
        }
        boolean[] zArr = new boolean[this.a.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            n[] nVarArr = this.a;
            if (i >= nVarArr.length) {
                this.E = aVar;
                this.h.obtainMessage(3, aVar.m).sendToTarget();
                a(zArr, i2);
                return;
            }
            n nVar = nVarArr[i];
            zArr[i] = nVar.a() != 0;
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e eVar = aVar.m.b.b[i];
            if (eVar != null) {
                i2++;
            }
            if (zArr[i] && (eVar == null || (nVar.h() && nVar.n() == this.E.c[i]))) {
                if (nVar == this.n) {
                    this.f2465e.a(this.o);
                    this.o = null;
                    this.n = null;
                }
                a(nVar);
                nVar.l();
            }
            i++;
        }
    }

    public final void b(c cVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (this.F == null) {
            this.z++;
            this.A = cVar;
            return;
        }
        Pair<Integer, Long> pairA = a(cVar);
        if (pairA == null) {
            b bVar = new b(0, 0L);
            this.l = bVar;
            this.h.obtainMessage(4, 1, 0, bVar).sendToTarget();
            this.l = new b(0, C.TIME_UNSET);
            a(4);
            b(false);
            return;
        }
        int i = cVar.c == C.TIME_UNSET ? 1 : 0;
        int iIntValue = ((Integer) pairA.first).intValue();
        long jLongValue = ((Long) pairA.second).longValue();
        try {
            b bVar2 = this.l;
            if (iIntValue == bVar2.a && jLongValue / 1000 == bVar2.c / 1000) {
                return;
            }
            long jB = b(iIntValue, jLongValue);
            int i2 = i | (jLongValue == jB ? 0 : 1);
            b bVar3 = new b(iIntValue, jB);
            this.l = bVar3;
            this.h.obtainMessage(4, i2, 0, bVar3).sendToTarget();
        } finally {
            b bVar4 = new b(iIntValue, jLongValue);
            this.l = bVar4;
            this.h.obtainMessage(4, i, 0, bVar4).sendToTarget();
        }
    }

    public final void b(Object obj, int i) {
        this.h.obtainMessage(6, new d(this.F, obj, this.l, i)).sendToTarget();
    }

    public final void b(boolean z) {
        this.f2466f.removeMessages(2);
        this.t = false;
        q qVar = this.f2465e;
        if (qVar.a) {
            qVar.a(qVar.o());
            qVar.a = false;
        }
        this.o = null;
        this.n = null;
        this.B = 60000000L;
        for (n nVar : this.q) {
            try {
                a(nVar);
                nVar.l();
            } catch (com.fyber.inneractive.sdk.player.exoplayer2.d | RuntimeException e2) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e2);
            }
        }
        this.q = new n[0];
        a aVar = this.E;
        if (aVar == null) {
            aVar = this.C;
        }
        a(aVar);
        this.C = null;
        this.D = null;
        this.E = null;
        c(false);
        if (z) {
            com.fyber.inneractive.sdk.player.exoplayer2.source.n nVar2 = this.p;
            if (nVar2 != null) {
                nVar2.b();
                this.p = null;
            }
            this.F = null;
        }
    }

    public final void c() throws IOException {
        a aVar = this.C;
        if (aVar == null || aVar.i) {
            return;
        }
        a aVar2 = this.D;
        if (aVar2 == null || aVar2.k == aVar) {
            for (n nVar : this.q) {
                if (!nVar.g()) {
                    return;
                }
            }
            this.C.a.e();
        }
    }

    public final void c(boolean z) {
        if (this.u != z) {
            this.u = z;
            this.h.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    public final void d() {
        b(true);
        this.f2464d.a(true);
        a(1);
        synchronized (this) {
            this.r = true;
            notifyAll();
        }
    }

    public final void d(boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        this.t = false;
        this.s = z;
        if (!z) {
            h();
            i();
            b(false);
            return;
        }
        int i = this.v;
        if (i == 3) {
            f();
            this.f2466f.sendEmptyMessage(2);
        } else if (i == 2) {
            this.f2466f.sendEmptyMessage(2);
        }
    }

    public final void e() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        a aVar = this.E;
        if (aVar == null) {
            return;
        }
        boolean z = true;
        while (aVar != null && aVar.i) {
            if (aVar.d()) {
                if (z) {
                    a aVar2 = this.D;
                    a aVar3 = this.E;
                    boolean z2 = aVar2 != aVar3;
                    a(aVar3.k);
                    a aVar4 = this.E;
                    aVar4.k = null;
                    this.C = aVar4;
                    this.D = aVar4;
                    boolean[] zArr = new boolean[this.a.length];
                    long jA = aVar4.a(this.l.c, z2, zArr);
                    if (jA != this.l.c) {
                        this.l.c = jA;
                        b(jA);
                    }
                    boolean[] zArr2 = new boolean[this.a.length];
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        n[] nVarArr = this.a;
                        if (i >= nVarArr.length) {
                            break;
                        }
                        n nVar = nVarArr[i];
                        zArr2[i] = nVar.a() != 0;
                        com.fyber.inneractive.sdk.player.exoplayer2.source.o oVar = this.E.c[i];
                        if (oVar != null) {
                            i2++;
                        }
                        if (zArr2[i]) {
                            if (oVar != nVar.n()) {
                                if (nVar == this.n) {
                                    if (oVar == null) {
                                        this.f2465e.a(this.o);
                                    }
                                    this.o = null;
                                    this.n = null;
                                }
                                a(nVar);
                                nVar.l();
                            } else if (zArr[i]) {
                                nVar.a(this.B);
                            }
                        }
                        i++;
                    }
                    this.h.obtainMessage(3, aVar.m).sendToTarget();
                    a(zArr2, i2);
                } else {
                    this.C = aVar;
                    for (a aVar5 = aVar.k; aVar5 != null; aVar5 = aVar5.k) {
                        aVar5.c();
                    }
                    a aVar6 = this.C;
                    aVar6.k = null;
                    if (aVar6.i) {
                        long jMax = Math.max(aVar6.f2471g, aVar6.a(this.B));
                        a aVar7 = this.C;
                        aVar7.a(jMax, false, new boolean[aVar7.n.length]);
                    }
                }
                b();
                i();
                this.f2466f.sendEmptyMessage(2);
                return;
            }
            if (aVar == this.D) {
                z = false;
            }
            aVar = aVar.k;
        }
    }

    public final void f() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        this.t = false;
        q qVar = this.f2465e;
        if (!qVar.a) {
            qVar.c = SystemClock.elapsedRealtime();
            qVar.a = true;
        }
        for (n nVar : this.q) {
            nVar.f();
        }
    }

    public final void g() {
        b(true);
        this.f2464d.a(true);
        a(1);
    }

    public final void h() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        q qVar = this.f2465e;
        if (qVar.a) {
            qVar.a(qVar.o());
            qVar.a = false;
        }
        for (n nVar : this.q) {
            a(nVar);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 0:
                    a((com.fyber.inneractive.sdk.player.exoplayer2.source.n) message.obj, message.arg1 != 0);
                    return true;
                case 1:
                    d(message.arg1 != 0);
                    return true;
                case 2:
                    a();
                    return true;
                case 3:
                    b((c) message.obj);
                    return true;
                case 4:
                    a((m) message.obj);
                    return true;
                case 5:
                    g();
                    return true;
                case 6:
                    d();
                    return true;
                case 7:
                    a((Pair<p, Object>) message.obj);
                    return true;
                case 8:
                    a((com.fyber.inneractive.sdk.player.exoplayer2.source.m) message.obj);
                    return true;
                case 9:
                    com.fyber.inneractive.sdk.player.exoplayer2.source.m mVar = (com.fyber.inneractive.sdk.player.exoplayer2.source.m) message.obj;
                    a aVar = this.C;
                    if (aVar != null && aVar.a == mVar) {
                        b();
                    }
                    return true;
                case 10:
                    e();
                    return true;
                case 11:
                    a((e.c[]) message.obj);
                    return true;
                default:
                    return false;
            }
        } catch (com.fyber.inneractive.sdk.player.exoplayer2.d e2) {
            Log.e("ExoPlayerImplInternal", "Renderer error.", e2);
            this.h.obtainMessage(8, e2).sendToTarget();
            g();
            return true;
        } catch (IOException e3) {
            Log.e("ExoPlayerImplInternal", "Source error.", e3);
            this.h.obtainMessage(8, new com.fyber.inneractive.sdk.player.exoplayer2.d(0, null, e3, -1)).sendToTarget();
            g();
            return true;
        } catch (RuntimeException e4) {
            Log.e("ExoPlayerImplInternal", "Internal runtime error.", e4);
            this.h.obtainMessage(8, new com.fyber.inneractive.sdk.player.exoplayer2.d(2, null, e4, -1)).sendToTarget();
            g();
            return true;
        }
    }

    public final void i() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        a aVar = this.E;
        if (aVar == null) {
            return;
        }
        long jF = aVar.a.f();
        if (jF != C.TIME_UNSET) {
            b(jF);
        } else {
            n nVar = this.n;
            if (nVar == null || nVar.b()) {
                this.B = this.f2465e.o();
            } else {
                long jO = this.o.o();
                this.B = jO;
                this.f2465e.a(jO);
            }
            jF = this.E.a(this.B);
        }
        this.l.c = jF;
        this.y = SystemClock.elapsedRealtime() * 1000;
        long jD = this.q.length == 0 ? Long.MIN_VALUE : this.E.a.d();
        b bVar = this.l;
        if (jD == Long.MIN_VALUE) {
            jD = this.F.a(this.E.f2470f, this.k, false).f2497d;
        }
        bVar.f2472d = jD;
    }
}
