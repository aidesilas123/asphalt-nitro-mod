package com.applovin.exoplayer2.e.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class n implements j {
    private String Ct;
    private long Dh;
    private final z Dz;
    private a Ei;
    private boolean vJ;
    private com.applovin.exoplayer2.e.x wl;
    private final boolean[] Df = new boolean[3];
    private final r Ej = new r(32, 128);
    private final r DC = new r(33, 128);
    private final r DD = new r(34, 128);
    private final r Ek = new r(39, 128);
    private final r El = new r(40, 128);
    private long Dk = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y DH = new com.applovin.exoplayer2.l.y();

    private static final class a {
        private long DP;
        private long Da;
        private long Dl;
        private boolean Dm;
        private boolean Dv;
        private long Em;
        private boolean En;
        private int Eo;
        private boolean Ep;
        private boolean Eq;
        private boolean Er;
        private boolean Es;
        private final com.applovin.exoplayer2.e.x wl;

        public a(com.applovin.exoplayer2.e.x xVar) {
            this.wl = xVar;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void cw(int i) {
            long j = this.Da;
            if (j == C.TIME_UNSET) {
                return;
            }
            boolean z = this.Dm;
            this.wl.a(j, z ? 1 : 0, (int) (this.Em - this.Dl), i, null);
        }

        private static boolean cy(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        private static boolean cz(int i) {
            return i < 32 || i == 40;
        }

        public void Y() {
            this.Ep = false;
            this.Eq = false;
            this.Er = false;
            this.Dv = false;
            this.Es = false;
        }

        public void a(long j, int i, int i2, long j2, boolean z) {
            this.Eq = false;
            this.Er = false;
            this.DP = j2;
            this.Eo = 0;
            this.Em = j;
            if (!cz(i2)) {
                if (this.Dv && !this.Es) {
                    if (z) {
                        cw(i);
                    }
                    this.Dv = false;
                }
                if (cy(i2)) {
                    this.Er = !this.Es;
                    this.Es = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.En = z2;
            this.Ep = z2 || i2 <= 9;
        }

        public void b(long j, int i, boolean z) {
            if (this.Es && this.Eq) {
                this.Dm = this.En;
                this.Es = false;
            } else if (this.Er || this.Eq) {
                if (z && this.Dv) {
                    cw(i + ((int) (j - this.Em)));
                }
                this.Dl = this.Em;
                this.Da = this.DP;
                this.Dm = this.En;
                this.Dv = true;
            }
        }

        public void h(byte[] bArr, int i, int i2) {
            if (this.Ep) {
                int i3 = this.Eo;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.Eo = i3 + (i2 - i);
                } else {
                    this.Eq = (bArr[i4] & 128) != 0;
                    this.Ep = false;
                }
            }
        }
    }

    public n(z zVar) {
        this.Dz = zVar;
    }

    private static com.applovin.exoplayer2.v a(@Nullable String str, r rVar, r rVar2, r rVar3) {
        int i = rVar.EK;
        byte[] bArr = new byte[rVar2.EK + i + rVar3.EK];
        System.arraycopy(rVar.EJ, 0, bArr, 0, i);
        System.arraycopy(rVar2.EJ, 0, bArr, rVar.EK, rVar2.EK);
        System.arraycopy(rVar3.EJ, 0, bArr, rVar.EK + rVar2.EK, rVar3.EK);
        com.applovin.exoplayer2.l.z zVar = new com.applovin.exoplayer2.l.z(rVar2.EJ, 0, rVar2.EK);
        zVar.bR(44);
        int iBQ = zVar.bQ(3);
        zVar.ph();
        zVar.bR(88);
        zVar.bR(8);
        int i2 = 0;
        for (int i3 = 0; i3 < iBQ; i3++) {
            if (zVar.ik()) {
                i2 += 89;
            }
            if (zVar.ik()) {
                i2 += 8;
            }
        }
        zVar.bR(i2);
        if (iBQ > 0) {
            zVar.bR((8 - iBQ) * 2);
        }
        zVar.pM();
        int iPM = zVar.pM();
        if (iPM == 3) {
            zVar.ph();
        }
        int iPM2 = zVar.pM();
        int iPM3 = zVar.pM();
        if (zVar.ik()) {
            int iPM4 = zVar.pM();
            int iPM5 = zVar.pM();
            int iPM6 = zVar.pM();
            int iPM7 = zVar.pM();
            iPM2 -= ((iPM == 1 || iPM == 2) ? 2 : 1) * (iPM4 + iPM5);
            iPM3 -= (iPM == 1 ? 2 : 1) * (iPM6 + iPM7);
        }
        zVar.pM();
        zVar.pM();
        int iPM8 = zVar.pM();
        for (int i4 = zVar.ik() ? 0 : iBQ; i4 <= iBQ; i4++) {
            zVar.pM();
            zVar.pM();
            zVar.pM();
        }
        zVar.pM();
        zVar.pM();
        zVar.pM();
        zVar.pM();
        zVar.pM();
        zVar.pM();
        if (zVar.ik() && zVar.ik()) {
            a(zVar);
        }
        zVar.bR(2);
        if (zVar.ik()) {
            zVar.bR(8);
            zVar.pM();
            zVar.pM();
            zVar.ph();
        }
        b(zVar);
        if (zVar.ik()) {
            for (int i5 = 0; i5 < zVar.pM(); i5++) {
                zVar.bR(iPM8 + 4 + 1);
            }
        }
        zVar.bR(2);
        float f2 = 1.0f;
        if (zVar.ik()) {
            if (zVar.ik()) {
                int iBQ2 = zVar.bQ(8);
                if (iBQ2 == 255) {
                    int iBQ3 = zVar.bQ(16);
                    int iBQ4 = zVar.bQ(16);
                    if (iBQ3 != 0 && iBQ4 != 0) {
                        f2 = iBQ3 / iBQ4;
                    }
                } else {
                    float[] fArr = com.applovin.exoplayer2.l.v.acq;
                    if (iBQ2 < fArr.length) {
                        f2 = fArr[iBQ2];
                    } else {
                        com.applovin.exoplayer2.l.q.h("H265Reader", "Unexpected aspect_ratio_idc value: " + iBQ2);
                    }
                }
            }
            if (zVar.ik()) {
                zVar.ph();
            }
            if (zVar.ik()) {
                zVar.bR(4);
                if (zVar.ik()) {
                    zVar.bR(24);
                }
            }
            if (zVar.ik()) {
                zVar.pM();
                zVar.pM();
            }
            zVar.ph();
            if (zVar.ik()) {
                iPM3 *= 2;
            }
        }
        zVar.s(rVar2.EJ, 0, rVar2.EK);
        zVar.bR(24);
        return new v.a().g(str).m("video/hevc").k(com.applovin.exoplayer2.l.e.c(zVar)).J(iPM2).K(iPM3).e(f2).c(Collections.singletonList(bArr)).bT();
    }

    private void a(long j, int i, int i2, long j2) {
        this.Ei.b(j, i, this.vJ);
        if (!this.vJ) {
            this.Ej.cC(i2);
            this.DC.cC(i2);
            this.DD.cC(i2);
            if (this.Ej.jq() && this.DC.jq() && this.DD.jq()) {
                this.wl.j(a(this.Ct, this.Ej, this.DC, this.DD));
                this.vJ = true;
            }
        }
        if (this.Ek.cC(i2)) {
            r rVar = this.Ek;
            this.DH.l(this.Ek.EJ, com.applovin.exoplayer2.l.v.i(rVar.EJ, rVar.EK));
            this.DH.fz(5);
            this.Dz.a(j2, this.DH);
        }
        if (this.El.cC(i2)) {
            r rVar2 = this.El;
            this.DH.l(this.El.EJ, com.applovin.exoplayer2.l.v.i(rVar2.EJ, rVar2.EK));
            this.DH.fz(5);
            this.Dz.a(j2, this.DH);
        }
    }

    private static void a(com.applovin.exoplayer2.l.z zVar) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (zVar.ik()) {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        zVar.pN();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        zVar.pN();
                    }
                } else {
                    zVar.pM();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    private void b(long j, int i, int i2, long j2) {
        this.Ei.a(j, i, i2, j2, this.vJ);
        if (!this.vJ) {
            this.Ej.cB(i2);
            this.DC.cB(i2);
            this.DD.cB(i2);
        }
        this.Ek.cB(i2);
        this.El.cB(i2);
    }

    private static void b(com.applovin.exoplayer2.l.z zVar) {
        int iPM = zVar.pM();
        boolean zIk = false;
        int i = 0;
        for (int i2 = 0; i2 < iPM; i2++) {
            if (i2 != 0) {
                zIk = zVar.ik();
            }
            if (zIk) {
                zVar.ph();
                zVar.pM();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (zVar.ik()) {
                        zVar.ph();
                    }
                }
            } else {
                int iPM2 = zVar.pM();
                int iPM3 = zVar.pM();
                int i4 = iPM2 + iPM3;
                for (int i5 = 0; i5 < iPM2; i5++) {
                    zVar.pM();
                    zVar.ph();
                }
                for (int i6 = 0; i6 < iPM3; i6++) {
                    zVar.pM();
                    zVar.ph();
                }
                i = i4;
            }
        }
    }

    private void f(byte[] bArr, int i, int i2) {
        this.Ei.h(bArr, i, i2);
        if (!this.vJ) {
            this.Ej.g(bArr, i, i2);
            this.DC.g(bArr, i, i2);
            this.DD.g(bArr, i, i2);
        }
        this.Ek.g(bArr, i, i2);
        this.El.g(bArr, i, i2);
    }

    private void jm() {
        com.applovin.exoplayer2.l.a.N(this.wl);
        ai.R(this.Ei);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        jm();
        while (yVar.pj() > 0) {
            int iIl = yVar.il();
            int iPk = yVar.pk();
            byte[] bArrHO = yVar.hO();
            this.Dh += (long) yVar.pj();
            this.wl.c(yVar, yVar.pj());
            while (iIl < iPk) {
                int iA = com.applovin.exoplayer2.l.v.a(bArrHO, iIl, iPk, this.Df);
                if (iA == iPk) {
                    f(bArrHO, iIl, iPk);
                    return;
                }
                int iK = com.applovin.exoplayer2.l.v.k(bArrHO, iA);
                int i = iA - iIl;
                if (i > 0) {
                    f(bArrHO, iIl, iA);
                }
                int i2 = iPk - iA;
                long j = this.Dh - ((long) i2);
                a(j, i2, i < 0 ? -i : 0, this.Dk);
                b(j, i2, iK, this.Dk);
                iIl = iA + 3;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.jy();
        this.Ct = dVar.jA();
        com.applovin.exoplayer2.e.x xVarY = jVar.y(dVar.jz(), 2);
        this.wl = xVarY;
        this.Ei = new a(xVarY);
        this.Dz.a(jVar, dVar);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void e(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.Dk = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jb() {
        this.Dh = 0L;
        this.Dk = C.TIME_UNSET;
        com.applovin.exoplayer2.l.v.b(this.Df);
        this.Ej.Y();
        this.DC.Y();
        this.DD.Y();
        this.Ek.Y();
        this.El.Y();
        a aVar = this.Ei;
        if (aVar != null) {
            aVar.Y();
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
