package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m implements j {
    private String Ct;
    private final boolean DA;
    private final boolean DB;
    private a DF;
    private boolean DG;
    private long Dh;
    private final z Dz;
    private boolean vJ;
    private com.applovin.exoplayer2.e.x wl;
    private final boolean[] Df = new boolean[3];
    private final r DC = new r(7, 128);
    private final r DD = new r(8, 128);
    private final r DE = new r(6, 128);
    private long Dk = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y DH = new com.applovin.exoplayer2.l.y();

    private static final class a {
        private final boolean DA;
        private final boolean DB;
        private final SparseArray<v.b> DI = new SparseArray<>();
        private final SparseArray<v.a> DJ = new SparseArray<>();
        private final com.applovin.exoplayer2.l.z DK;
        private byte[] DL;
        private int DM;
        private int DN;
        private long DO;
        private long DP;
        private C0035a DQ;
        private C0035a DR;
        private long Da;
        private long Dl;
        private boolean Dm;
        private boolean Dp;
        private boolean Dv;
        private final com.applovin.exoplayer2.e.x wl;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.e.i.m$a$a, reason: collision with other inner class name */
        private static final class C0035a {
            private boolean DS;
            private boolean DT;

            @Nullable
            private v.b DU;
            private int DV;
            private int DW;
            private int DX;
            private int DY;
            private boolean DZ;
            private boolean Ea;
            private boolean Eb;
            private boolean Ec;
            private int Ed;
            private int Ee;
            private int Ef;
            private int Eg;
            private int Eh;

            private C0035a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean a(C0035a c0035a) {
                int i;
                int i2;
                int i3;
                boolean z;
                if (!this.DS) {
                    return false;
                }
                if (!c0035a.DS) {
                    return true;
                }
                v.b bVar = (v.b) com.applovin.exoplayer2.l.a.N(this.DU);
                v.b bVar2 = (v.b) com.applovin.exoplayer2.l.a.N(c0035a.DU);
                return (this.DX == c0035a.DX && this.DY == c0035a.DY && this.DZ == c0035a.DZ && (!this.Ea || !c0035a.Ea || this.Eb == c0035a.Eb) && (((i = this.DV) == (i2 = c0035a.DV) || (i != 0 && i2 != 0)) && (((i3 = bVar.acC) != 0 || bVar2.acC != 0 || (this.Ee == c0035a.Ee && this.Ef == c0035a.Ef)) && ((i3 != 1 || bVar2.acC != 1 || (this.Eg == c0035a.Eg && this.Eh == c0035a.Eh)) && (z = this.Ec) == c0035a.Ec && (!z || this.Ed == c0035a.Ed))))) ? false : true;
            }

            public void a(v.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.DU = bVar;
                this.DV = i;
                this.DW = i2;
                this.DX = i3;
                this.DY = i4;
                this.DZ = z;
                this.Ea = z2;
                this.Eb = z3;
                this.Ec = z4;
                this.Ed = i5;
                this.Ee = i6;
                this.Ef = i7;
                this.Eg = i8;
                this.Eh = i9;
                this.DS = true;
                this.DT = true;
            }

            public void clear() {
                this.DT = false;
                this.DS = false;
            }

            public void cx(int i) {
                this.DW = i;
                this.DT = true;
            }

            public boolean jp() {
                int i;
                return this.DT && ((i = this.DW) == 7 || i == 2);
            }
        }

        public a(com.applovin.exoplayer2.e.x xVar, boolean z, boolean z2) {
            this.wl = xVar;
            this.DA = z;
            this.DB = z2;
            this.DQ = new C0035a();
            this.DR = new C0035a();
            byte[] bArr = new byte[128];
            this.DL = bArr;
            this.DK = new com.applovin.exoplayer2.l.z(bArr, 0, 0);
            Y();
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
            this.wl.a(j, z ? 1 : 0, (int) (this.DO - this.Dl), i, null);
        }

        public void Y() {
            this.Dp = false;
            this.Dv = false;
            this.DR.clear();
        }

        public void a(long j, int i, long j2) {
            this.DN = i;
            this.DP = j2;
            this.DO = j;
            if (!this.DA || i != 1) {
                if (!this.DB) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            C0035a c0035a = this.DQ;
            this.DQ = this.DR;
            this.DR = c0035a;
            c0035a.clear();
            this.DM = 0;
            this.Dp = true;
        }

        public void a(v.a aVar) {
            this.DJ.append(aVar.DY, aVar);
        }

        public void a(v.b bVar) {
            this.DI.append(bVar.act, bVar);
        }

        public boolean a(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.DN == 9 || (this.DB && this.DR.a(this.DQ))) {
                if (z && this.Dv) {
                    cw(i + ((int) (j - this.DO)));
                }
                this.Dl = this.DO;
                this.Da = this.DP;
                this.Dm = false;
                this.Dv = true;
            }
            if (this.DA) {
                z2 = this.DR.jp();
            }
            boolean z4 = this.Dm;
            int i2 = this.DN;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.Dm = z5;
            return z5;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x014e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void g(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instruction units count: 408
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.m.a.g(byte[], int, int):void");
        }

        public boolean jo() {
            return this.DB;
        }
    }

    public m(z zVar, boolean z, boolean z2) {
        this.Dz = zVar;
        this.DA = z;
        this.DB = z2;
    }

    private void a(long j, int i, int i2, long j2) {
        if (!this.vJ || this.DF.jo()) {
            this.DC.cC(i2);
            this.DD.cC(i2);
            if (this.vJ) {
                if (this.DC.jq()) {
                    r rVar = this.DC;
                    this.DF.a(com.applovin.exoplayer2.l.v.n(rVar.EJ, 3, rVar.EK));
                    this.DC.Y();
                } else if (this.DD.jq()) {
                    r rVar2 = this.DD;
                    this.DF.a(com.applovin.exoplayer2.l.v.o(rVar2.EJ, 3, rVar2.EK));
                    this.DD.Y();
                }
            } else if (this.DC.jq() && this.DD.jq()) {
                ArrayList arrayList = new ArrayList();
                r rVar3 = this.DC;
                arrayList.add(Arrays.copyOf(rVar3.EJ, rVar3.EK));
                r rVar4 = this.DD;
                arrayList.add(Arrays.copyOf(rVar4.EJ, rVar4.EK));
                r rVar5 = this.DC;
                v.b bVarN = com.applovin.exoplayer2.l.v.n(rVar5.EJ, 3, rVar5.EK);
                r rVar6 = this.DD;
                v.a aVarO = com.applovin.exoplayer2.l.v.o(rVar6.EJ, 3, rVar6.EK);
                this.wl.j(new v.a().g(this.Ct).m("video/avc").k(com.applovin.exoplayer2.l.e.i(bVarN.acv, bVarN.acw, bVarN.acx)).J(bVarN.dE).K(bVarN.height).e(bVarN.acy).c(arrayList).bT());
                this.vJ = true;
                this.DF.a(bVarN);
                this.DF.a(aVarO);
                this.DC.Y();
                this.DD.Y();
            }
        }
        if (this.DE.cC(i2)) {
            r rVar7 = this.DE;
            this.DH.l(this.DE.EJ, com.applovin.exoplayer2.l.v.i(rVar7.EJ, rVar7.EK));
            this.DH.fx(4);
            this.Dz.a(j2, this.DH);
        }
        if (this.DF.a(j, i, this.vJ, this.DG)) {
            this.DG = false;
        }
    }

    private void a(long j, int i, long j2) {
        if (!this.vJ || this.DF.jo()) {
            this.DC.cB(i);
            this.DD.cB(i);
        }
        this.DE.cB(i);
        this.DF.a(j, i, j2);
    }

    private void f(byte[] bArr, int i, int i2) {
        if (!this.vJ || this.DF.jo()) {
            this.DC.g(bArr, i, i2);
            this.DD.g(bArr, i, i2);
        }
        this.DE.g(bArr, i, i2);
        this.DF.g(bArr, i, i2);
    }

    private void jm() {
        com.applovin.exoplayer2.l.a.N(this.wl);
        ai.R(this.DF);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void K(com.applovin.exoplayer2.l.y yVar) {
        jm();
        int iIl = yVar.il();
        int iPk = yVar.pk();
        byte[] bArrHO = yVar.hO();
        this.Dh += (long) yVar.pj();
        this.wl.c(yVar, yVar.pj());
        while (true) {
            int iA = com.applovin.exoplayer2.l.v.a(bArrHO, iIl, iPk, this.Df);
            if (iA == iPk) {
                f(bArrHO, iIl, iPk);
                return;
            }
            int iJ = com.applovin.exoplayer2.l.v.j(bArrHO, iA);
            int i = iA - iIl;
            if (i > 0) {
                f(bArrHO, iIl, iA);
            }
            int i2 = iPk - iA;
            long j = this.Dh - ((long) i2);
            a(j, i2, i < 0 ? -i : 0, this.Dk);
            a(j, iJ, this.Dk);
            iIl = iA + 3;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.jy();
        this.Ct = dVar.jA();
        com.applovin.exoplayer2.e.x xVarY = jVar.y(dVar.jz(), 2);
        this.wl = xVarY;
        this.DF = new a(xVarY, this.DA, this.DB);
        this.Dz.a(jVar, dVar);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void e(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.Dk = j;
        }
        this.DG |= (i & 2) != 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jb() {
        this.Dh = 0L;
        this.DG = false;
        this.Dk = C.TIME_UNSET;
        com.applovin.exoplayer2.l.v.b(this.Df);
        this.DC.Y();
        this.DD.Y();
        this.DE.Y();
        a aVar = this.DF;
        if (aVar != null) {
            aVar.Y();
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void jc() {
    }
}
