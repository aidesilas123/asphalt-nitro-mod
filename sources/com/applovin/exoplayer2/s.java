package com.applovin.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ah;
import com.applovin.exoplayer2.ao;
import com.applovin.exoplayer2.ar;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.common.base.Supplier;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.h.n;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.j;
import com.applovin.exoplayer2.m;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class s implements Handler.Callback, ah.d, ao.a, n.a, j.a, m.a {
    private final ba.c U;
    private final long aT;
    private final boolean aU;
    private final ar[] bB;
    private final com.applovin.exoplayer2.j.j bC;
    private final e bE;
    private final ba.a bI;
    private final com.applovin.exoplayer2.k.d bO;
    private final com.applovin.exoplayer2.l.d bR;
    private int bS;
    private boolean bT;
    private av bY;
    private final com.applovin.exoplayer2.j.k bz;
    private boolean cA;
    private boolean cB;
    private boolean cC;
    private boolean cD;
    private int cE;

    @Nullable
    private g cF;
    private long cG;
    private int cH;
    private boolean cI;

    @Nullable
    private p cJ;
    private long cK;
    private al cd;
    private final Set<ar> cj;
    private final as[] ck;
    private final aa cl;
    private final com.applovin.exoplayer2.l.o cm;
    private final HandlerThread cn;
    private final Looper co;
    private final m cp;
    private final ArrayList<c> cq;
    private final af cr;
    private final ah cs;
    private final z ct;
    private final long cu;
    private d cv;
    private boolean cw;
    private boolean cx;
    private boolean cy;
    private boolean cz;

    private static final class a {
        private final com.applovin.exoplayer2.h.z C;
        private final List<ah.c> cM;
        private final int cN;
        private final long cO;

        private a(List<ah.c> list, com.applovin.exoplayer2.h.z zVar, int i, long j) {
            this.cM = list;
            this.C = zVar;
            this.cN = i;
            this.cO = j;
        }
    }

    private static class b {
        public final com.applovin.exoplayer2.h.z C;
        public final int cP;
        public final int cQ;
        public final int cR;
    }

    private static final class c implements Comparable<c> {
        public final ao cS;
        public int cT;
        public long cU;

        @Nullable
        public Object cV;

        public c(ao aoVar) {
            this.cS = aoVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            Object obj = this.cV;
            if ((obj == null) != (cVar.cV == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.cT - cVar.cT;
            return i != 0 ? i : com.applovin.exoplayer2.l.ai.B(this.cU, cVar.cU);
        }

        public void a(int i, long j, Object obj) {
            this.cT = i;
            this.cU = j;
            this.cV = obj;
        }
    }

    public static final class d {
        private boolean cW;
        public int cX;
        public boolean cY;
        public int cZ;
        public al cd;
        public boolean da;
        public int db;

        public d(al alVar) {
            this.cd = alVar;
        }

        public void d(al alVar) {
            this.cW |= this.cd != alVar;
            this.cd = alVar;
        }

        public void x(int i) {
            this.cW |= i > 0;
            this.cX += i;
        }

        public void y(int i) {
            if (this.cY && this.cZ != 5) {
                com.applovin.exoplayer2.l.a.checkArgument(i == 5);
                return;
            }
            this.cW = true;
            this.cY = true;
            this.cZ = i;
        }

        public void z(int i) {
            this.cW = true;
            this.da = true;
            this.db = i;
        }
    }

    public interface e {
        void onPlaybackInfoUpdate(d dVar);
    }

    private static final class f {
        public final p.a dc;
        public final long dd;
        public final long de;
        public final boolean df;
        public final boolean dg;
        public final boolean dh;

        public f(p.a aVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.dc = aVar;
            this.dd = j;
            this.de = j2;
            this.df = z;
            this.dg = z2;
            this.dh = z3;
        }
    }

    private static final class g {
        public final int cN;
        public final ba ci;
        public final long di;

        public g(ba baVar, int i, long j) {
            this.ci = baVar;
            this.cN = i;
            this.di = j;
        }
    }

    public s(ar[] arVarArr, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.j.k kVar, aa aaVar, com.applovin.exoplayer2.k.d dVar, int i, boolean z, @Nullable com.applovin.exoplayer2.a.a aVar, av avVar, z zVar, long j, boolean z2, Looper looper, com.applovin.exoplayer2.l.d dVar2, e eVar) {
        this.bE = eVar;
        this.bB = arVarArr;
        this.bC = jVar;
        this.bz = kVar;
        this.cl = aaVar;
        this.bO = dVar;
        this.bS = i;
        this.bT = z;
        this.bY = avVar;
        this.ct = zVar;
        this.cu = j;
        this.cK = j;
        this.cx = z2;
        this.bR = dVar2;
        this.aT = aaVar.as();
        this.aU = aaVar.at();
        al alVarA = al.a(kVar);
        this.cd = alVarA;
        this.cv = new d(alVarA);
        this.ck = new as[arVarArr.length];
        for (int i2 = 0; i2 < arVarArr.length; i2++) {
            arVarArr[i2].p(i2);
            this.ck[i2] = arVarArr[i2].N();
        }
        this.cp = new m(this, dVar2);
        this.cq = new ArrayList<>();
        this.cj = com.applovin.exoplayer2.common.a.aq.gT();
        this.U = new ba.c();
        this.bI = new ba.a();
        jVar.a(this, dVar);
        this.cI = true;
        Handler handler = new Handler(looper);
        this.cr = new af(aVar, handler);
        this.cs = new ah(this, aVar, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.cn = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.co = looper2;
        this.cm = dVar2.a(looper2, this);
    }

    private long a(ba baVar, Object obj, long j) {
        baVar.a(baVar.a(obj, this.bI).cN, this.U);
        ba.c cVar = this.U;
        if (cVar.iK != C.TIME_UNSET && cVar.dn()) {
            ba.c cVar2 = this.U;
            if (cVar2.iN) {
                return h.g(cVar2.dm() - this.U.iK) - (j + this.bI.df());
            }
        }
        return C.TIME_UNSET;
    }

    private long a(p.a aVar, long j, boolean z) throws p {
        return a(aVar, j, this.cr.cr() != this.cr.cs(), z);
    }

    private long a(p.a aVar, long j, boolean z, boolean z2) throws p {
        bn();
        this.cz = false;
        if (z2 || this.cd.gs == 3) {
            v(2);
        }
        ad adVarCr = this.cr.cr();
        ad adVarCi = adVarCr;
        while (adVarCi != null && !aVar.equals(adVarCi.fx.fE)) {
            adVarCi = adVarCi.ci();
        }
        if (z || adVarCr != adVarCi || (adVarCi != null && adVarCi.q(j) < 0)) {
            for (ar arVar : this.bB) {
                d(arVar);
            }
            if (adVarCi != null) {
                while (this.cr.cr() != adVarCi) {
                    this.cr.cu();
                }
                this.cr.b(adVarCi);
                adVarCi.s(0L);
                bL();
            }
        }
        if (adVarCi != null) {
            this.cr.b(adVarCi);
            if (!adVarCi.fv) {
                adVarCi.fx = adVarCi.fx.v(j);
            } else if (adVarCi.fw) {
                long jAQ = adVarCi.ft.aQ(j);
                adVarCi.ft.d(jAQ - this.aT, this.aU);
                j = jAQ;
            }
            l(j);
            bH();
        } else {
            this.cr.clear();
            l(j);
        }
        s(false);
        this.cm.fs(2);
        return j;
    }

    private Pair<p.a, Long> a(ba baVar) {
        if (baVar.isEmpty()) {
            return Pair.create(al.cB(), 0L);
        }
        Pair<Object, Long> pairA = baVar.a(this.U, this.bI, baVar.d(this.bT), C.TIME_UNSET);
        p.a aVarB = this.cr.b(baVar, pairA.first, 0L);
        long jLongValue = ((Long) pairA.second).longValue();
        if (aVarB.la()) {
            baVar.a(aVarB.gM, this.bI);
            jLongValue = aVarB.gQ == this.bI.am(aVarB.gP) ? this.bI.di() : 0L;
        }
        return Pair.create(aVarB, Long.valueOf(jLongValue));
    }

    @Nullable
    private static Pair<Object, Long> a(ba baVar, g gVar, boolean z, int i, boolean z2, ba.c cVar, ba.a aVar) {
        Pair<Object, Long> pairA;
        Object objA;
        ba baVar2 = gVar.ci;
        if (baVar.isEmpty()) {
            return null;
        }
        ba baVar3 = baVar2.isEmpty() ? baVar : baVar2;
        try {
            pairA = baVar3.a(cVar, aVar, gVar.cN, gVar.di);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (baVar.equals(baVar3)) {
            return pairA;
        }
        if (baVar.c(pairA.first) != -1) {
            return (baVar3.a(pairA.first, aVar).iz && baVar3.a(aVar.cN, cVar).iQ == baVar3.c(pairA.first)) ? baVar.a(cVar, aVar, baVar.a(pairA.first, aVar).cN, gVar.di) : pairA;
        }
        if (z && (objA = a(cVar, aVar, i, z2, pairA.first, baVar3, baVar)) != null) {
            return baVar.a(cVar, aVar, baVar.a(objA, aVar).cN, C.TIME_UNSET);
        }
        return null;
    }

    @CheckResult
    private al a(p.a aVar, long j, long j2, long j3, boolean z, int i) {
        List<com.applovin.exoplayer2.g.a> listGa;
        com.applovin.exoplayer2.h.ad adVar;
        com.applovin.exoplayer2.j.k kVar;
        this.cI = (!this.cI && j == this.cd.cO && aVar.equals(this.cd.dc)) ? false : true;
        bE();
        al alVar = this.cd;
        com.applovin.exoplayer2.h.ad adVar2 = alVar.fB;
        com.applovin.exoplayer2.j.k kVar2 = alVar.fC;
        List<com.applovin.exoplayer2.g.a> list = alVar.gu;
        if (this.cs.cw()) {
            ad adVarCr = this.cr.cr();
            com.applovin.exoplayer2.h.ad adVarCj = adVarCr == null ? com.applovin.exoplayer2.h.ad.NG : adVarCr.cj();
            com.applovin.exoplayer2.j.k kVarCk = adVarCr == null ? this.bz : adVarCr.ck();
            com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.g.a> sVarA = a(kVarCk.VE);
            if (adVarCr != null) {
                ae aeVar = adVarCr.fx;
                if (aeVar.de != j2) {
                    adVarCr.fx = aeVar.w(j2);
                }
            }
            adVar = adVarCj;
            kVar = kVarCk;
            listGa = sVarA;
        } else if (aVar.equals(this.cd.dc)) {
            listGa = list;
            adVar = adVar2;
            kVar = kVar2;
        } else {
            adVar = com.applovin.exoplayer2.h.ad.NG;
            kVar = this.bz;
            listGa = com.applovin.exoplayer2.common.a.s.ga();
        }
        if (z) {
            this.cv.y(i);
        }
        return this.cd.a(aVar, j, j2, j3, bM(), adVar, kVar, listGa);
    }

    private com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.g.a> a(com.applovin.exoplayer2.j.d[] dVarArr) {
        s.a aVar = new s.a();
        boolean z = false;
        for (com.applovin.exoplayer2.j.d dVar : dVarArr) {
            if (dVar != null) {
                com.applovin.exoplayer2.g.a aVar2 = dVar.dZ(0).dx;
                if (aVar2 == null) {
                    aVar.t(new com.applovin.exoplayer2.g.a(new a.InterfaceC0038a[0]));
                } else {
                    aVar.t(aVar2);
                    z = true;
                }
            }
        }
        return z ? aVar.gd() : com.applovin.exoplayer2.common.a.s.ga();
    }

    private static f a(ba baVar, al alVar, @Nullable g gVar, af afVar, int i, boolean z, ba.c cVar, ba.a aVar) {
        int i2;
        p.a aVar2;
        long jLongValue;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        int iD;
        int iD2;
        boolean z5;
        af afVar2;
        long j;
        int i4;
        boolean z6;
        int iD3;
        boolean z7;
        boolean z8;
        if (baVar.isEmpty()) {
            return new f(al.cB(), 0L, C.TIME_UNSET, false, true, false);
        }
        p.a aVar3 = alVar.dc;
        Object obj = aVar3.gM;
        boolean zA = a(alVar, aVar);
        long j2 = (alVar.dc.la() || zA) ? alVar.de : alVar.cO;
        boolean z9 = false;
        if (gVar != null) {
            i2 = -1;
            Pair<Object, Long> pairA = a(baVar, gVar, true, i, z, cVar, aVar);
            if (pairA == null) {
                iD3 = baVar.d(z);
                jLongValue = j2;
                z6 = false;
                z7 = false;
                z8 = true;
            } else {
                if (gVar.di == C.TIME_UNSET) {
                    iD3 = baVar.a(pairA.first, aVar).cN;
                    jLongValue = j2;
                    z6 = false;
                } else {
                    obj = pairA.first;
                    jLongValue = ((Long) pairA.second).longValue();
                    z6 = true;
                    iD3 = -1;
                }
                z7 = alVar.gs == 4;
                z8 = false;
            }
            z4 = z6;
            z2 = z7;
            z3 = z8;
            i3 = iD3;
            aVar2 = aVar3;
        } else {
            i2 = -1;
            if (alVar.ci.isEmpty()) {
                iD = baVar.d(z);
            } else if (baVar.c(obj) == -1) {
                Object objA = a(cVar, aVar, i, z, obj, alVar.ci, baVar);
                if (objA == null) {
                    iD2 = baVar.d(z);
                    z5 = true;
                } else {
                    iD2 = baVar.a(objA, aVar).cN;
                    z5 = false;
                }
                i3 = iD2;
                z3 = z5;
                jLongValue = j2;
                aVar2 = aVar3;
                z2 = false;
                z4 = false;
            } else if (j2 == C.TIME_UNSET) {
                iD = baVar.a(obj, aVar).cN;
            } else if (zA) {
                aVar2 = aVar3;
                alVar.ci.a(aVar2.gM, aVar);
                if (alVar.ci.a(aVar.cN, cVar).iQ == alVar.ci.c(aVar2.gM)) {
                    Pair<Object, Long> pairA2 = baVar.a(cVar, aVar, baVar.a(obj, aVar).cN, j2 + aVar.df());
                    obj = pairA2.first;
                    jLongValue = ((Long) pairA2.second).longValue();
                } else {
                    jLongValue = j2;
                }
                i3 = -1;
                z2 = false;
                z3 = false;
                z4 = true;
            } else {
                aVar2 = aVar3;
                jLongValue = j2;
                i3 = -1;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            i3 = iD;
            jLongValue = j2;
            aVar2 = aVar3;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        if (i3 != i2) {
            Pair<Object, Long> pairA3 = baVar.a(cVar, aVar, i3, C.TIME_UNSET);
            obj = pairA3.first;
            jLongValue = ((Long) pairA3.second).longValue();
            afVar2 = afVar;
            j = -9223372036854775807L;
        } else {
            afVar2 = afVar;
            j = jLongValue;
        }
        p.a aVarB = afVar2.b(baVar, obj, jLongValue);
        boolean z10 = aVarB.LM == i2 || ((i4 = aVar2.LM) != i2 && aVarB.gP >= i4);
        boolean zEquals = aVar2.gM.equals(obj);
        boolean z11 = zEquals && !aVar2.la() && !aVarB.la() && z10;
        baVar.a(obj, aVar);
        if (zEquals && !zA && j2 == j && ((aVarB.la() && aVar.ap(aVarB.gP)) || (aVar2.la() && aVar.ap(aVar2.gP)))) {
            z9 = true;
        }
        if (z11 || z9) {
            aVarB = aVar2;
        }
        if (aVarB.la()) {
            if (aVarB.equals(aVar2)) {
                jLongValue = alVar.cO;
            } else {
                baVar.a(aVarB.gM, aVar);
                jLongValue = aVarB.gQ == aVar.am(aVarB.gP) ? aVar.di() : 0L;
            }
        }
        return new f(aVarB, jLongValue, j, z2, z3, z4);
    }

    @Nullable
    static Object a(ba.c cVar, ba.a aVar, int i, boolean z, Object obj, ba baVar, ba baVar2) {
        int iC = baVar.c(obj);
        int iCQ = baVar.cQ();
        int iA = iC;
        int iC2 = -1;
        for (int i2 = 0; i2 < iCQ && iC2 == -1; i2++) {
            iA = baVar.a(iA, aVar, cVar, i, z);
            if (iA == -1) {
                break;
            }
            iC2 = baVar2.c(baVar.b(iA));
        }
        if (iC2 == -1) {
            return null;
        }
        return baVar2.b(iC2);
    }

    private void a(am amVar, float f2, boolean z, boolean z2) throws p {
        if (z) {
            if (z2) {
                this.cv.x(1);
            }
            this.cd = this.cd.d(amVar);
        }
        c(amVar.gD);
        for (ar arVar : this.bB) {
            if (arVar != null) {
                arVar.a(f2, amVar.gD);
            }
        }
    }

    private void a(am amVar, boolean z) throws p {
        a(amVar, amVar.gD, true, z);
    }

    private void a(ar arVar, long j) {
        arVar.T();
        if (arVar instanceof com.applovin.exoplayer2.i.m) {
            ((com.applovin.exoplayer2.i.m) arVar).bg(j);
        }
    }

    private void a(av avVar) {
        this.bY = avVar;
    }

    private void a(ba baVar, p.a aVar, ba baVar2, p.a aVar2, long j) {
        if (baVar.isEmpty() || !a(baVar, aVar)) {
            float f2 = this.cp.av().gD;
            am amVar = this.cd.gy;
            if (f2 != amVar.gD) {
                this.cp.a(amVar);
                return;
            }
            return;
        }
        baVar.a(baVar.a(aVar.gM, this.bI).cN, this.U);
        this.ct.a((ab.e) com.applovin.exoplayer2.l.ai.R(this.U.eb));
        if (j != C.TIME_UNSET) {
            this.ct.h(a(baVar, aVar.gM, j));
            return;
        }
        if (com.applovin.exoplayer2.l.ai.r(baVar2.isEmpty() ? null : baVar2.a(baVar2.a(aVar2.gM, this.bI).cN, this.U).ch, this.U.ch)) {
            return;
        }
        this.ct.h(C.TIME_UNSET);
    }

    private static void a(ba baVar, c cVar, ba.c cVar2, ba.a aVar) {
        int i = baVar.a(baVar.a(cVar.cV, aVar).cN, cVar2).iR;
        Object obj = baVar.a(i, aVar, true).ch;
        long j = aVar.fH;
        cVar.a(i, j != C.TIME_UNSET ? j - 1 : Long.MAX_VALUE, obj);
    }

    private void a(ba baVar, boolean z) throws Throwable {
        boolean z2;
        f fVarA = a(baVar, this.cd, this.cF, this.cr, this.bS, this.bT, this.U, this.bI);
        p.a aVar = fVarA.dc;
        long j = fVarA.de;
        boolean z3 = fVarA.df;
        long jA = fVarA.dd;
        boolean z4 = (this.cd.dc.equals(aVar) && jA == this.cd.cO) ? false : true;
        g gVar = null;
        long j2 = C.TIME_UNSET;
        try {
            if (fVarA.dg) {
                if (this.cd.gs != 1) {
                    v(4);
                }
                a(false, false, false, true);
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (z4) {
                z2 = false;
                if (!baVar.isEmpty()) {
                    for (ad adVarCr = this.cr.cr(); adVarCr != null; adVarCr = adVarCr.ci()) {
                        if (adVarCr.fx.fE.equals(aVar)) {
                            adVarCr.fx = this.cr.a(baVar, adVarCr.fx);
                            adVarCr.cl();
                        }
                    }
                    jA = a(aVar, jA, z3);
                }
            } else {
                z2 = false;
                if (!this.cr.a(baVar, this.cG, bx())) {
                    q(false);
                }
            }
            al alVar = this.cd;
            a(baVar, aVar, alVar.ci, alVar.dc, fVarA.dh ? jA : -9223372036854775807L);
            if (z4 || j != this.cd.de) {
                al alVar2 = this.cd;
                Object obj = alVar2.dc.gM;
                ba baVar2 = alVar2.ci;
                this.cd = a(aVar, jA, j, this.cd.gr, z4 && z && !baVar2.isEmpty() && !baVar2.a(obj, this.bI).iz, baVar.c(obj) == -1 ? 4 : 3);
            }
            bE();
            b(baVar, this.cd.ci);
            this.cd = this.cd.c(baVar);
            if (!baVar.isEmpty()) {
                this.cF = null;
            }
            s(z2);
        } catch (Throwable th2) {
            th = th2;
            gVar = null;
            al alVar3 = this.cd;
            ba baVar3 = alVar3.ci;
            p.a aVar2 = alVar3.dc;
            if (fVarA.dh) {
                j2 = jA;
            }
            g gVar2 = gVar;
            a(baVar, aVar, baVar3, aVar2, j2);
            if (z4 || j != this.cd.de) {
                al alVar4 = this.cd;
                Object obj2 = alVar4.dc.gM;
                ba baVar4 = alVar4.ci;
                this.cd = a(aVar, jA, j, this.cd.gr, z4 && z && !baVar4.isEmpty() && !baVar4.a(obj2, this.bI).iz, baVar.c(obj2) == -1 ? 4 : 3);
            }
            bE();
            b(baVar, this.cd.ci);
            this.cd = this.cd.c(baVar);
            if (!baVar.isEmpty()) {
                this.cF = gVar2;
            }
            s(false);
            throw th;
        }
    }

    private synchronized void a(Supplier<Boolean> supplier, long j) {
        long jOK = this.bR.oK() + j;
        boolean z = false;
        while (!supplier.get().booleanValue() && j > 0) {
            try {
                this.bR.oM();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jOK - this.bR.oK();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar) {
        this.cl.a(this.bB, adVar, kVar.VE);
    }

    private void a(com.applovin.exoplayer2.h.z zVar) throws Throwable {
        this.cv.x(1);
        a(this.cs.b(zVar), false);
    }

    private void a(a aVar) throws Throwable {
        this.cv.x(1);
        if (aVar.cN != -1) {
            this.cF = new g(new ap(aVar.cM, aVar.C), aVar.cN, aVar.cO);
        }
        a(this.cs.a(aVar.cM, aVar.C), false);
    }

    private void a(a aVar, int i) throws Throwable {
        this.cv.x(1);
        ah ahVar = this.cs;
        if (i == -1) {
            i = ahVar.cx();
        }
        a(ahVar.a(i, aVar.cM, aVar.C), false);
    }

    private void a(b bVar) throws Throwable {
        this.cv.x(1);
        a(this.cs.a(bVar.cP, bVar.cQ, bVar.cR, bVar.C), false);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab A[Catch: all -> 0x0147, TryCatch #1 {all -> 0x0147, blocks: (B:22:0x00a1, B:24:0x00ab, B:27:0x00b1, B:29:0x00b7, B:30:0x00ba, B:32:0x00c0, B:34:0x00ca, B:36:0x00d2, B:40:0x00da, B:42:0x00e4, B:44:0x00f4, B:48:0x00fe, B:52:0x0110, B:56:0x0119), top: B:74:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(com.applovin.exoplayer2.s.g r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.a(com.applovin.exoplayer2.s$g):void");
    }

    private void a(boolean z, int i, boolean z2, int i2) throws p {
        this.cv.x(z2 ? 1 : 0);
        this.cv.z(i2);
        this.cd = this.cd.c(z, i);
        this.cz = false;
        m(z);
        if (!bN()) {
            bn();
            bp();
            return;
        }
        int i3 = this.cd.gs;
        if (i3 == 3) {
            bm();
            this.cm.fs(2);
        } else if (i3 == 2) {
            this.cm.fs(2);
        }
    }

    private void a(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        if (this.cB != z) {
            this.cB = z;
            if (!z) {
                for (ar arVar : this.bB) {
                    if (!e(arVar) && this.cj.remove(arVar)) {
                        arVar.Y();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[PHI: r4 r5 r7
      0x00a3: PHI (r4v3 com.applovin.exoplayer2.h.p$a) = (r4v2 com.applovin.exoplayer2.h.p$a), (r4v8 com.applovin.exoplayer2.h.p$a) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r5v2 long) = (r5v1 long), (r5v4 long) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.a(boolean, boolean, boolean, boolean):void");
    }

    private void a(boolean[] zArr) throws p {
        ad adVarCs = this.cr.cs();
        com.applovin.exoplayer2.j.k kVarCk = adVarCs.ck();
        for (int i = 0; i < this.bB.length; i++) {
            if (!kVarCk.eW(i) && this.cj.remove(this.bB[i])) {
                this.bB[i].Y();
            }
        }
        for (int i2 = 0; i2 < this.bB.length; i2++) {
            if (kVarCk.eW(i2)) {
                c(i2, zArr[i2]);
            }
        }
        adVarCs.fy = true;
    }

    private static boolean a(al alVar, ba.a aVar) {
        p.a aVar2 = alVar.dc;
        ba baVar = alVar.ci;
        return baVar.isEmpty() || baVar.a(aVar2.gM, aVar).iz;
    }

    private boolean a(ar arVar, ad adVar) {
        ad adVarCi = adVar.ci();
        return adVar.fx.fI && adVarCi.fv && ((arVar instanceof com.applovin.exoplayer2.i.m) || arVar.S() >= adVarCi.ce());
    }

    private boolean a(ba baVar, p.a aVar) {
        if (aVar.la() || baVar.isEmpty()) {
            return false;
        }
        baVar.a(baVar.a(aVar.gM, this.bI).cN, this.U);
        if (!this.U.dn()) {
            return false;
        }
        ba.c cVar = this.U;
        return cVar.iN && cVar.iK != C.TIME_UNSET;
    }

    private static boolean a(c cVar, ba baVar, ba baVar2, int i, boolean z, ba.c cVar2, ba.a aVar) {
        Object obj = cVar.cV;
        if (obj == null) {
            Pair<Object, Long> pairA = a(baVar, new g(cVar.cS.bf(), cVar.cS.cK(), cVar.cS.cJ() == Long.MIN_VALUE ? C.TIME_UNSET : h.g(cVar.cS.cJ())), false, i, z, cVar2, aVar);
            if (pairA == null) {
                return false;
            }
            cVar.a(baVar.c(pairA.first), ((Long) pairA.second).longValue(), pairA.first);
            if (cVar.cS.cJ() == Long.MIN_VALUE) {
                a(baVar, cVar, cVar2, aVar);
            }
            return true;
        }
        int iC = baVar.c(obj);
        if (iC == -1) {
            return false;
        }
        if (cVar.cS.cJ() == Long.MIN_VALUE) {
            a(baVar, cVar, cVar2, aVar);
            return true;
        }
        cVar.cT = iC;
        baVar2.a(cVar.cV, aVar);
        if (aVar.iz && baVar2.a(aVar.cN, cVar2).iQ == baVar2.c(cVar.cV)) {
            Pair<Object, Long> pairA2 = baVar.a(cVar2, aVar, baVar.a(cVar.cV, aVar).cN, cVar.cU + aVar.df());
            cVar.a(baVar.c(pairA2.first), ((Long) pairA2.second).longValue(), pairA2.first);
        }
        return true;
    }

    private static v[] a(com.applovin.exoplayer2.j.d dVar) {
        int iKD = dVar != null ? dVar.kD() : 0;
        v[] vVarArr = new v[iKD];
        for (int i = 0; i < iKD; i++) {
            vVarArr[i] = dVar.dZ(i);
        }
        return vVarArr;
    }

    private void b(int i, int i2, com.applovin.exoplayer2.h.z zVar) throws Throwable {
        this.cv.x(1);
        a(this.cs.c(i, i2, zVar), false);
    }

    private void b(ao aoVar) throws p {
        if (aoVar.cJ() == C.TIME_UNSET) {
            c(aoVar);
            return;
        }
        if (this.cd.ci.isEmpty()) {
            this.cq.add(new c(aoVar));
            return;
        }
        c cVar = new c(aoVar);
        ba baVar = this.cd.ci;
        if (!a(cVar, baVar, baVar, this.bS, this.bT, this.U, this.bI)) {
            aoVar.B(false);
        } else {
            this.cq.add(cVar);
            Collections.sort(this.cq);
        }
    }

    private void b(ba baVar, ba baVar2) {
        if (baVar.isEmpty() && baVar2.isEmpty()) {
            return;
        }
        for (int size = this.cq.size() - 1; size >= 0; size--) {
            if (!a(this.cq.get(size), baVar, baVar2, this.bS, this.bT, this.U, this.bI)) {
                this.cq.get(size).cS.B(false);
                this.cq.remove(size);
            }
        }
        Collections.sort(this.cq);
    }

    private void b(IOException iOException, int i) {
        p pVarA = p.a(iOException, i);
        ad adVarCr = this.cr.cr();
        if (adVarCr != null) {
            pVarA = pVarA.a(adVarCr.fx.fE);
        }
        com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", pVarA);
        b(false, false);
        this.cd = this.cd.a(pVarA);
    }

    private void b(boolean z, boolean z2) {
        a(z || !this.cB, false, true, false);
        this.cv.x(z2 ? 1 : 0);
        this.cl.ab();
        v(1);
    }

    private void bA() {
        ad adVarCs = this.cr.cs();
        if (adVarCs == null) {
            return;
        }
        int i = 0;
        if (adVarCs.ci() != null && !this.cy) {
            if (bG()) {
                if (adVarCs.ci().fv || this.cG >= adVarCs.ci().ce()) {
                    com.applovin.exoplayer2.j.k kVarCk = adVarCs.ck();
                    ad adVarCt = this.cr.ct();
                    com.applovin.exoplayer2.j.k kVarCk2 = adVarCt.ck();
                    if (adVarCt.fv && adVarCt.ft.kN() != C.TIME_UNSET) {
                        m(adVarCt.ce());
                        return;
                    }
                    for (int i2 = 0; i2 < this.bB.length; i2++) {
                        boolean zEW = kVarCk.eW(i2);
                        boolean zEW2 = kVarCk2.eW(i2);
                        if (zEW && !this.bB[i2].U()) {
                            boolean z = this.ck[i2].M() == -2;
                            at atVar = kVarCk.VD[i2];
                            at atVar2 = kVarCk2.VD[i2];
                            if (!zEW2 || !atVar2.equals(atVar) || z) {
                                a(this.bB[i2], adVarCt.ce());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!adVarCs.fx.fL && !this.cy) {
            return;
        }
        while (true) {
            ar[] arVarArr = this.bB;
            if (i >= arVarArr.length) {
                return;
            }
            ar arVar = arVarArr[i];
            com.applovin.exoplayer2.h.x xVar = adVarCs.fu[i];
            if (xVar != null && arVar.Q() == xVar && arVar.R()) {
                long j = adVarCs.fx.fH;
                a(arVar, (j == C.TIME_UNSET || j == Long.MIN_VALUE) ? -9223372036854775807L : adVarCs.cd() + adVarCs.fx.fH);
            }
            i++;
        }
    }

    private void bB() throws p {
        ad adVarCs = this.cr.cs();
        if (adVarCs == null || this.cr.cr() == adVarCs || adVarCs.fy || !bC()) {
            return;
        }
        bL();
    }

    private boolean bC() throws p {
        ad adVarCs = this.cr.cs();
        com.applovin.exoplayer2.j.k kVarCk = adVarCs.ck();
        int i = 0;
        boolean z = false;
        while (true) {
            ar[] arVarArr = this.bB;
            if (i >= arVarArr.length) {
                return !z;
            }
            ar arVar = arVarArr[i];
            if (e(arVar)) {
                boolean z2 = arVar.Q() != adVarCs.fu[i];
                if (!kVarCk.eW(i) || z2) {
                    if (!arVar.U()) {
                        arVar.a(a(kVarCk.VE[i]), adVarCs.fu[i], adVarCs.ce(), adVarCs.cd());
                    } else if (arVar.cR()) {
                        d(arVar);
                    } else {
                        z = true;
                    }
                }
            }
            i++;
        }
    }

    private void bD() throws p {
        boolean z = false;
        while (bF()) {
            if (z) {
                bj();
            }
            ad adVarCr = this.cr.cr();
            ad adVarCu = this.cr.cu();
            ae aeVar = adVarCu.fx;
            p.a aVar = aeVar.fE;
            long j = aeVar.fF;
            al alVarA = a(aVar, j, aeVar.de, j, true, 0);
            this.cd = alVarA;
            ba baVar = alVarA.ci;
            a(baVar, adVarCu.fx.fE, baVar, adVarCr.fx.fE, C.TIME_UNSET);
            bE();
            bp();
            z = true;
        }
    }

    private void bE() {
        ad adVarCr = this.cr.cr();
        this.cy = adVarCr != null && adVarCr.fx.fK && this.cx;
    }

    private boolean bF() {
        ad adVarCr;
        ad adVarCi;
        return bN() && !this.cy && (adVarCr = this.cr.cr()) != null && (adVarCi = adVarCr.ci()) != null && this.cG >= adVarCi.ce() && adVarCi.fy;
    }

    private boolean bG() {
        ad adVarCs = this.cr.cs();
        if (!adVarCs.fv) {
            return false;
        }
        int i = 0;
        while (true) {
            ar[] arVarArr = this.bB;
            if (i >= arVarArr.length) {
                return true;
            }
            ar arVar = arVarArr[i];
            com.applovin.exoplayer2.h.x xVar = adVarCs.fu[i];
            if (arVar.Q() != xVar || (xVar != null && !arVar.R() && !a(arVar, adVarCs))) {
                break;
            }
            i++;
        }
        return false;
    }

    private void bH() {
        boolean zBI = bI();
        this.cA = zBI;
        if (zBI) {
            this.cr.cq().u(this.cG);
        }
        bK();
    }

    private boolean bI() {
        if (!bJ()) {
            return false;
        }
        ad adVarCq = this.cr.cq();
        return this.cl.b(adVarCq == this.cr.cr() ? adVarCq.r(this.cG) : adVarCq.r(this.cG) - adVarCq.fx.fF, n(adVarCq.ch()), this.cp.av().gD);
    }

    private boolean bJ() {
        ad adVarCq = this.cr.cq();
        return (adVarCq == null || adVarCq.ch() == Long.MIN_VALUE) ? false : true;
    }

    private void bK() {
        ad adVarCq = this.cr.cq();
        boolean z = this.cA || (adVarCq != null && adVarCq.ft.kO());
        al alVar = this.cd;
        if (z != alVar.aW) {
            this.cd = alVar.t(z);
        }
    }

    private void bL() throws p {
        a(new boolean[this.bB.length]);
    }

    private long bM() {
        return n(this.cd.gA);
    }

    private boolean bN() {
        al alVar = this.cd;
        return alVar.gw && alVar.gx == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean bO() {
        return Boolean.valueOf(this.cw);
    }

    private void bj() {
        this.cv.d(this.cd);
        if (this.cv.cW) {
            this.bE.onPlaybackInfoUpdate(this.cv);
            this.cv = new d(this.cd);
        }
    }

    private void bk() {
        this.cv.x(1);
        a(false, false, false, true);
        this.cl.ap();
        v(this.cd.ci.isEmpty() ? 4 : 2);
        this.cs.a(this.bO.od());
        this.cm.fs(2);
    }

    private void bl() throws Throwable {
        a(this.cs.cy(), true);
    }

    private void bm() throws p {
        this.cz = false;
        this.cp.start();
        for (ar arVar : this.bB) {
            if (e(arVar)) {
                arVar.start();
            }
        }
    }

    private void bn() throws p {
        this.cp.W();
        for (ar arVar : this.bB) {
            if (e(arVar)) {
                c(arVar);
            }
        }
    }

    private void bo() throws p {
        q(true);
    }

    private void bp() throws p {
        ad adVarCr = this.cr.cr();
        if (adVarCr == null) {
            return;
        }
        long jKN = adVarCr.fv ? adVarCr.ft.kN() : -9223372036854775807L;
        if (jKN != C.TIME_UNSET) {
            l(jKN);
            if (jKN != this.cd.cO) {
                al alVar = this.cd;
                this.cd = a(alVar.dc, jKN, alVar.de, jKN, true, 5);
            }
        } else {
            long jF = this.cp.f(adVarCr != this.cr.cs());
            this.cG = jF;
            long jR = adVarCr.r(jF);
            e(this.cd.cO, jR);
            this.cd.cO = jR;
        }
        this.cd.gA = this.cr.cq().cg();
        this.cd.gB = bM();
        al alVar2 = this.cd;
        if (alVar2.gw && alVar2.gs == 3 && a(alVar2.ci, alVar2.dc) && this.cd.gy.gD == 1.0f) {
            float fA = this.ct.a(bs(), bM());
            if (this.cp.av().gD != fA) {
                this.cp.a(this.cd.gy.f(fA));
                a(this.cd.gy, this.cp.av().gD, false, false);
            }
        }
    }

    private void bq() {
        for (ad adVarCr = this.cr.cr(); adVarCr != null; adVarCr = adVarCr.ci()) {
            for (com.applovin.exoplayer2.j.d dVar : adVarCr.ck().VE) {
                if (dVar != null) {
                    dVar.no();
                }
            }
        }
    }

    private void br() throws IOException, p {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        long jOL = this.bR.oL();
        by();
        int i2 = this.cd.gs;
        if (i2 == 1 || i2 == 4) {
            this.cm.ft(2);
            return;
        }
        ad adVarCr = this.cr.cr();
        if (adVarCr == null) {
            c(jOL, 10L);
            return;
        }
        com.applovin.exoplayer2.l.ah.bg("doSomeWork");
        bp();
        if (adVarCr.fv) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            adVarCr.ft.d(this.cd.cO - this.aT, this.aU);
            int i3 = 0;
            z = true;
            z2 = true;
            while (true) {
                ar[] arVarArr = this.bB;
                if (i3 >= arVarArr.length) {
                    break;
                }
                ar arVar = arVarArr[i3];
                if (e(arVar)) {
                    arVar.g(this.cG, jElapsedRealtime);
                    z = z && arVar.cR();
                    boolean z4 = adVarCr.fu[i3] != arVar.Q();
                    boolean z5 = z4 || (!z4 && arVar.R()) || arVar.isReady() || arVar.cR();
                    z2 = z2 && z5;
                    if (!z5) {
                        arVar.V();
                    }
                }
                i3++;
            }
        } else {
            adVarCr.ft.kM();
            z = true;
            z2 = true;
        }
        long j = adVarCr.fx.fH;
        boolean z6 = z && adVarCr.fv && (j == C.TIME_UNSET || j <= this.cd.cO);
        if (z6 && this.cy) {
            this.cy = false;
            a(false, this.cd.gx, false, 5);
        }
        if (z6 && adVarCr.fx.fL) {
            v(4);
            bn();
        } else if (this.cd.gs == 2 && r(z2)) {
            v(3);
            this.cJ = null;
            if (bN()) {
                bm();
            }
        } else if (this.cd.gs == 3 && (this.cE != 0 ? !z2 : !bw())) {
            this.cz = bN();
            v(2);
            if (this.cz) {
                bq();
                this.ct.al();
            }
            bn();
        }
        if (this.cd.gs == 2) {
            int i4 = 0;
            while (true) {
                ar[] arVarArr2 = this.bB;
                if (i4 >= arVarArr2.length) {
                    break;
                }
                if (e(arVarArr2[i4]) && this.bB[i4].Q() == adVarCr.fu[i4]) {
                    this.bB[i4].V();
                }
                i4++;
            }
            al alVar = this.cd;
            if (!alVar.aW && alVar.gB < 500000 && bJ()) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        }
        boolean z7 = this.cD;
        al alVar2 = this.cd;
        if (z7 != alVar2.cD) {
            this.cd = alVar2.u(z7);
        }
        if ((bN() && this.cd.gs == 3) || (i = this.cd.gs) == 2) {
            z3 = !d(jOL, 10L);
        } else {
            if (this.cE == 0 || i == 4) {
                this.cm.ft(2);
            } else {
                c(jOL, 1000L);
            }
            z3 = false;
        }
        al alVar3 = this.cd;
        if (alVar3.gz != z3) {
            this.cd = alVar3.v(z3);
        }
        this.cC = false;
        com.applovin.exoplayer2.l.ah.pV();
    }

    private long bs() {
        al alVar = this.cd;
        return a(alVar.ci, alVar.dc.gM, alVar.cO);
    }

    private void bt() {
        a(true, false, true, false);
        this.cl.aq();
        v(1);
        this.cn.quit();
        synchronized (this) {
            this.cw = true;
            notifyAll();
        }
    }

    private void bu() throws p {
        float f2 = this.cp.av().gD;
        ad adVarCs = this.cr.cs();
        boolean z = true;
        for (ad adVarCr = this.cr.cr(); adVarCr != null && adVarCr.fv; adVarCr = adVarCr.ci()) {
            com.applovin.exoplayer2.j.k kVarB = adVarCr.b(f2, this.cd.ci);
            if (!kVarB.b(adVarCr.ck())) {
                if (z) {
                    ad adVarCr2 = this.cr.cr();
                    boolean zB = this.cr.b(adVarCr2);
                    boolean[] zArr = new boolean[this.bB.length];
                    long jA = adVarCr2.a(kVarB, this.cd.cO, zB, zArr);
                    al alVar = this.cd;
                    boolean z2 = (alVar.gs == 4 || jA == alVar.cO) ? false : true;
                    al alVar2 = this.cd;
                    this.cd = a(alVar2.dc, jA, alVar2.de, alVar2.gr, z2, 5);
                    if (z2) {
                        l(jA);
                    }
                    boolean[] zArr2 = new boolean[this.bB.length];
                    int i = 0;
                    while (true) {
                        ar[] arVarArr = this.bB;
                        if (i >= arVarArr.length) {
                            break;
                        }
                        ar arVar = arVarArr[i];
                        zArr2[i] = e(arVar);
                        com.applovin.exoplayer2.h.x xVar = adVarCr2.fu[i];
                        if (zArr2[i]) {
                            if (xVar != arVar.Q()) {
                                d(arVar);
                            } else if (zArr[i]) {
                                arVar.d(this.cG);
                            }
                        }
                        i++;
                    }
                    a(zArr2);
                } else {
                    this.cr.b(adVarCr);
                    if (adVarCr.fv) {
                        adVarCr.a(kVarB, Math.max(adVarCr.fx.fF, adVarCr.r(this.cG)), false);
                    }
                }
                s(true);
                if (this.cd.gs != 4) {
                    bH();
                    bp();
                    this.cm.fs(2);
                    return;
                }
                return;
            }
            if (adVarCr == adVarCs) {
                z = false;
            }
        }
    }

    private void bv() {
        for (ad adVarCr = this.cr.cr(); adVarCr != null; adVarCr = adVarCr.ci()) {
            for (com.applovin.exoplayer2.j.d dVar : adVarCr.ck().VE) {
                if (dVar != null) {
                    dVar.nn();
                }
            }
        }
    }

    private boolean bw() {
        ad adVarCr = this.cr.cr();
        long j = adVarCr.fx.fH;
        return adVarCr.fv && (j == C.TIME_UNSET || this.cd.cO < j || !bN());
    }

    private long bx() {
        ad adVarCs = this.cr.cs();
        if (adVarCs == null) {
            return 0L;
        }
        long jCd = adVarCs.cd();
        if (!adVarCs.fv) {
            return jCd;
        }
        int i = 0;
        while (true) {
            ar[] arVarArr = this.bB;
            if (i >= arVarArr.length) {
                return jCd;
            }
            if (e(arVarArr[i]) && this.bB[i].Q() == adVarCs.fu[i]) {
                long jS = this.bB[i].S();
                if (jS == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jCd = Math.max(jS, jCd);
            }
            i++;
        }
    }

    private void by() throws IOException, p {
        if (this.cd.ci.isEmpty() || !this.cs.cw()) {
            return;
        }
        bz();
        bA();
        bB();
        bD();
    }

    private void bz() throws p {
        ae aeVarA;
        this.cr.t(this.cG);
        if (this.cr.cp() && (aeVarA = this.cr.a(this.cG, this.cd)) != null) {
            ad adVarA = this.cr.a(this.ck, this.bC, this.cl.ar(), this.cs, aeVarA, this.bz);
            adVarA.ft.a(this, aeVarA.fF);
            if (this.cr.cr() == adVarA) {
                l(adVarA.ce());
            }
            s(false);
        }
        if (!this.cA) {
            bH();
        } else {
            this.cA = bJ();
            bK();
        }
    }

    private void c(float f2) {
        for (ad adVarCr = this.cr.cr(); adVarCr != null; adVarCr = adVarCr.ci()) {
            for (com.applovin.exoplayer2.j.d dVar : adVarCr.ck().VE) {
                if (dVar != null) {
                    dVar.v(f2);
                }
            }
        }
    }

    private void c(int i, boolean z) throws p {
        ar arVar = this.bB[i];
        if (e(arVar)) {
            return;
        }
        ad adVarCs = this.cr.cs();
        boolean z2 = adVarCs == this.cr.cr();
        com.applovin.exoplayer2.j.k kVarCk = adVarCs.ck();
        at atVar = kVarCk.VD[i];
        v[] vVarArrA = a(kVarCk.VE[i]);
        boolean z3 = bN() && this.cd.gs == 3;
        boolean z4 = !z && z3;
        this.cE++;
        this.cj.add(arVar);
        arVar.a(atVar, vVarArrA, adVarCs.fu[i], this.cG, z4, z2, adVarCs.ce(), adVarCs.cd());
        arVar.a(11, new ar.a() { // from class: com.applovin.exoplayer2.s.1
            @Override // com.applovin.exoplayer2.ar.a
            public void bP() {
                s.this.cm.fs(2);
            }

            @Override // com.applovin.exoplayer2.ar.a
            public void o(long j) {
                if (j >= AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS) {
                    s.this.cC = true;
                }
            }
        });
        this.cp.a(arVar);
        if (z3) {
            arVar.start();
        }
    }

    private void c(long j, long j2) {
        this.cm.ft(2);
        this.cm.k(2, j + j2);
    }

    private void c(am amVar) throws p {
        this.cp.a(amVar);
        a(this.cp.av(), true);
    }

    private void c(ao aoVar) throws p {
        if (aoVar.cI() != this.co) {
            this.cm.c(15, aoVar).oY();
            return;
        }
        e(aoVar);
        int i = this.cd.gs;
        if (i == 3 || i == 2) {
            this.cm.fs(2);
        }
    }

    private void c(ar arVar) throws p {
        if (arVar.P() == 2) {
            arVar.W();
        }
    }

    private void c(com.applovin.exoplayer2.h.n nVar) throws p {
        if (this.cr.e(nVar)) {
            ad adVarCq = this.cr.cq();
            adVarCq.a(this.cp.av().gD, this.cd.ci);
            a(adVarCq.cj(), adVarCq.ck());
            if (adVarCq == this.cr.cr()) {
                l(adVarCq.fx.fF);
                bL();
                al alVar = this.cd;
                p.a aVar = alVar.dc;
                long j = adVarCq.fx.fF;
                this.cd = a(aVar, j, alVar.de, j, false, 5);
            }
            bH();
        }
    }

    private void d(final ao aoVar) {
        Looper looperCI = aoVar.cI();
        if (looperCI.getThread().isAlive()) {
            this.bR.a(looperCI, null).e(new Runnable() { // from class: com.applovin.exoplayer2.s1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.f(aoVar);
                }
            });
        } else {
            com.applovin.exoplayer2.l.q.h("TAG", "Trying to send message on a dead thread.");
            aoVar.B(false);
        }
    }

    private void d(ar arVar) throws p {
        if (e(arVar)) {
            this.cp.b(arVar);
            c(arVar);
            arVar.X();
            this.cE--;
        }
    }

    private void d(com.applovin.exoplayer2.h.n nVar) {
        if (this.cr.e(nVar)) {
            this.cr.t(this.cG);
            bH();
        }
    }

    private boolean d(long j, long j2) {
        if (this.cD && this.cC) {
            return false;
        }
        c(j, j2);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0045, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0074, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void e(long r8, long r10) throws com.applovin.exoplayer2.p {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.e(long, long):void");
    }

    private void e(ao aoVar) throws p {
        if (aoVar.cN()) {
            return;
        }
        try {
            aoVar.cF().a(aoVar.cG(), aoVar.cH());
        } finally {
            aoVar.B(true);
        }
    }

    private static boolean e(ar arVar) {
        return arVar.P() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(ao aoVar) {
        try {
            e(aoVar);
        } catch (p e2) {
            com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void l(long j) throws p {
        ad adVarCr = this.cr.cr();
        if (adVarCr != null) {
            j = adVarCr.q(j);
        }
        this.cG = j;
        this.cp.d(j);
        for (ar arVar : this.bB) {
            if (e(arVar)) {
                arVar.d(this.cG);
            }
        }
        bv();
    }

    private void m(long j) {
        for (ar arVar : this.bB) {
            if (arVar.Q() != null) {
                a(arVar, j);
            }
        }
    }

    private void m(boolean z) {
        for (ad adVarCr = this.cr.cr(); adVarCr != null; adVarCr = adVarCr.ci()) {
            for (com.applovin.exoplayer2.j.d dVar : adVarCr.ck().VE) {
                if (dVar != null) {
                    dVar.am(z);
                }
            }
        }
    }

    private long n(long j) {
        ad adVarCq = this.cr.cq();
        if (adVarCq == null) {
            return 0L;
        }
        return Math.max(0L, j - adVarCq.r(this.cG));
    }

    private void n(boolean z) throws p {
        this.cx = z;
        bE();
        if (!this.cy || this.cr.cs() == this.cr.cr()) {
            return;
        }
        q(true);
        s(false);
    }

    private void o(boolean z) {
        if (z == this.cD) {
            return;
        }
        this.cD = z;
        al alVar = this.cd;
        int i = alVar.gs;
        if (z || i == 4 || i == 1) {
            this.cd = alVar.u(z);
        } else {
            this.cm.fs(2);
        }
    }

    private void p(boolean z) throws p {
        this.bT = z;
        if (!this.cr.b(this.cd.ci, z)) {
            q(true);
        }
        s(false);
    }

    private void q(boolean z) throws p {
        p.a aVar = this.cr.cr().fx.fE;
        long jA = a(aVar, this.cd.cO, true, false);
        if (jA != this.cd.cO) {
            al alVar = this.cd;
            this.cd = a(aVar, jA, alVar.de, alVar.gr, z, 5);
        }
    }

    private boolean r(boolean z) {
        if (this.cE == 0) {
            return bw();
        }
        if (!z) {
            return false;
        }
        al alVar = this.cd;
        if (!alVar.aW) {
            return true;
        }
        long jAm = a(alVar.ci, this.cr.cr().fx.fE) ? this.ct.am() : C.TIME_UNSET;
        ad adVarCq = this.cr.cq();
        return (adVarCq.cf() && adVarCq.fx.fL) || (adVarCq.fx.fE.la() && !adVarCq.fv) || this.cl.a(bM(), this.cp.av().gD, this.cz, jAm);
    }

    private void s(boolean z) {
        ad adVarCq = this.cr.cq();
        p.a aVar = adVarCq == null ? this.cd.dc : adVarCq.fx.fE;
        boolean z2 = !this.cd.gv.equals(aVar);
        if (z2) {
            this.cd = this.cd.b(aVar);
        }
        al alVar = this.cd;
        alVar.gA = adVarCq == null ? alVar.cO : adVarCq.cg();
        this.cd.gB = bM();
        if ((z2 || z) && adVarCq != null && adVarCq.fv) {
            a(adVarCq.cj(), adVarCq.ck());
        }
    }

    private void v(int i) {
        al alVar = this.cd;
        if (alVar.gs != i) {
            this.cd = alVar.W(i);
        }
    }

    private void w(int i) throws p {
        this.bS = i;
        if (!this.cr.a(this.cd.ci, i)) {
            q(true);
        }
        s(false);
    }

    public void W() {
        this.cm.fr(6).oY();
    }

    public void a(int i, int i2, com.applovin.exoplayer2.h.z zVar) {
        this.cm.a(20, i, i2, zVar).oY();
    }

    @Override // com.applovin.exoplayer2.ao.a
    public synchronized void a(ao aoVar) {
        if (!this.cw && this.cn.isAlive()) {
            this.cm.c(14, aoVar).oY();
            return;
        }
        com.applovin.exoplayer2.l.q.h("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        aoVar.B(false);
    }

    @Override // com.applovin.exoplayer2.h.n.a
    public void a(com.applovin.exoplayer2.h.n nVar) {
        this.cm.c(8, nVar).oY();
    }

    public void a(List<ah.c> list, int i, long j, com.applovin.exoplayer2.h.z zVar) {
        this.cm.c(17, new a(list, zVar, i, j)).oY();
    }

    public void aD() {
        this.cm.fr(0).oY();
    }

    @Override // com.applovin.exoplayer2.m.a
    public void b(am amVar) {
        this.cm.c(16, amVar).oY();
    }

    public void b(ba baVar, int i, long j) {
        this.cm.c(3, new g(baVar, i, j)).oY();
    }

    @Override // com.applovin.exoplayer2.h.y.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(com.applovin.exoplayer2.h.n nVar) {
        this.cm.c(9, nVar).oY();
    }

    public void b(boolean z, int i) {
        this.cm.j(1, z ? 1 : 0, i).oY();
    }

    public synchronized boolean bg() {
        if (!this.cw && this.cn.isAlive()) {
            this.cm.fs(7);
            a(new Supplier() { // from class: com.applovin.exoplayer2.t1
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    return this.a.bO();
                }
            }, this.cu);
            return this.cw;
        }
        return true;
    }

    public Looper bh() {
        return this.co;
    }

    @Override // com.applovin.exoplayer2.ah.d
    public void bi() {
        this.cm.fs(22);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        ad adVarCs;
        try {
            switch (message.what) {
                case 0:
                    bk();
                    break;
                case 1:
                    a(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    br();
                    break;
                case 3:
                    a((g) message.obj);
                    break;
                case 4:
                    c((am) message.obj);
                    break;
                case 5:
                    a((av) message.obj);
                    break;
                case 6:
                    b(false, true);
                    break;
                case 7:
                    bt();
                    return true;
                case 8:
                    c((com.applovin.exoplayer2.h.n) message.obj);
                    break;
                case 9:
                    d((com.applovin.exoplayer2.h.n) message.obj);
                    break;
                case 10:
                    bu();
                    break;
                case 11:
                    w(message.arg1);
                    break;
                case 12:
                    p(message.arg1 != 0);
                    break;
                case 13:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    b((ao) message.obj);
                    break;
                case 15:
                    d((ao) message.obj);
                    break;
                case 16:
                    a((am) message.obj, false);
                    break;
                case 17:
                    a((a) message.obj);
                    break;
                case 18:
                    a((a) message.obj, message.arg1);
                    break;
                case 19:
                    a((b) message.obj);
                    break;
                case 20:
                    b(message.arg1, message.arg2, (com.applovin.exoplayer2.h.z) message.obj);
                    break;
                case 21:
                    a((com.applovin.exoplayer2.h.z) message.obj);
                    break;
                case 22:
                    bl();
                    break;
                case 23:
                    n(message.arg1 != 0);
                    break;
                case 24:
                    o(message.arg1 == 1);
                    break;
                case 25:
                    bo();
                    break;
                default:
                    return false;
            }
        } catch (ai e2) {
            int i = e2.gn;
            if (i == 1) {
                i = e2.gm ? 3001 : 3003;
            } else if (i == 4) {
                i = e2.gm ? 3002 : AuthApiStatusCodes.AUTH_TOKEN_ERROR;
            }
            b(e2, i);
        } catch (f.a e3) {
            b(e3, e3.errorCode);
        } catch (com.applovin.exoplayer2.h.b e4) {
            b(e4, 1002);
        } catch (com.applovin.exoplayer2.k.j e5) {
            b(e5, e5.tA);
        } catch (p e6) {
            e = e6;
            if (e.bs == 1 && (adVarCs = this.cr.cs()) != null) {
                e = e.a(adVarCs.fx.fE);
            }
            if (e.by && this.cJ == null) {
                com.applovin.exoplayer2.l.q.b("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.cJ = e;
                com.applovin.exoplayer2.l.o oVar = this.cm;
                oVar.a(oVar.c(25, e));
            } else {
                p pVar = this.cJ;
                if (pVar != null) {
                    pVar.addSuppressed(e);
                    e = this.cJ;
                }
                com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", e);
                b(true, false);
                this.cd = this.cd.a(e);
            }
        } catch (IOException e7) {
            b(e7, 2000);
        } catch (RuntimeException e8) {
            p pVarA = p.a(e8, ((e8 instanceof IllegalStateException) || (e8 instanceof IllegalArgumentException)) ? 1004 : 1000);
            com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", pVarA);
            b(true, false);
            this.cd = this.cd.a(pVarA);
        }
        bj();
        return true;
    }

    public void j(long j) {
        this.cK = j;
    }

    public void l(boolean z) {
        this.cm.j(12, z ? 1 : 0, 0).oY();
    }

    public void u(int i) {
        this.cm.j(11, i, 0).oY();
    }
}
