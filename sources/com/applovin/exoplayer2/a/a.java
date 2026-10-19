package com.applovin.exoplayer2.a;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import com.applovin.exoplayer2.a.b;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.k.d;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.p;
import com.applovin.exoplayer2.w1;
import com.applovin.exoplayer2.x1;
import com.json.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a implements an.d, com.applovin.exoplayer2.b.g, com.applovin.exoplayer2.d.g, com.applovin.exoplayer2.h.q, d.a, com.applovin.exoplayer2.m.n {
    private final ba.c U;
    private com.applovin.exoplayer2.l.p<b> bG;
    private final ba.a bI;
    private final com.applovin.exoplayer2.l.d bR;
    private com.applovin.exoplayer2.l.o cm;
    private final C0015a iZ;
    private final SparseArray<b.a> ja;
    private an jb;
    private boolean jc;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.a.a$a, reason: collision with other inner class name */
    private static final class C0015a {
        private final ba.a bI;
        private com.applovin.exoplayer2.common.a.s<p.a> jd = com.applovin.exoplayer2.common.a.s.ga();
        private com.applovin.exoplayer2.common.a.u<p.a, ba> je = com.applovin.exoplayer2.common.a.u.gi();

        @Nullable
        private p.a jf;
        private p.a jg;
        private p.a jh;

        public C0015a(ba.a aVar) {
            this.bI = aVar;
        }

        @Nullable
        private static p.a a(an anVar, com.applovin.exoplayer2.common.a.s<p.a> sVar, @Nullable p.a aVar, ba.a aVar2) {
            ba baVarAX = anVar.aX();
            int iAK = anVar.aK();
            Object objB = baVarAX.isEmpty() ? null : baVarAX.b(iAK);
            int iB = (anVar.aP() || baVarAX.isEmpty()) ? -1 : baVarAX.a(iAK, aVar2).B(com.applovin.exoplayer2.h.g(anVar.aN()) - aVar2.df());
            for (int i = 0; i < sVar.size(); i++) {
                p.a aVar3 = sVar.get(i);
                if (a(aVar3, objB, anVar.aP(), anVar.aQ(), anVar.aR(), iB)) {
                    return aVar3;
                }
            }
            if (sVar.isEmpty() && aVar != null) {
                if (a(aVar, objB, anVar.aP(), anVar.aQ(), anVar.aR(), iB)) {
                    return aVar;
                }
            }
            return null;
        }

        private void a(u.a<p.a, ba> aVar, @Nullable p.a aVar2, ba baVar) {
            if (aVar2 == null) {
                return;
            }
            if (baVar.c(aVar2.gM) != -1) {
                aVar.l(aVar2, baVar);
                return;
            }
            ba baVar2 = this.je.get(aVar2);
            if (baVar2 != null) {
                aVar.l(aVar2, baVar2);
            }
        }

        private static boolean a(p.a aVar, @Nullable Object obj, boolean z, int i, int i2, int i3) {
            if (aVar.gM.equals(obj)) {
                return (z && aVar.gP == i && aVar.gQ == i2) || (!z && aVar.gP == -1 && aVar.LM == i3);
            }
            return false;
        }

        private void d(ba baVar) {
            u.a<p.a, ba> aVarGj = com.applovin.exoplayer2.common.a.u.gj();
            if (this.jd.isEmpty()) {
                a(aVarGj, this.jg, baVar);
                if (!Objects.equal(this.jh, this.jg)) {
                    a(aVarGj, this.jh, baVar);
                }
                if (!Objects.equal(this.jf, this.jg) && !Objects.equal(this.jf, this.jh)) {
                    a(aVarGj, this.jf, baVar);
                }
            } else {
                for (int i = 0; i < this.jd.size(); i++) {
                    a(aVarGj, this.jd.get(i), baVar);
                }
                if (!this.jd.contains(this.jf)) {
                    a(aVarGj, this.jf, baVar);
                }
            }
            this.je = aVarGj.gq();
        }

        public void a(List<p.a> list, @Nullable p.a aVar, an anVar) {
            this.jd = com.applovin.exoplayer2.common.a.s.d(list);
            if (!list.isEmpty()) {
                this.jg = list.get(0);
                this.jh = (p.a) com.applovin.exoplayer2.l.a.checkNotNull(aVar);
            }
            if (this.jf == null) {
                this.jf = a(anVar, this.jd, this.jg, this.bI);
            }
            d(anVar.aX());
        }

        @Nullable
        public ba d(p.a aVar) {
            return this.je.get(aVar);
        }

        @Nullable
        public p.a dw() {
            return this.jf;
        }

        @Nullable
        public p.a dx() {
            return this.jg;
        }

        @Nullable
        public p.a dy() {
            return this.jh;
        }

        @Nullable
        public p.a dz() {
            if (this.jd.isEmpty()) {
                return null;
            }
            return (p.a) com.applovin.exoplayer2.common.a.x.f((Iterable) this.jd);
        }

        public void f(an anVar) {
            this.jf = a(anVar, this.jd, this.jg, this.bI);
        }

        public void g(an anVar) {
            this.jf = a(anVar, this.jd, this.jg, this.bI);
            d(anVar.aX());
        }
    }

    public a(com.applovin.exoplayer2.l.d dVar) {
        this.bR = (com.applovin.exoplayer2.l.d) com.applovin.exoplayer2.l.a.checkNotNull(dVar);
        this.bG = new com.applovin.exoplayer2.l.p<>(ai.pZ(), dVar, new p.b() { // from class: com.applovin.exoplayer2.a.f1
            @Override // com.applovin.exoplayer2.l.p.b
            public final void invoke(Object obj, com.applovin.exoplayer2.l.m mVar) {
                a.a((b) obj, mVar);
            }
        });
        ba.a aVar = new ba.a();
        this.bI = aVar;
        this.U = new ba.c();
        this.iZ = new C0015a(aVar);
        this.ja = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, b bVar) {
        bVar.c(aVar);
        bVar.f(aVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, an.e eVar, an.e eVar2, b bVar) {
        bVar.d(aVar, i);
        bVar.a(aVar, eVar, eVar2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.applovin.exoplayer2.c.e eVar, b bVar) {
        bVar.d(aVar, eVar);
        bVar.b(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.applovin.exoplayer2.m.o oVar, b bVar) {
        bVar.a(aVar, oVar);
        bVar.a(aVar, oVar.dE, oVar.height, oVar.afl, oVar.dH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar, b bVar) {
        bVar.b(aVar, vVar);
        bVar.b(aVar, vVar, hVar);
        bVar.a(aVar, 2, vVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, String str, long j, long j2, b bVar) {
        bVar.b(aVar, str, j);
        bVar.b(aVar, str, j2, j);
        bVar.a(aVar, 2, str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b bVar, com.applovin.exoplayer2.l.m mVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(an anVar, b bVar, com.applovin.exoplayer2.l.m mVar) {
        bVar.a(anVar, new b.C0016b(mVar, this.ja));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, com.applovin.exoplayer2.c.e eVar, b bVar) {
        bVar.c(aVar, eVar);
        bVar.a(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar, b bVar) {
        bVar.a(aVar, vVar);
        bVar.a(aVar, vVar, hVar);
        bVar.a(aVar, 1, vVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, String str, long j, long j2, b bVar) {
        bVar.a(aVar, str, j);
        bVar.a(aVar, str, j2, j);
        bVar.a(aVar, 1, str, j);
    }

    private b.a c(@Nullable p.a aVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(this.jb);
        ba baVarD = aVar == null ? null : this.iZ.d(aVar);
        if (aVar != null && baVarD != null) {
            return a(baVarD, baVarD.a(aVar.gM, this.bI).cN, aVar);
        }
        int iAL = this.jb.aL();
        ba baVarAX = this.jb.aX();
        if (!(iAL < baVarAX.cP())) {
            baVarAX = ba.iw;
        }
        return a(baVarAX, iAL, (p.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, com.applovin.exoplayer2.c.e eVar, b bVar) {
        bVar.b(aVar, eVar);
        bVar.b(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, boolean z, b bVar) {
        bVar.d(aVar, z);
        bVar.c(aVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, com.applovin.exoplayer2.c.e eVar, b bVar) {
        bVar.a(aVar, eVar);
        bVar.a(aVar, 1, eVar);
    }

    private b.a ds() {
        return c(this.iZ.dx());
    }

    private b.a dt() {
        return c(this.iZ.dy());
    }

    private b.a du() {
        return c(this.iZ.dz());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void dv() {
        this.bG.release();
    }

    private b.a f(int i, @Nullable p.a aVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(this.jb);
        if (aVar != null) {
            return this.iZ.d(aVar) != null ? c(aVar) : a(ba.iw, i, aVar);
        }
        ba baVarAX = this.jb.aX();
        if (!(i < baVarAX.cP())) {
            baVarAX = ba.iw;
        }
        return a(baVarAX, i, (p.a) null);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.b.g
    public final void A(final boolean z) {
        final b.a aVarDt = dt();
        a(aVarDt, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new p.a() { // from class: com.applovin.exoplayer2.a.y
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(aVarDt, z);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void Z(final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, 4, new p.a() { // from class: com.applovin.exoplayer2.a.u
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, i);
            }
        });
    }

    protected final b.a a(ba baVar, int i, @Nullable p.a aVar) {
        long jAS;
        p.a aVar2 = baVar.isEmpty() ? null : aVar;
        long jOK = this.bR.oK();
        boolean z = baVar.equals(this.jb.aX()) && i == this.jb.aL();
        long jDj = 0;
        if (aVar2 != null && aVar2.la()) {
            if (z && this.jb.aQ() == aVar2.gP && this.jb.aR() == aVar2.gQ) {
                jDj = this.jb.aN();
            }
        } else {
            if (z) {
                jAS = this.jb.aS();
                return new b.a(jOK, baVar, i, aVar2, jAS, this.jb.aX(), this.jb.aL(), this.iZ.dw(), this.jb.aN(), this.jb.aO());
            }
            if (!baVar.isEmpty()) {
                jDj = baVar.a(i, this.U).dj();
            }
        }
        jAS = jDj;
        return new b.a(jOK, baVar, i, aVar2, jAS, this.jb.aX(), this.jb.aL(), this.iZ.dw(), this.jb.aN(), this.jb.aO());
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void a(final int i, final long j, final long j2) {
        final b.a aVarDt = dt();
        a(aVarDt, PointerIconCompat.TYPE_NO_DROP, new p.a() { // from class: com.applovin.exoplayer2.a.b0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDt, i, j, j2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, @Nullable p.a aVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_WRONG_AUCTION_ID, new p.a() { // from class: com.applovin.exoplayer2.a.j
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).d(aVarF);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, @Nullable p.a aVar, final int i2) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_UNEXPECTED, new p.a() { // from class: com.applovin.exoplayer2.a.x0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarF, i2, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, @Nullable p.a aVar, final com.applovin.exoplayer2.h.j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, 1000, new p.a() { // from class: com.applovin.exoplayer2.a.h0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarF, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, @Nullable p.a aVar, final com.applovin.exoplayer2.h.j jVar, final com.applovin.exoplayer2.h.m mVar, final IOException iOException, final boolean z) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, 1003, new p.a() { // from class: com.applovin.exoplayer2.a.z
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarF, jVar, mVar, iOException, z);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, @Nullable p.a aVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, 1004, new p.a() { // from class: com.applovin.exoplayer2.a.e1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarF, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, @Nullable p.a aVar, final Exception exc) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT, new p.a() { // from class: com.applovin.exoplayer2.a.r0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).d(aVarF, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final long j, final int i) {
        final b.a aVarDs = ds();
        a(aVarDs, IronSourceError.ERROR_RV_LOAD_DURING_LOAD, new p.a() { // from class: com.applovin.exoplayer2.a.a0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDs, j, i);
            }
        });
    }

    protected final void a(b.a aVar, int i, p.a<b> aVar2) {
        this.ja.put(i, aVar);
        this.bG.b(i, aVar2);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(@Nullable final ab abVar, final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, 1, new p.a() { // from class: com.applovin.exoplayer2.a.b1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, abVar, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void a(final ac acVar) {
        final b.a aVarDr = dr();
        a(aVarDr, 14, new p.a() { // from class: com.applovin.exoplayer2.a.t0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, acVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final ak akVar) {
        com.applovin.exoplayer2.h.o oVar;
        final b.a aVarC = (!(akVar instanceof com.applovin.exoplayer2.p) || (oVar = ((com.applovin.exoplayer2.p) akVar).bx) == null) ? null : c(new p.a(oVar));
        if (aVarC == null) {
            aVarC = dr();
        }
        a(aVarC, 10, new p.a() { // from class: com.applovin.exoplayer2.a.d1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarC, akVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final an.e eVar, final an.e eVar2, final int i) {
        if (i == 1) {
            this.jc = false;
        }
        this.iZ.f((an) com.applovin.exoplayer2.l.a.checkNotNull(this.jb));
        final b.a aVarDr = dr();
        a(aVarDr, 11, new p.a() { // from class: com.applovin.exoplayer2.a.c1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarDr, i, eVar, eVar2, (b) obj);
            }
        });
    }

    @CallSuper
    public void a(final an anVar, Looper looper) {
        com.applovin.exoplayer2.l.a.checkState(this.jb == null || this.iZ.jd.isEmpty());
        this.jb = (an) com.applovin.exoplayer2.l.a.checkNotNull(anVar);
        this.cm = this.bR.a(looper, null);
        this.bG = this.bG.a(looper, new p.b() { // from class: com.applovin.exoplayer2.a.k0
            @Override // com.applovin.exoplayer2.l.p.b
            public final void invoke(Object obj, com.applovin.exoplayer2.l.m mVar) {
                this.a.a(anVar, (b) obj, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(an anVar, an.c cVar) {
        x1.g(this, anVar, cVar);
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final com.applovin.exoplayer2.c.e eVar) {
        final b.a aVarDt = dt();
        a(aVarDt, 1020, new p.a() { // from class: com.applovin.exoplayer2.a.p0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(aVarDt, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public final void a(final com.applovin.exoplayer2.g.a aVar) {
        final b.a aVarDr = dr();
        a(aVarDr, 1007, new p.a() { // from class: com.applovin.exoplayer2.a.a1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, aVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final ad adVar, final com.applovin.exoplayer2.j.h hVar) {
        final b.a aVarDr = dr();
        a(aVarDr, 2, new p.a() { // from class: com.applovin.exoplayer2.a.l0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, adVar, hVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
    public final void a(final com.applovin.exoplayer2.m.o oVar) {
        final b.a aVarDt = dt();
        a(aVarDt, IronSourceError.ERROR_RV_LOAD_SUCCESS_UNEXPECTED, new p.a() { // from class: com.applovin.exoplayer2.a.t
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarDt, oVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void a(com.applovin.exoplayer2.o oVar) {
        x1.k(this, oVar);
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final com.applovin.exoplayer2.v vVar, @Nullable final com.applovin.exoplayer2.c.h hVar) {
        final b.a aVarDt = dt();
        a(aVarDt, 1022, new p.a() { // from class: com.applovin.exoplayer2.a.i
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarDt, vVar, hVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final Exception exc) {
        final b.a aVarDt = dt();
        a(aVarDt, IronSourceError.ERROR_RV_SHOW_EXCEPTION, new p.a() { // from class: com.applovin.exoplayer2.a.i0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(aVarDt, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final Object obj, final long j) {
        final b.a aVarDt = dt();
        a(aVarDt, IronSourceError.ERROR_RV_LOAD_DURING_SHOW, new p.a() { // from class: com.applovin.exoplayer2.a.x
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj2) {
                ((b) obj2).a(aVarDt, obj, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final String str, final long j, final long j2) {
        final b.a aVarDt = dt();
        a(aVarDt, 1021, new p.a() { // from class: com.applovin.exoplayer2.a.f0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarDt, str, j2, j, (b) obj);
            }
        });
    }

    public final void a(List<p.a> list, @Nullable p.a aVar) {
        this.iZ.a(list, aVar, (an) com.applovin.exoplayer2.l.a.checkNotNull(this.jb));
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void aa(final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, 6, new p.a() { // from class: com.applovin.exoplayer2.a.k
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDr, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void ab(final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, 8, new p.a() { // from class: com.applovin.exoplayer2.a.v0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(aVarDr, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void ac(int i) {
        w1.j(this, i);
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void b(final int i, final long j) {
        final b.a aVarDs = ds();
        a(aVarDs, 1023, new p.a() { // from class: com.applovin.exoplayer2.a.s0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDs, i, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.k.d.a
    public final void b(final int i, final long j, final long j2) {
        final b.a aVarDu = du();
        a(aVarDu, 1006, new p.a() { // from class: com.applovin.exoplayer2.a.y0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDu, i, j, j2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void b(int i, @Nullable p.a aVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT, new p.a() { // from class: com.applovin.exoplayer2.a.e
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(aVarF);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void b(int i, @Nullable p.a aVar, final com.applovin.exoplayer2.h.j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, 1001, new p.a() { // from class: com.applovin.exoplayer2.a.j0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarF, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void b(ak akVar) {
        x1.n(this, akVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void b(final am amVar) {
        final b.a aVarDr = dr();
        a(aVarDr, 12, new p.a() { // from class: com.applovin.exoplayer2.a.h
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, amVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void b(ba baVar, final int i) {
        this.iZ.g((an) com.applovin.exoplayer2.l.a.checkNotNull(this.jb));
        final b.a aVarDr = dr();
        a(aVarDr, 0, new p.a() { // from class: com.applovin.exoplayer2.a.q0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(aVarDr, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void b(final com.applovin.exoplayer2.c.e eVar) {
        final b.a aVarDs = ds();
        a(aVarDs, 1025, new p.a() { // from class: com.applovin.exoplayer2.a.e0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(aVarDs, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final com.applovin.exoplayer2.v vVar, @Nullable final com.applovin.exoplayer2.c.h hVar) {
        final b.a aVarDt = dt();
        a(aVarDt, 1010, new p.a() { // from class: com.applovin.exoplayer2.a.d0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(aVarDt, vVar, hVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final Exception exc) {
        final b.a aVarDt = dt();
        a(aVarDt, 1018, new p.a() { // from class: com.applovin.exoplayer2.a.v
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDt, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final String str, final long j, final long j2) {
        final b.a aVarDt = dt();
        a(aVarDt, 1009, new p.a() { // from class: com.applovin.exoplayer2.a.r
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(aVarDt, str, j2, j, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void c(int i, @Nullable p.a aVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK, new p.a() { // from class: com.applovin.exoplayer2.a.n
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).f(aVarF);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void c(int i, @Nullable p.a aVar, final com.applovin.exoplayer2.h.j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, 1002, new p.a() { // from class: com.applovin.exoplayer2.a.p
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(aVarF, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void c(final com.applovin.exoplayer2.c.e eVar) {
        final b.a aVarDt = dt();
        a(aVarDt, 1008, new p.a() { // from class: com.applovin.exoplayer2.a.q
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.d(aVarDt, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public /* synthetic */ void c(com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.b.l0.g(this, vVar);
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void c(final Exception exc) {
        final b.a aVarDt = dt();
        a(aVarDt, IronSourceError.ERROR_IS_LOAD_DURING_SHOW, new p.a() { // from class: com.applovin.exoplayer2.a.m
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDt, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.b
    public final void cD() {
        final b.a aVarDr = dr();
        a(aVarDr, -1, new p.a() { // from class: com.applovin.exoplayer2.a.g0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDr);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void cE() {
        x1.q(this);
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void d(int i, @Nullable p.a aVar) {
        final b.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES, new p.a() { // from class: com.applovin.exoplayer2.a.n0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).g(aVarF);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void d(final an.a aVar) {
        final b.a aVarDr = dr();
        a(aVarDr, 13, new p.a() { // from class: com.applovin.exoplayer2.a.s
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, aVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void d(final com.applovin.exoplayer2.c.e eVar) {
        final b.a aVarDs = ds();
        a(aVarDs, 1014, new p.a() { // from class: com.applovin.exoplayer2.a.g1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.c(aVarDs, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.b
    public final void d(final boolean z, final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, -1, new p.a() { // from class: com.applovin.exoplayer2.a.d
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, z, i);
            }
        });
    }

    public final void dq() {
        if (this.jc) {
            return;
        }
        final b.a aVarDr = dr();
        this.jc = true;
        a(aVarDr, -1, new p.a() { // from class: com.applovin.exoplayer2.a.z0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr);
            }
        });
    }

    protected final b.a dr() {
        return c(this.iZ.dw());
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void e(int i, boolean z) {
        x1.s(this, i, z);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void e(List list) {
        x1.t(this, list);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void e(final boolean z, final int i) {
        final b.a aVarDr = dr();
        a(aVarDr, 5, new p.a() { // from class: com.applovin.exoplayer2.a.u0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDr, z, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public void f(final int i, final int i2) {
        final b.a aVarDt = dt();
        a(aVarDt, IronSourceError.ERROR_RV_LOAD_SUCCESS_WRONG_AUCTION_ID, new p.a() { // from class: com.applovin.exoplayer2.a.w
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDt, i, i2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public final void g(final float f2) {
        final b.a aVarDt = dt();
        a(aVarDt, 1019, new p.a() { // from class: com.applovin.exoplayer2.a.o0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDt, f2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public /* synthetic */ void g(int i, p.a aVar) {
        com.applovin.exoplayer2.d.n0.g(this, i, aVar);
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void r(final String str) {
        final b.a aVarDt = dt();
        a(aVarDt, 1024, new p.a() { // from class: com.applovin.exoplayer2.a.c0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDt, str);
            }
        });
    }

    @CallSuper
    public void release() {
        final b.a aVarDr = dr();
        this.ja.put(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, aVarDr);
        a(aVarDr, IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, new p.a() { // from class: com.applovin.exoplayer2.a.o
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).h(aVarDr);
            }
        });
        ((com.applovin.exoplayer2.l.o) com.applovin.exoplayer2.l.a.N(this.cm)).e(new Runnable() { // from class: com.applovin.exoplayer2.a.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.dv();
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void s(final String str) {
        final b.a aVarDt = dt();
        a(aVarDt, 1013, new p.a() { // from class: com.applovin.exoplayer2.a.c
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDt, str);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void w(final boolean z) {
        final b.a aVarDr = dr();
        a(aVarDr, 3, new p.a() { // from class: com.applovin.exoplayer2.a.w0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.c(aVarDr, z, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void x(boolean z) {
        w1.s(this, z);
    }

    @Override // com.applovin.exoplayer2.m.n
    public /* synthetic */ void y(com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.m.c0.k(this, vVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void y(final boolean z) {
        final b.a aVarDr = dr();
        a(aVarDr, 7, new p.a() { // from class: com.applovin.exoplayer2.a.f
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDr, z);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void z(final long j) {
        final b.a aVarDt = dt();
        a(aVarDt, 1011, new p.a() { // from class: com.applovin.exoplayer2.a.g
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(aVarDt, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void z(final boolean z) {
        final b.a aVarDr = dr();
        a(aVarDr, 9, new p.a() { // from class: com.applovin.exoplayer2.a.m0
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(aVarDr, z);
            }
        });
    }
}
