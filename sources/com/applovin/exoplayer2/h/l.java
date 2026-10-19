package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class l extends e<Void> {
    private boolean LA;
    private boolean LB;
    private a Ly;

    @Nullable
    private k Lz;
    private final ba.c U;
    private final ba.a bI;
    private final boolean bK;
    private boolean gb;
    private final p gf;

    private static final class a extends h {
        public static final Object LC = new Object();

        @Nullable
        private final Object LD;

        @Nullable
        private final Object LE;

        private a(ba baVar, @Nullable Object obj, @Nullable Object obj2) {
            super(baVar);
            this.LD = obj;
            this.LE = obj2;
        }

        public static a a(ba baVar, @Nullable Object obj, @Nullable Object obj2) {
            return new a(baVar, obj, obj2);
        }

        public static a b(com.applovin.exoplayer2.ab abVar) {
            return new a(new b(abVar), ba.c.iF, LC);
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public ba.a a(int i, ba.a aVar, boolean z) {
            this.ci.a(i, aVar, z);
            if (ai.r(aVar.ch, this.LE) && z) {
                aVar.ch = LC;
            }
            return aVar;
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public ba.c a(int i, ba.c cVar, long j) {
            this.ci.a(i, cVar, j);
            if (ai.r(cVar.ch, this.LD)) {
                cVar.ch = ba.c.iF;
            }
            return cVar;
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public Object b(int i) {
            Object objB = this.ci.b(i);
            return ai.r(objB, this.LE) ? LC : objB;
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public int c(Object obj) {
            Object obj2;
            ba baVar = this.ci;
            if (LC.equals(obj) && (obj2 = this.LE) != null) {
                obj = obj2;
            }
            return baVar.c(obj);
        }

        public a f(ba baVar) {
            return new a(baVar, this.LD, this.LE);
        }
    }

    @VisibleForTesting
    public static final class b extends ba {
        private final com.applovin.exoplayer2.ab gL;

        public b(com.applovin.exoplayer2.ab abVar) {
            this.gL = abVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public ba.a a(int i, ba.a aVar, boolean z) {
            aVar.a(z ? 0 : null, z ? a.LC : null, 0, C.TIME_UNSET, 0L, com.applovin.exoplayer2.h.a.a.NI, true);
            return aVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public ba.c a(int i, ba.c cVar, long j) {
            cVar.a(ba.c.iF, this.gL, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            cVar.iz = true;
            return cVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public Object b(int i) {
            return a.LC;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            return obj == a.LC ? 0 : -1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int cP() {
            return 1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int cQ() {
            return 1;
        }
    }

    public l(p pVar, boolean z) {
        this.gf = pVar;
        this.bK = z && pVar.lc();
        this.U = new ba.c();
        this.bI = new ba.a();
        ba baVarLb = pVar.lb();
        if (baVarLb == null) {
            this.Ly = a.b(pVar.kZ());
        } else {
            this.Ly = a.a(baVarLb, (Object) null, (Object) null);
            this.LB = true;
        }
    }

    private Object E(Object obj) {
        return (this.Ly.LE == null || !obj.equals(a.LC)) ? obj : this.Ly.LE;
    }

    private Object F(Object obj) {
        return (this.Ly.LE == null || !this.Ly.LE.equals(obj)) ? obj : a.LC;
    }

    private void aV(long j) {
        k kVar = this.Lz;
        int iC = this.Ly.c(kVar.fE.gM);
        if (iC == -1) {
            return;
        }
        long j2 = this.Ly.a(iC, this.bI).fH;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        kVar.aT(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.h.e
    @Nullable
    public p.a a(Void r1, p.a aVar) {
        return aVar.G(F(aVar.gM));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.applovin.exoplayer2.h.e
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.Void r13, com.applovin.exoplayer2.h.p r14, com.applovin.exoplayer2.ba r15) {
        /*
            r12 = this;
            boolean r13 = r12.gb
            if (r13 == 0) goto L19
            com.applovin.exoplayer2.h.l$a r13 = r12.Ly
            com.applovin.exoplayer2.h.l$a r13 = r13.f(r15)
            r12.Ly = r13
            com.applovin.exoplayer2.h.k r13 = r12.Lz
            if (r13 == 0) goto Lae
            long r13 = r13.kX()
            r12.aV(r13)
            goto Lae
        L19:
            boolean r13 = r15.isEmpty()
            if (r13 == 0) goto L36
            boolean r13 = r12.LB
            if (r13 == 0) goto L2a
            com.applovin.exoplayer2.h.l$a r13 = r12.Ly
            com.applovin.exoplayer2.h.l$a r13 = r13.f(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.applovin.exoplayer2.ba.c.iF
            java.lang.Object r14 = com.applovin.exoplayer2.h.l.a.LC
            com.applovin.exoplayer2.h.l$a r13 = com.applovin.exoplayer2.h.l.a.a(r15, r13, r14)
        L32:
            r12.Ly = r13
            goto Lae
        L36:
            com.applovin.exoplayer2.ba$c r13 = r12.U
            r14 = 0
            r15.a(r14, r13)
            com.applovin.exoplayer2.ba$c r13 = r12.U
            long r0 = r13.dk()
            com.applovin.exoplayer2.ba$c r13 = r12.U
            java.lang.Object r13 = r13.ch
            com.applovin.exoplayer2.h.k r2 = r12.Lz
            if (r2 == 0) goto L74
            long r2 = r2.kW()
            com.applovin.exoplayer2.h.l$a r4 = r12.Ly
            com.applovin.exoplayer2.h.k r5 = r12.Lz
            com.applovin.exoplayer2.h.p$a r5 = r5.fE
            java.lang.Object r5 = r5.gM
            com.applovin.exoplayer2.ba$a r6 = r12.bI
            r4.a(r5, r6)
            com.applovin.exoplayer2.ba$a r4 = r12.bI
            long r4 = r4.df()
            long r4 = r4 + r2
            com.applovin.exoplayer2.h.l$a r2 = r12.Ly
            com.applovin.exoplayer2.ba$c r3 = r12.U
            com.applovin.exoplayer2.ba$c r14 = r2.a(r14, r3)
            long r2 = r14.dk()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.applovin.exoplayer2.ba$c r7 = r12.U
            com.applovin.exoplayer2.ba$a r8 = r12.bI
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.a(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.LB
            if (r14 == 0) goto L94
            com.applovin.exoplayer2.h.l$a r13 = r12.Ly
            com.applovin.exoplayer2.h.l$a r13 = r13.f(r15)
            goto L98
        L94:
            com.applovin.exoplayer2.h.l$a r13 = com.applovin.exoplayer2.h.l.a.a(r15, r13, r0)
        L98:
            r12.Ly = r13
            com.applovin.exoplayer2.h.k r13 = r12.Lz
            if (r13 == 0) goto Lae
            r12.aV(r1)
            com.applovin.exoplayer2.h.p$a r13 = r13.fE
            java.lang.Object r14 = r13.gM
            java.lang.Object r14 = r12.E(r14)
            com.applovin.exoplayer2.h.p$a r13 = r13.G(r14)
            goto Laf
        Lae:
            r13 = 0
        Laf:
            r14 = 1
            r12.LB = r14
            r12.gb = r14
            com.applovin.exoplayer2.h.l$a r14 = r12.Ly
            r12.e(r14)
            if (r13 == 0) goto Lc6
            com.applovin.exoplayer2.h.k r14 = r12.Lz
            java.lang.Object r14 = com.applovin.exoplayer2.l.a.checkNotNull(r14)
            com.applovin.exoplayer2.h.k r14 = (com.applovin.exoplayer2.h.k) r14
            r14.g(r13)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.l.b(java.lang.Void, com.applovin.exoplayer2.h.p, com.applovin.exoplayer2.ba):void");
    }

    @Override // com.applovin.exoplayer2.h.p
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public k a(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        k kVar = new k(aVar, bVar, j);
        kVar.a(this.gf);
        if (this.gb) {
            kVar.g(aVar.G(E(aVar.gM)));
        } else {
            this.Lz = kVar;
            if (!this.LA) {
                this.LA = true;
                a((Object) null, this.gf);
            }
        }
        return kVar;
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.a
    public void b(@Nullable com.applovin.exoplayer2.k.aa aaVar) {
        super.b(aaVar);
        if (this.bK) {
            return;
        }
        this.LA = true;
        a((Object) null, this.gf);
    }

    public ba bf() {
        return this.Ly;
    }

    @Override // com.applovin.exoplayer2.h.p
    public void f(n nVar) {
        ((k) nVar).kY();
        if (nVar == this.Lz) {
            this.Lz = null;
        }
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.a
    public void kJ() {
        this.gb = false;
        this.LA = false;
        super.kJ();
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.p
    public void kS() {
    }

    @Override // com.applovin.exoplayer2.h.p
    public com.applovin.exoplayer2.ab kZ() {
        return this.gf.kZ();
    }
}
