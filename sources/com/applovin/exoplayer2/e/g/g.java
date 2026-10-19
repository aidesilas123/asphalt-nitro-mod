package com.applovin.exoplayer2.e.g;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g implements com.applovin.exoplayer2.e.h, v {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.g.q
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return g.ih();
        }
    };
    private final List<a.InterfaceC0038a> AA;
    private int AB;
    private a[] AC;
    private long[][] AD;
    private int AE;
    private int AF;
    private long Aa;
    private int Ab;

    @Nullable
    private y Ac;
    private final i Az;
    private long fH;
    private final int jF;
    private final y uO;
    private com.applovin.exoplayer2.e.j vG;
    private final y wm;
    private final y wn;

    @Nullable
    private com.applovin.exoplayer2.g.f.b wu;
    private int xI;
    private int xJ;
    private int xK;
    private final y zU;
    private final ArrayDeque<a.C0032a> zV;
    private int zY;
    private int zZ;

    private static final class a {
        public final k AG;
        public final n AH;
        public final x vH;
        public int zB;

        public a(k kVar, n nVar, x xVar) {
            this.AG = kVar;
            this.AH = nVar;
            this.vH = xVar;
        }
    }

    public g() {
        this(0);
    }

    public g(int i) {
        this.jF = i;
        this.zY = (i & 4) != 0 ? 3 : 0;
        this.Az = new i();
        this.AA = new ArrayList();
        this.zU = new y(16);
        this.zV = new ArrayDeque<>();
        this.wm = new y(com.applovin.exoplayer2.l.v.abK);
        this.wn = new y(4);
        this.uO = new y();
        this.AB = -1;
    }

    private static int D(y yVar) {
        yVar.fx(8);
        int iCo = co(yVar.px());
        if (iCo != 0) {
            return iCo;
        }
        yVar.fz(4);
        while (yVar.pj() > 0) {
            int iCo2 = co(yVar.px());
            if (iCo2 != 0) {
                return iCo2;
            }
        }
        return 0;
    }

    private boolean G(com.applovin.exoplayer2.e.i iVar) throws IOException {
        a.C0032a c0032aPeek;
        if (this.Ab == 0) {
            if (!iVar.a(this.zU.hO(), 0, 8, true)) {
                iV();
                return false;
            }
            this.Ab = 8;
            this.zU.fx(0);
            this.Aa = this.zU.pv();
            this.zZ = this.zU.px();
        }
        long j = this.Aa;
        if (j == 1) {
            iVar.a(this.zU.hO(), 8, 8);
            this.Ab += 8;
            this.Aa = this.zU.pF();
        } else if (j == 0) {
            long jMo28if = iVar.mo28if();
            if (jMo28if == -1 && (c0032aPeek = this.zV.peek()) != null) {
                jMo28if = c0032aPeek.zl;
            }
            if (jMo28if != -1) {
                this.Aa = (jMo28if - iVar.ie()) + ((long) this.Ab);
            }
        }
        if (this.Aa < this.Ab) {
            throw ai.p("Atom size less than header length (unsupported).");
        }
        if (cn(this.zZ)) {
            long jIe = iVar.ie();
            long j2 = this.Aa;
            int i = this.Ab;
            long j3 = (jIe + j2) - ((long) i);
            if (j2 != i && this.zZ == 1835365473) {
                K(iVar);
            }
            this.zV.push(new a.C0032a(this.zZ, j3));
            if (this.Aa == this.Ab) {
                au(j3);
            } else {
                iL();
            }
        } else if (cm(this.zZ)) {
            com.applovin.exoplayer2.l.a.checkState(this.Ab == 8);
            com.applovin.exoplayer2.l.a.checkState(this.Aa <= 2147483647L);
            y yVar = new y((int) this.Aa);
            System.arraycopy(this.zU.hO(), 0, yVar.hO(), 0, 8);
            this.Ac = yVar;
            this.zY = 1;
        } else {
            az(iVar.ie() - ((long) this.Ab));
            this.Ac = null;
            this.zY = 1;
        }
        return true;
    }

    private void K(com.applovin.exoplayer2.e.i iVar) throws IOException {
        this.uO.U(8);
        iVar.c(this.uO.hO(), 0, 8);
        b.p(this.uO);
        iVar.bH(this.uO.il());
        iVar.ic();
    }

    private static int a(n nVar, long j) {
        int iAA = nVar.aA(j);
        return iAA == -1 ? nVar.aB(j) : iAA;
    }

    private static long a(n nVar, long j, long j2) {
        int iA = a(nVar, j);
        return iA == -1 ? j2 : Math.min(nVar.tS[iA], j2);
    }

    private static long[][] a(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            jArr[i] = new long[aVarArr[i].AH.jA];
            jArr2[i] = aVarArr[i].AH.Bq[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < aVarArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < aVarArr.length; i4++) {
                if (!zArr[i4] && jArr2[i4] <= j2) {
                    j2 = jArr2[i4];
                    i3 = i4;
                }
            }
            int i5 = iArr[i3];
            jArr[i3][i5] = j;
            j += (long) aVarArr[i3].AH.tR[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr[i3].length) {
                jArr2[i3] = aVarArr[i3].AH.Bq[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    private void au(long j) throws ai {
        while (!this.zV.isEmpty() && this.zV.peek().zl == j) {
            a.C0032a c0032aPop = this.zV.pop();
            if (c0032aPop.bs == 1836019574) {
                g(c0032aPop);
                this.zV.clear();
                this.zY = 2;
            } else if (!this.zV.isEmpty()) {
                this.zV.peek().a(c0032aPop);
            }
        }
        if (this.zY != 2) {
            iL();
        }
    }

    private int ax(long j) {
        int i = -1;
        int i2 = -1;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        for (int i3 = 0; i3 < ((a[]) com.applovin.exoplayer2.l.ai.R(this.AC)).length; i3++) {
            a aVar = this.AC[i3];
            int i4 = aVar.zB;
            n nVar = aVar.AH;
            if (i4 != nVar.jA) {
                long j5 = nVar.tS[i4];
                long j6 = ((long[][]) com.applovin.exoplayer2.l.ai.R(this.AD))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    z2 = z3;
                    j4 = j7;
                    i2 = i3;
                    j3 = j6;
                }
                if (j6 < j2) {
                    z = z3;
                    i = i3;
                    j2 = j6;
                }
            }
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + 10485760) ? i2 : i;
    }

    private void ay(long j) {
        for (a aVar : this.AC) {
            n nVar = aVar.AH;
            int iAA = nVar.aA(j);
            if (iAA == -1) {
                iAA = nVar.aB(j);
            }
            aVar.zB = iAA;
        }
    }

    private void az(long j) {
        if (this.zZ == 1836086884) {
            int i = this.Ab;
            this.wu = new com.applovin.exoplayer2.g.f.b(0L, j, C.TIME_UNSET, j + ((long) i), this.Aa - ((long) i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k b(k kVar) {
        return kVar;
    }

    private static boolean cm(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    private static boolean cn(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    private static int co(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private boolean d(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        boolean z;
        long j = this.Aa - ((long) this.Ab);
        long jIe = iVar.ie() + j;
        y yVar = this.Ac;
        if (yVar != null) {
            iVar.a(yVar.hO(), this.Ab, (int) j);
            if (this.zZ == 1718909296) {
                this.AF = D(yVar);
            } else if (!this.zV.isEmpty()) {
                this.zV.peek().a(new a.b(this.zZ, yVar));
            }
        } else {
            if (j >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                uVar.uc = iVar.ie() + j;
                z = true;
                au(jIe);
                return (z || this.zY == 2) ? false : true;
            }
            iVar.bH((int) j);
        }
        z = false;
        au(jIe);
        if (z) {
        }
    }

    private int e(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        int iA = this.Az.a(iVar, uVar, this.AA);
        if (iA == 1 && uVar.uc == 0) {
            iL();
        }
        return iA;
    }

    private int f(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        long jIe = iVar.ie();
        if (this.AB == -1) {
            int iAx = ax(jIe);
            this.AB = iAx;
            if (iAx == -1) {
                return -1;
            }
        }
        a aVar = ((a[]) com.applovin.exoplayer2.l.ai.R(this.AC))[this.AB];
        x xVar = aVar.vH;
        int i = aVar.zB;
        n nVar = aVar.AH;
        long j = nVar.tS[i];
        int i2 = nVar.tR[i];
        long j2 = (j - jIe) + ((long) this.xI);
        if (j2 < 0 || j2 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            uVar.uc = j;
            return 1;
        }
        if (aVar.AG.AR == 1) {
            j2 += 8;
            i2 -= 8;
        }
        iVar.bH((int) j2);
        k kVar = aVar.AG;
        if (kVar.wo == 0) {
            if ("audio/ac4".equals(kVar.dU.dz)) {
                if (this.xJ == 0) {
                    com.applovin.exoplayer2.b.c.a(i2, this.uO);
                    xVar.c(this.uO, 7);
                    this.xJ += 7;
                }
                i2 += 7;
            }
            while (true) {
                int i3 = this.xJ;
                if (i3 >= i2) {
                    break;
                }
                int iA = xVar.a((com.applovin.exoplayer2.k.g) iVar, i2 - i3, false);
                this.xI += iA;
                this.xJ += iA;
                this.xK -= iA;
            }
        } else {
            byte[] bArrHO = this.wn.hO();
            bArrHO[0] = 0;
            bArrHO[1] = 0;
            bArrHO[2] = 0;
            int i4 = aVar.AG.wo;
            int i5 = 4 - i4;
            while (this.xJ < i2) {
                int i6 = this.xK;
                if (i6 == 0) {
                    iVar.a(bArrHO, i5, i4);
                    this.xI += i4;
                    this.wn.fx(0);
                    int iPx = this.wn.px();
                    if (iPx < 0) {
                        throw ai.c("Invalid NAL length", null);
                    }
                    this.xK = iPx;
                    this.wm.fx(0);
                    xVar.c(this.wm, 4);
                    this.xJ += 4;
                    i2 += i5;
                } else {
                    int iA2 = xVar.a((com.applovin.exoplayer2.k.g) iVar, i6, false);
                    this.xI += iA2;
                    this.xJ += iA2;
                    this.xK -= iA2;
                }
            }
        }
        n nVar2 = aVar.AH;
        xVar.a(nVar2.Bq[i], nVar2.zJ[i], i2, 0, null);
        aVar.zB++;
        this.AB = -1;
        this.xI = 0;
        this.xJ = 0;
        this.xK = 0;
        return 0;
    }

    private void g(a.C0032a c0032a) throws ai {
        com.applovin.exoplayer2.g.a aVar;
        com.applovin.exoplayer2.g.a aVar2;
        ArrayList arrayList;
        List<n> list;
        int i;
        int i2;
        ArrayList arrayList2 = new ArrayList();
        boolean z = this.AF == 1;
        com.applovin.exoplayer2.e.r rVar = new com.applovin.exoplayer2.e.r();
        a.b bVarCi = c0032a.ci(1969517665);
        if (bVarCi != null) {
            Pair<com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a> pairB = b.b(bVarCi);
            com.applovin.exoplayer2.g.a aVar3 = (com.applovin.exoplayer2.g.a) pairB.first;
            com.applovin.exoplayer2.g.a aVar4 = (com.applovin.exoplayer2.g.a) pairB.second;
            if (aVar3 != null) {
                rVar.e(aVar3);
            }
            aVar = aVar4;
            aVar2 = aVar3;
        } else {
            aVar = null;
            aVar2 = null;
        }
        a.C0032a c0032aCj = c0032a.cj(1835365473);
        com.applovin.exoplayer2.g.a aVarB = c0032aCj != null ? b.b(c0032aCj) : null;
        List<n> listA = b.a(c0032a, rVar, C.TIME_UNSET, (com.applovin.exoplayer2.d.e) null, (this.jF & 1) != 0, z, new Function() { // from class: com.applovin.exoplayer2.e.g.r
            @Override // com.applovin.exoplayer2.common.base.Function
            public final Object apply(Object obj) {
                return g.b((k) obj);
            }
        });
        com.applovin.exoplayer2.e.j jVar = (com.applovin.exoplayer2.e.j) com.applovin.exoplayer2.l.a.checkNotNull(this.vG);
        int size = listA.size();
        int i3 = 0;
        int size2 = -1;
        long j = C.TIME_UNSET;
        while (i3 < size) {
            n nVar = listA.get(i3);
            if (nVar.jA == 0) {
                list = listA;
                i = size;
                arrayList = arrayList2;
            } else {
                k kVar = nVar.AG;
                int i4 = size2;
                arrayList = arrayList2;
                long j2 = kVar.fH;
                if (j2 == C.TIME_UNSET) {
                    j2 = nVar.fH;
                }
                long jMax = Math.max(j, j2);
                list = listA;
                i = size;
                a aVar5 = new a(kVar, nVar, jVar.y(i3, kVar.bs));
                int i5 = nVar.zH + 30;
                v.a aVarBR = kVar.dU.bR();
                aVarBR.I(i5);
                if (kVar.bs == 2 && j2 > 0 && (i2 = nVar.jA) > 1) {
                    aVarBR.d(i2 / (j2 / 1000000.0f));
                }
                f.a(kVar.bs, rVar, aVarBR);
                int i6 = kVar.bs;
                com.applovin.exoplayer2.g.a[] aVarArr = new com.applovin.exoplayer2.g.a[2];
                aVarArr[0] = aVar;
                aVarArr[1] = this.AA.isEmpty() ? null : new com.applovin.exoplayer2.g.a(this.AA);
                f.a(i6, aVar2, aVarB, aVarBR, aVarArr);
                aVar5.vH.j(aVarBR.bT());
                size2 = (kVar.bs == 2 && i4 == -1) ? arrayList.size() : i4;
                arrayList.add(aVar5);
                j = jMax;
            }
            i3++;
            arrayList2 = arrayList;
            listA = list;
            size = i;
        }
        this.AE = size2;
        this.fH = j;
        a[] aVarArr2 = (a[]) arrayList2.toArray(new a[0]);
        this.AC = aVarArr2;
        this.AD = a(aVarArr2);
        jVar.ig();
        jVar.a(this);
    }

    private void iL() {
        this.zY = 0;
        this.Ab = 0;
    }

    private void iV() {
        if (this.AF != 2 || (this.jF & 2) == 0) {
            return;
        }
        com.applovin.exoplayer2.e.j jVar = (com.applovin.exoplayer2.e.j) com.applovin.exoplayer2.l.a.checkNotNull(this.vG);
        jVar.y(0, 4).j(new v.a().b(this.wu == null ? null : new com.applovin.exoplayer2.g.a(this.wu)).bT());
        jVar.ig();
        jVar.a(new v.b(C.TIME_UNSET));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new g()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.vG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return j.e(iVar, (this.jF & 2) != 0);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        long j2;
        long jA;
        long j3;
        long j4;
        int iAB;
        if (((a[]) com.applovin.exoplayer2.l.a.checkNotNull(this.AC)).length == 0) {
            return new v.a(w.uT);
        }
        int i = this.AE;
        if (i != -1) {
            n nVar = this.AC[i].AH;
            int iA = a(nVar, j);
            if (iA == -1) {
                return new v.a(w.uT);
            }
            long j5 = nVar.Bq[iA];
            j2 = nVar.tS[iA];
            if (j5 >= j || iA >= nVar.jA - 1 || (iAB = nVar.aB(j)) == -1 || iAB == iA) {
                j4 = -1;
                j3 = -9223372036854775807L;
            } else {
                j3 = nVar.Bq[iAB];
                j4 = nVar.tS[iAB];
            }
            jA = j4;
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            jA = -1;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            a[] aVarArr = this.AC;
            if (i2 >= aVarArr.length) {
                break;
            }
            if (i2 != this.AE) {
                n nVar2 = aVarArr[i2].AH;
                long jA2 = a(nVar2, j, j2);
                if (j3 != C.TIME_UNSET) {
                    jA = a(nVar2, j3, jA);
                }
                j2 = jA2;
            }
            i2++;
        }
        w wVar = new w(j, j2);
        return j3 == C.TIME_UNSET ? new v.a(wVar) : new v.a(wVar, new w(j3, jA));
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        while (true) {
            int i = this.zY;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return f(iVar, uVar);
                    }
                    if (i == 3) {
                        return e(iVar, uVar);
                    }
                    throw new IllegalStateException();
                }
                if (d(iVar, uVar)) {
                    return 1;
                }
            } else if (!G(iVar)) {
                return -1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        this.zV.clear();
        this.Ab = 0;
        this.AB = -1;
        this.xI = 0;
        this.xJ = 0;
        this.xK = 0;
        if (j != 0) {
            if (this.AC != null) {
                ay(j2);
            }
        } else if (this.zY != 3) {
            iL();
        } else {
            this.Az.Y();
            this.AA.clear();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
