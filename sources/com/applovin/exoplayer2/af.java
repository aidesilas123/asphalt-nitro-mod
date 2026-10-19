package com.applovin.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.h.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class af {

    @Nullable
    private final com.applovin.exoplayer2.a.a bM;
    private int bS;
    private boolean bT;
    private final Handler fM;
    private long fN;

    @Nullable
    private ad fO;

    @Nullable
    private ad fP;

    @Nullable
    private ad fQ;
    private int fR;

    @Nullable
    private Object fS;
    private long fT;
    private final ba.a bI = new ba.a();
    private final ba.c U = new ba.c();

    public af(@Nullable com.applovin.exoplayer2.a.a aVar, Handler handler) {
        this.bM = aVar;
        this.fM = handler;
    }

    private long a(ba baVar, Object obj) {
        int iC;
        int i = baVar.a(obj, this.bI).cN;
        Object obj2 = this.fS;
        if (obj2 != null && (iC = baVar.c(obj2)) != -1 && baVar.a(iC, this.bI).cN == i) {
            return this.fT;
        }
        for (ad adVarCi = this.fO; adVarCi != null; adVarCi = adVarCi.ci()) {
            if (adVarCi.ch.equals(obj)) {
                return adVarCi.fx.fE.LL;
            }
        }
        for (ad adVarCi2 = this.fO; adVarCi2 != null; adVarCi2 = adVarCi2.ci()) {
            int iC2 = baVar.c(adVarCi2.ch);
            if (iC2 != -1 && baVar.a(iC2, this.bI).cN == i) {
                return adVarCi2.fx.fE.LL;
            }
        }
        long j = this.fN;
        this.fN = 1 + j;
        if (this.fO == null) {
            this.fS = obj;
            this.fT = j;
        }
        return j;
    }

    private long a(ba baVar, Object obj, int i) {
        baVar.a(obj, this.bI);
        long jAl = this.bI.al(i);
        return jAl == Long.MIN_VALUE ? this.bI.fH : jAl + this.bI.aq(i);
    }

    @Nullable
    private ae a(ba baVar, ad adVar, long j) {
        long j2;
        ae aeVar = adVar.fx;
        long jCd = (adVar.cd() + aeVar.fH) - j;
        if (aeVar.fJ) {
            long j3 = 0;
            int iA = baVar.a(baVar.c(aeVar.fE.gM), this.bI, this.U, this.bS, this.bT);
            if (iA == -1) {
                return null;
            }
            int i = baVar.a(iA, this.bI, true).cN;
            Object obj = this.bI.ch;
            long j4 = aeVar.fE.LL;
            if (baVar.a(i, this.U).iQ == iA) {
                Pair<Object, Long> pairA = baVar.a(this.U, this.bI, i, C.TIME_UNSET, Math.max(0L, jCd));
                if (pairA == null) {
                    return null;
                }
                obj = pairA.first;
                long jLongValue = ((Long) pairA.second).longValue();
                ad adVarCi = adVar.ci();
                if (adVarCi == null || !adVarCi.ch.equals(obj)) {
                    j4 = this.fN;
                    this.fN = 1 + j4;
                } else {
                    j4 = adVarCi.fx.fE.LL;
                }
                j2 = jLongValue;
                j3 = C.TIME_UNSET;
            } else {
                j2 = 0;
            }
            return a(baVar, a(baVar, obj, j2, j4, this.bI), j3, j2);
        }
        p.a aVar = aeVar.fE;
        baVar.a(aVar.gM, this.bI);
        if (!aVar.la()) {
            int iAm = this.bI.am(aVar.LM);
            if (iAm != this.bI.ao(aVar.LM)) {
                return a(baVar, aVar.gM, aVar.LM, iAm, aeVar.fH, aVar.LL);
            }
            return a(baVar, aVar.gM, a(baVar, aVar.gM, aVar.LM), aeVar.fH, aVar.LL);
        }
        int i2 = aVar.gP;
        int iAo = this.bI.ao(i2);
        if (iAo == -1) {
            return null;
        }
        int iH = this.bI.h(i2, aVar.gQ);
        if (iH < iAo) {
            return a(baVar, aVar.gM, i2, iH, aeVar.de, aVar.LL);
        }
        long jLongValue2 = aeVar.de;
        if (jLongValue2 == C.TIME_UNSET) {
            ba.c cVar = this.U;
            ba.a aVar2 = this.bI;
            Pair<Object, Long> pairA2 = baVar.a(cVar, aVar2, aVar2.cN, C.TIME_UNSET, Math.max(0L, jCd));
            if (pairA2 == null) {
                return null;
            }
            jLongValue2 = ((Long) pairA2.second).longValue();
        }
        return a(baVar, aVar.gM, Math.max(a(baVar, aVar.gM, aVar.gP), jLongValue2), aeVar.de, aVar.LL);
    }

    @Nullable
    private ae a(ba baVar, p.a aVar, long j, long j2) {
        baVar.a(aVar.gM, this.bI);
        return aVar.la() ? a(baVar, aVar.gM, aVar.gP, aVar.gQ, j, aVar.LL) : a(baVar, aVar.gM, j2, j, aVar.LL);
    }

    private ae a(ba baVar, Object obj, int i, int i2, long j, long j2) {
        p.a aVar = new p.a(obj, i, i2, j2);
        long jI = baVar.a(aVar.gM, this.bI).i(aVar.gP, aVar.gQ);
        long jDi = i2 == this.bI.am(i) ? this.bI.di() : 0L;
        return new ae(aVar, (jI == C.TIME_UNSET || jDi < jI) ? jDi : Math.max(0L, jI - 1), j, C.TIME_UNSET, jI, this.bI.ap(aVar.gP), false, false, false);
    }

    private ae a(ba baVar, Object obj, long j, long j2, long j3) {
        long jMax = j;
        baVar.a(obj, this.bI);
        int iB = this.bI.B(jMax);
        p.a aVar = new p.a(obj, j3, iB);
        boolean zA = a(aVar);
        boolean zB = b(baVar, aVar);
        boolean zA2 = a(baVar, aVar, zA);
        boolean z = iB != -1 && this.bI.ap(iB);
        long jAl = iB != -1 ? this.bI.al(iB) : -9223372036854775807L;
        long j4 = (jAl == C.TIME_UNSET || jAl == Long.MIN_VALUE) ? this.bI.fH : jAl;
        if (j4 != C.TIME_UNSET && jMax >= j4) {
            jMax = Math.max(0L, j4 - 1);
        }
        return new ae(aVar, jMax, j2, jAl, j4, z, zA, zB, zA2);
    }

    private static p.a a(ba baVar, Object obj, long j, long j2, ba.a aVar) {
        baVar.a(obj, aVar);
        int iA = aVar.A(j);
        return iA == -1 ? new p.a(obj, j2, aVar.B(j)) : new p.a(obj, iA, aVar.am(iA), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(s.a aVar, p.a aVar2) {
        this.bM.a(aVar.gd(), aVar2);
    }

    private boolean a(ae aeVar, ae aeVar2) {
        return aeVar.fF == aeVar2.fF && aeVar.fE.equals(aeVar2.fE);
    }

    private boolean a(ba baVar, p.a aVar, boolean z) {
        int iC = baVar.c(aVar.gM);
        return !baVar.a(baVar.a(iC, this.bI).cN, this.U).iN && baVar.b(iC, this.bI, this.U, this.bS, this.bT) && z;
    }

    private boolean a(p.a aVar) {
        return !aVar.la() && aVar.LM == -1;
    }

    private boolean b(ba baVar) {
        ad adVarCi = this.fO;
        if (adVarCi == null) {
            return true;
        }
        int iC = baVar.c(adVarCi.ch);
        while (true) {
            iC = baVar.a(iC, this.bI, this.U, this.bS, this.bT);
            while (adVarCi.ci() != null && !adVarCi.fx.fJ) {
                adVarCi = adVarCi.ci();
            }
            ad adVarCi2 = adVarCi.ci();
            if (iC == -1 || adVarCi2 == null || baVar.c(adVarCi2.ch) != iC) {
                break;
            }
            adVarCi = adVarCi2;
        }
        boolean zB = b(adVarCi);
        adVarCi.fx = a(baVar, adVarCi.fx);
        return !zB;
    }

    private boolean b(ba baVar, p.a aVar) {
        if (a(aVar)) {
            return baVar.a(baVar.a(aVar.gM, this.bI).cN, this.U).iR == baVar.c(aVar.gM);
        }
        return false;
    }

    private void cv() {
        if (this.bM != null) {
            final s.a aVarGc = com.applovin.exoplayer2.common.a.s.gc();
            for (ad adVarCi = this.fO; adVarCi != null; adVarCi = adVarCi.ci()) {
                aVarGc.t(adVarCi.fx.fE);
            }
            ad adVar = this.fP;
            final p.a aVar = adVar == null ? null : adVar.fx.fE;
            this.fM.post(new Runnable() { // from class: com.applovin.exoplayer2.g0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(aVarGc, aVar);
                }
            });
        }
    }

    @Nullable
    private ae e(al alVar) {
        return a(alVar.ci, alVar.dc, alVar.de, alVar.cO);
    }

    private boolean f(long j, long j2) {
        return j == C.TIME_UNSET || j == j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.applovin.exoplayer2.ad a(com.applovin.exoplayer2.as[] r12, com.applovin.exoplayer2.j.j r13, com.applovin.exoplayer2.k.b r14, com.applovin.exoplayer2.ah r15, com.applovin.exoplayer2.ae r16, com.applovin.exoplayer2.j.k r17) {
        /*
            r11 = this;
            r0 = r11
            r8 = r16
            com.applovin.exoplayer2.ad r1 = r0.fQ
            if (r1 != 0) goto L1e
            com.applovin.exoplayer2.h.p$a r1 = r8.fE
            boolean r1 = r1.la()
            if (r1 == 0) goto L1b
            long r1 = r8.de
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L1b
            goto L2c
        L1b:
            r1 = 0
            goto L2c
        L1e:
            long r1 = r1.cd()
            com.applovin.exoplayer2.ad r3 = r0.fQ
            com.applovin.exoplayer2.ae r3 = r3.fx
            long r3 = r3.fH
            long r1 = r1 + r3
            long r3 = r8.fF
            long r1 = r1 - r3
        L2c:
            r3 = r1
            com.applovin.exoplayer2.ad r10 = new com.applovin.exoplayer2.ad
            r1 = r10
            r2 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            r1.<init>(r2, r3, r5, r6, r7, r8, r9)
            com.applovin.exoplayer2.ad r1 = r0.fQ
            if (r1 == 0) goto L43
            r1.a(r10)
            goto L47
        L43:
            r0.fO = r10
            r0.fP = r10
        L47:
            r1 = 0
            r0.fS = r1
            r0.fQ = r10
            int r1 = r0.fR
            int r1 = r1 + 1
            r0.fR = r1
            r11.cv()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.af.a(com.applovin.exoplayer2.as[], com.applovin.exoplayer2.j.j, com.applovin.exoplayer2.k.b, com.applovin.exoplayer2.ah, com.applovin.exoplayer2.ae, com.applovin.exoplayer2.j.k):com.applovin.exoplayer2.ad");
    }

    @Nullable
    public ae a(long j, al alVar) {
        ad adVar = this.fQ;
        return adVar == null ? e(alVar) : a(alVar.ci, adVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.applovin.exoplayer2.ae a(com.applovin.exoplayer2.ba r19, com.applovin.exoplayer2.ae r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.applovin.exoplayer2.h.p$a r3 = r2.fE
            boolean r12 = r0.a(r3)
            boolean r13 = r0.b(r1, r3)
            boolean r14 = r0.a(r1, r3, r12)
            com.applovin.exoplayer2.h.p$a r4 = r2.fE
            java.lang.Object r4 = r4.gM
            com.applovin.exoplayer2.ba$a r5 = r0.bI
            r1.a(r4, r5)
            boolean r1 = r3.la()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L35
            int r1 = r3.LM
            if (r1 != r4) goto L2e
            goto L35
        L2e:
            com.applovin.exoplayer2.ba$a r7 = r0.bI
            long r7 = r7.al(r1)
            goto L36
        L35:
            r7 = r5
        L36:
            boolean r1 = r3.la()
            if (r1 == 0) goto L48
            com.applovin.exoplayer2.ba$a r1 = r0.bI
            int r5 = r3.gP
            int r6 = r3.gQ
            long r5 = r1.i(r5, r6)
        L46:
            r9 = r5
            goto L5c
        L48:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L55
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            com.applovin.exoplayer2.ba$a r1 = r0.bI
            long r5 = r1.dd()
            goto L46
        L5c:
            boolean r1 = r3.la()
            if (r1 == 0) goto L6c
            com.applovin.exoplayer2.ba$a r1 = r0.bI
            int r4 = r3.gP
            boolean r1 = r1.ap(r4)
            r11 = r1
            goto L7d
        L6c:
            int r1 = r3.LM
            if (r1 == r4) goto L7b
            com.applovin.exoplayer2.ba$a r4 = r0.bI
            boolean r1 = r4.ap(r1)
            if (r1 == 0) goto L7b
            r1 = 1
            r11 = 1
            goto L7d
        L7b:
            r1 = 0
            r11 = 0
        L7d:
            com.applovin.exoplayer2.ae r15 = new com.applovin.exoplayer2.ae
            long r4 = r2.fF
            long r1 = r2.de
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.af.a(com.applovin.exoplayer2.ba, com.applovin.exoplayer2.ae):com.applovin.exoplayer2.ae");
    }

    public boolean a(ba baVar, int i) {
        this.bS = i;
        return b(baVar);
    }

    public boolean a(ba baVar, long j, long j2) {
        ae aeVarA;
        ad adVarCi = this.fO;
        ad adVar = null;
        while (adVarCi != null) {
            ae aeVar = adVarCi.fx;
            if (adVar != null) {
                ae aeVarA2 = a(baVar, adVar, j);
                if (aeVarA2 != null && a(aeVar, aeVarA2)) {
                    aeVarA = aeVarA2;
                }
                return !b(adVar);
            }
            aeVarA = a(baVar, aeVar);
            adVarCi.fx = aeVarA.w(aeVar.de);
            if (!f(aeVar.fH, aeVarA.fH)) {
                adVarCi.cl();
                long j3 = aeVarA.fH;
                return (b(adVarCi) || (adVarCi == this.fP && !adVarCi.fx.fI && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j3 > C.TIME_UNSET ? 1 : (j3 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : adVarCi.q(j3)) ? 1 : (j2 == ((j3 > C.TIME_UNSET ? 1 : (j3 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : adVarCi.q(j3)) ? 0 : -1)) >= 0))) ? false : true;
            }
            adVar = adVarCi;
            adVarCi = adVarCi.ci();
        }
        return true;
    }

    public p.a b(ba baVar, Object obj, long j) {
        return a(baVar, obj, j, a(baVar, obj), this.bI);
    }

    public boolean b(ad adVar) {
        boolean z = false;
        com.applovin.exoplayer2.l.a.checkState(adVar != null);
        if (adVar.equals(this.fQ)) {
            return false;
        }
        this.fQ = adVar;
        while (adVar.ci() != null) {
            adVar = adVar.ci();
            if (adVar == this.fP) {
                this.fP = this.fO;
                z = true;
            }
            adVar.release();
            this.fR--;
        }
        this.fQ.a((ad) null);
        cv();
        return z;
    }

    public boolean b(ba baVar, boolean z) {
        this.bT = z;
        return b(baVar);
    }

    public void clear() {
        if (this.fR == 0) {
            return;
        }
        ad adVarCi = (ad) com.applovin.exoplayer2.l.a.N(this.fO);
        this.fS = adVarCi.ch;
        this.fT = adVarCi.fx.fE.LL;
        while (adVarCi != null) {
            adVarCi.release();
            adVarCi = adVarCi.ci();
        }
        this.fO = null;
        this.fQ = null;
        this.fP = null;
        this.fR = 0;
        cv();
    }

    public boolean cp() {
        ad adVar = this.fQ;
        return adVar == null || (!adVar.fx.fL && adVar.cf() && this.fQ.fx.fH != C.TIME_UNSET && this.fR < 100);
    }

    @Nullable
    public ad cq() {
        return this.fQ;
    }

    @Nullable
    public ad cr() {
        return this.fO;
    }

    @Nullable
    public ad cs() {
        return this.fP;
    }

    public ad ct() {
        ad adVar = this.fP;
        com.applovin.exoplayer2.l.a.checkState((adVar == null || adVar.ci() == null) ? false : true);
        this.fP = this.fP.ci();
        cv();
        return this.fP;
    }

    @Nullable
    public ad cu() {
        ad adVar = this.fO;
        if (adVar == null) {
            return null;
        }
        if (adVar == this.fP) {
            this.fP = adVar.ci();
        }
        this.fO.release();
        int i = this.fR - 1;
        this.fR = i;
        if (i == 0) {
            this.fQ = null;
            ad adVar2 = this.fO;
            this.fS = adVar2.ch;
            this.fT = adVar2.fx.fE.LL;
        }
        this.fO = this.fO.ci();
        cv();
        return this.fO;
    }

    public boolean e(com.applovin.exoplayer2.h.n nVar) {
        ad adVar = this.fQ;
        return adVar != null && adVar.ft == nVar;
    }

    public void t(long j) {
        ad adVar = this.fQ;
        if (adVar != null) {
            adVar.t(j);
        }
    }
}
