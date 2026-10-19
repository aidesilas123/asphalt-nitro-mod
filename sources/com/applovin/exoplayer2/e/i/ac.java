package com.applovin.exoplayer2.e.i;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements com.applovin.exoplayer2.e.h {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.b0
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return com.applovin.exoplayer2.e.c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return ac.ih();
        }
    };
    private com.applovin.exoplayer2.e.j BG;
    private final SparseBooleanArray FA;
    private final SparseBooleanArray FB;
    private final ab FC;
    private aa FD;
    private int FE;
    private boolean FG;
    private boolean FH;

    @Nullable
    private ad FI;
    private int FJ;
    private int Fp;
    private final int Fq;
    private final List<ag> Fv;
    private final com.applovin.exoplayer2.l.y Fw;
    private final SparseIntArray Fx;
    private final ad.c Fy;
    private final SparseArray<ad> Fz;
    private final int rm;
    private boolean vB;

    private class a implements x {
        private final com.applovin.exoplayer2.l.x FK = new com.applovin.exoplayer2.l.x(new byte[4]);

        public a() {
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void K(com.applovin.exoplayer2.l.y yVar) {
            if (yVar.po() == 0 && (yVar.po() & 128) != 0) {
                yVar.fz(6);
                int iPj = yVar.pj() / 4;
                for (int i = 0; i < iPj; i++) {
                    yVar.f(this.FK, 4);
                    int iBQ = this.FK.bQ(16);
                    this.FK.bR(3);
                    if (iBQ == 0) {
                        this.FK.bR(13);
                    } else {
                        int iBQ2 = this.FK.bQ(13);
                        if (ac.this.Fz.get(iBQ2) == null) {
                            ac.this.Fz.put(iBQ2, new y(ac.this.new b(iBQ2)));
                            ac.b(ac.this);
                        }
                    }
                }
                if (ac.this.rm != 2) {
                    ac.this.Fz.remove(0);
                }
            }
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        }
    }

    private class b implements x {
        private final com.applovin.exoplayer2.l.x FM = new com.applovin.exoplayer2.l.x(new byte[5]);
        private final SparseArray<ad> FN = new SparseArray<>();
        private final SparseIntArray FO = new SparseIntArray();
        private final int FP;

        public b(int i) {
            this.FP = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private com.applovin.exoplayer2.e.i.ad.b s(com.applovin.exoplayer2.l.y r14, int r15) {
            /*
                Method dump skipped, instruction units count: 209
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.ac.b.s(com.applovin.exoplayer2.l.y, int):com.applovin.exoplayer2.e.i.ad$b");
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void K(com.applovin.exoplayer2.l.y yVar) {
            ag agVar;
            if (yVar.po() != 2) {
                return;
            }
            if (ac.this.rm == 1 || ac.this.rm == 2 || ac.this.FE == 1) {
                agVar = (ag) ac.this.Fv.get(0);
            } else {
                agVar = new ag(((ag) ac.this.Fv.get(0)).pS());
                ac.this.Fv.add(agVar);
            }
            if ((yVar.po() & 128) == 0) {
                return;
            }
            yVar.fz(1);
            int iPp = yVar.pp();
            int i = 3;
            yVar.fz(3);
            yVar.f(this.FM, 2);
            this.FM.bR(3);
            int i2 = 13;
            ac.this.Fp = this.FM.bQ(13);
            yVar.f(this.FM, 2);
            int i3 = 4;
            this.FM.bR(4);
            yVar.fz(this.FM.bQ(12));
            if (ac.this.rm == 2 && ac.this.FI == null) {
                ad.b bVar = new ad.b(21, null, null, ai.ada);
                ac acVar = ac.this;
                acVar.FI = acVar.Fy.a(21, bVar);
                if (ac.this.FI != null) {
                    ac.this.FI.a(agVar, ac.this.BG, new ad.d(iPp, 21, 8192));
                }
            }
            this.FN.clear();
            this.FO.clear();
            int iPj = yVar.pj();
            while (iPj > 0) {
                yVar.f(this.FM, 5);
                int iBQ = this.FM.bQ(8);
                this.FM.bR(i);
                int iBQ2 = this.FM.bQ(i2);
                this.FM.bR(i3);
                int iBQ3 = this.FM.bQ(12);
                ad.b bVarS = s(yVar, iBQ3);
                if (iBQ == 6 || iBQ == 5) {
                    iBQ = bVarS.ir;
                }
                iPj -= iBQ3 + 5;
                int i4 = ac.this.rm == 2 ? iBQ : iBQ2;
                if (!ac.this.FA.get(i4)) {
                    ad adVarA = (ac.this.rm == 2 && iBQ == 21) ? ac.this.FI : ac.this.Fy.a(iBQ, bVarS);
                    if (ac.this.rm != 2 || iBQ2 < this.FO.get(i4, 8192)) {
                        this.FO.put(i4, iBQ2);
                        this.FN.put(i4, adVarA);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.FO.size();
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = this.FO.keyAt(i5);
                int iValueAt = this.FO.valueAt(i5);
                ac.this.FA.put(iKeyAt, true);
                ac.this.FB.put(iValueAt, true);
                ad adVarValueAt = this.FN.valueAt(i5);
                if (adVarValueAt != null) {
                    if (adVarValueAt != ac.this.FI) {
                        adVarValueAt.a(agVar, ac.this.BG, new ad.d(iPp, iKeyAt, 8192));
                    }
                    ac.this.Fz.put(iValueAt, adVarValueAt);
                }
            }
            if (ac.this.rm == 2) {
                if (ac.this.FG) {
                    return;
                }
                ac.this.BG.ig();
                ac.this.FE = 0;
                ac.this.FG = true;
                return;
            }
            ac.this.Fz.remove(this.FP);
            ac acVar2 = ac.this;
            acVar2.FE = acVar2.rm == 1 ? 0 : ac.this.FE - 1;
            if (ac.this.FE == 0) {
                ac.this.BG.ig();
                ac.this.FG = true;
            }
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        }
    }

    public ac() {
        this(0);
    }

    public ac(int i) {
        this(1, i, 112800);
    }

    public ac(int i, int i2, int i3) {
        this(i, new ag(0L), new g(i2), i3);
    }

    public ac(int i, ag agVar, ad.c cVar, int i2) {
        this.Fy = (ad.c) com.applovin.exoplayer2.l.a.checkNotNull(cVar);
        this.Fq = i2;
        this.rm = i;
        if (i == 1 || i == 2) {
            this.Fv = Collections.singletonList(agVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.Fv = arrayList;
            arrayList.add(agVar);
        }
        this.Fw = new com.applovin.exoplayer2.l.y(new byte[9400], 0);
        this.FA = new SparseBooleanArray();
        this.FB = new SparseBooleanArray();
        this.Fz = new SparseArray<>();
        this.Fx = new SparseIntArray();
        this.FC = new ab(i2);
        this.BG = com.applovin.exoplayer2.e.j.uw;
        this.Fp = -1;
        jx();
    }

    private boolean Z(com.applovin.exoplayer2.e.i iVar) throws IOException {
        byte[] bArrHO = this.Fw.hO();
        if (9400 - this.Fw.il() < 188) {
            int iPj = this.Fw.pj();
            if (iPj > 0) {
                System.arraycopy(bArrHO, this.Fw.il(), bArrHO, 0, iPj);
            }
            this.Fw.l(bArrHO, iPj);
        }
        while (this.Fw.pj() < 188) {
            int iPk = this.Fw.pk();
            int i = iVar.read(bArrHO, iPk, 9400 - iPk);
            if (i == -1) {
                return false;
            }
            this.Fw.fA(iPk + i);
        }
        return true;
    }

    private void aH(long j) {
        if (this.vB) {
            return;
        }
        this.vB = true;
        if (this.FC.dd() == C.TIME_UNSET) {
            this.BG.a(new v.b(this.FC.dd()));
            return;
        }
        aa aaVar = new aa(this.FC.jv(), this.FC.dd(), j, this.Fp, this.Fq);
        this.FD = aaVar;
        this.BG.a(aaVar.hS());
    }

    static /* synthetic */ int b(ac acVar) {
        int i = acVar.FE;
        acVar.FE = i + 1;
        return i;
    }

    private boolean cD(int i) {
        return this.rm == 2 || this.FG || !this.FB.get(i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new ac()};
    }

    private int jw() throws com.applovin.exoplayer2.ai {
        int iIl = this.Fw.il();
        int iPk = this.Fw.pk();
        int i = ae.i(this.Fw.hO(), iIl, iPk);
        this.Fw.fx(i);
        int i2 = i + 188;
        if (i2 > iPk) {
            int i3 = this.FJ + (i - iIl);
            this.FJ = i3;
            if (this.rm == 2 && i3 > 376) {
                throw com.applovin.exoplayer2.ai.c("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.FJ = 0;
        }
        return i2;
    }

    private void jx() {
        this.FA.clear();
        this.Fz.clear();
        SparseArray<ad> sparseArrayJn = this.Fy.jn();
        int size = sparseArrayJn.size();
        for (int i = 0; i < size; i++) {
            this.Fz.put(sparseArrayJn.keyAt(i), sparseArrayJn.valueAt(i));
        }
        this.Fz.put(0, new y(new a()));
        this.FI = null;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.BG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        boolean z;
        byte[] bArrHO = this.Fw.hO();
        iVar.c(bArrHO, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                }
                if (bArrHO[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                iVar.bH(i);
                return true;
            }
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        long jMo28if = iVar.mo28if();
        if (this.FG) {
            if (((jMo28if == -1 || this.rm == 2) ? false : true) && !this.FC.jt()) {
                return this.FC.a(iVar, uVar, this.Fp);
            }
            aH(jMo28if);
            if (this.FH) {
                this.FH = false;
                o(0L, 0L);
                if (iVar.ie() != 0) {
                    uVar.uc = 0L;
                    return 1;
                }
            }
            aa aaVar = this.FD;
            if (aaVar != null && aaVar.hT()) {
                return this.FD.a(iVar, uVar);
            }
        }
        if (!Z(iVar)) {
            return -1;
        }
        int iJw = jw();
        int iPk = this.Fw.pk();
        if (iJw > iPk) {
            return 0;
        }
        int iPx = this.Fw.px();
        if ((8388608 & iPx) != 0) {
            this.Fw.fx(iJw);
            return 0;
        }
        int i = ((4194304 & iPx) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & iPx) >> 8;
        boolean z = (iPx & 32) != 0;
        ad adVar = (iPx & 16) != 0 ? this.Fz.get(i2) : null;
        if (adVar == null) {
            this.Fw.fx(iJw);
            return 0;
        }
        if (this.rm != 2) {
            int i3 = iPx & 15;
            int i4 = this.Fx.get(i2, i3 - 1);
            this.Fx.put(i2, i3);
            if (i4 == i3) {
                this.Fw.fx(iJw);
                return 0;
            }
            if (i3 != ((i4 + 1) & 15)) {
                adVar.jb();
            }
        }
        if (z) {
            int iPo = this.Fw.po();
            i |= (this.Fw.po() & 64) != 0 ? 2 : 0;
            this.Fw.fz(iPo - 1);
        }
        boolean z2 = this.FG;
        if (cD(i2)) {
            this.Fw.fA(iJw);
            adVar.p(this.Fw, i);
            this.Fw.fA(iPk);
        }
        if (this.rm != 2 && !z2 && this.FG && jMo28if != -1) {
            this.FH = true;
        }
        this.Fw.fx(iJw);
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        aa aaVar;
        com.applovin.exoplayer2.l.a.checkState(this.rm != 2);
        int size = this.Fv.size();
        for (int i = 0; i < size; i++) {
            ag agVar = this.Fv.get(i);
            boolean z = agVar.pU() == C.TIME_UNSET;
            if (!z) {
                long jPS = agVar.pS();
                z = (jPS == C.TIME_UNSET || jPS == 0 || jPS == j2) ? false : true;
            }
            if (z) {
                agVar.aI(j2);
            }
        }
        if (j2 != 0 && (aaVar = this.FD) != null) {
            aaVar.ag(j2);
        }
        this.Fw.U(0);
        this.Fx.clear();
        for (int i2 = 0; i2 < this.Fz.size(); i2++) {
            this.Fz.valueAt(i2).jb();
        }
        this.FJ = 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
