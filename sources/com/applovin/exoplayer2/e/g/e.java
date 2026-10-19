package com.applovin.exoplayer2.e.g;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.applovin.exoplayer2.e.h {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.g.p
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return e.ih();
        }
    };
    private static final byte[] zK = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final v zL = new v.a().m(MimeTypes.APPLICATION_EMSG).bT();
    private long Aa;
    private int Ab;

    @Nullable
    private y Ac;
    private long Ad;
    private int Ae;
    private long Af;
    private long Ag;

    @Nullable
    private b Ah;
    private int Ai;
    private boolean Aj;
    private x[] Ak;
    private x[] Al;
    private boolean Am;
    private long fH;
    private final int jF;
    private final y uO;
    private com.applovin.exoplayer2.e.j vG;
    private final y wm;
    private int xJ;
    private int xK;

    @Nullable
    private final k zM;
    private final List<v> zN;
    private final SparseArray<b> zO;
    private final y zP;
    private final y zQ;
    private final byte[] zR;

    @Nullable
    private final ag zS;
    private final com.applovin.exoplayer2.g.b.c zT;
    private final y zU;
    private final ArrayDeque<a.C0032a> zV;
    private final ArrayDeque<a> zW;

    @Nullable
    private final x zX;
    private int zY;
    private int zZ;

    private static final class a {
        public final long An;
        public final int oW;

        public a(long j, int i) {
            this.An = j;
            this.oW = i;
        }
    }

    private static final class b {
        public n Ap;
        public c Aq;
        public int Ar;
        public int As;
        public int At;
        public int Au;
        private boolean Ax;
        public final x wl;
        public final m Ao = new m();
        public final y uO = new y();
        private final y Av = new y(1);
        private final y Aw = new y();

        public b(x xVar, n nVar, c cVar) {
            this.wl = xVar;
            this.Ap = nVar;
            this.Aq = cVar;
            a(nVar, cVar);
        }

        public void a(n nVar, c cVar) {
            this.Ap = nVar;
            this.Aq = cVar;
            this.wl.j(nVar.AG.dU);
            iN();
        }

        public void aw(long j) {
            int i = this.Ar;
            while (true) {
                m mVar = this.Ao;
                if (i >= mVar.jA || mVar.cr(i) >= j) {
                    return;
                }
                if (this.Ao.Bi[i]) {
                    this.Au = i;
                }
                i++;
            }
        }

        public void c(com.applovin.exoplayer2.d.e eVar) {
            l lVarCp = this.Ap.AG.cp(((c) ai.R(this.Ao.AY)).zF);
            this.wl.j(this.Ap.AG.dU.bR().a(eVar.B(lVarCp != null ? lVarCp.tc : null)).bT());
        }

        public void iN() {
            this.Ao.Y();
            this.Ar = 0;
            this.At = 0;
            this.As = 0;
            this.Au = 0;
            this.Ax = false;
        }

        public long iO() {
            return !this.Ax ? this.Ap.Bq[this.Ar] : this.Ao.cr(this.Ar);
        }

        public long iP() {
            return !this.Ax ? this.Ap.tS[this.Ar] : this.Ao.Bd[this.At];
        }

        public int iQ() {
            return !this.Ax ? this.Ap.tR[this.Ar] : this.Ao.Bf[this.Ar];
        }

        public int iR() {
            int i = !this.Ax ? this.Ap.zJ[this.Ar] : this.Ao.Bi[this.Ar] ? 1 : 0;
            return iU() != null ? i | 1073741824 : i;
        }

        public boolean iS() {
            this.Ar++;
            if (!this.Ax) {
                return false;
            }
            int i = this.As + 1;
            this.As = i;
            int[] iArr = this.Ao.Be;
            int i2 = this.At;
            if (i != iArr[i2]) {
                return true;
            }
            this.At = i2 + 1;
            this.As = 0;
            return false;
        }

        public void iT() {
            l lVarIU = iU();
            if (lVarIU == null) {
                return;
            }
            y yVar = this.Ao.Bm;
            int i = lVarIU.AW;
            if (i != 0) {
                yVar.fz(i);
            }
            if (this.Ao.cs(this.Ar)) {
                yVar.fz(yVar.pp() * 6);
            }
        }

        @Nullable
        public l iU() {
            if (!this.Ax) {
                return null;
            }
            int i = ((c) ai.R(this.Ao.AY)).zF;
            l lVarCp = this.Ao.Bl;
            if (lVarCp == null) {
                lVarCp = this.Ap.AG.cp(i);
            }
            if (lVarCp == null || !lVarCp.AV) {
                return null;
            }
            return lVarCp;
        }

        public int z(int i, int i2) {
            y yVar;
            l lVarIU = iU();
            if (lVarIU == null) {
                return 0;
            }
            int length = lVarIU.AW;
            if (length != 0) {
                yVar = this.Ao.Bm;
            } else {
                byte[] bArr = (byte[]) ai.R(lVarIU.AX);
                this.Aw.l(bArr, bArr.length);
                y yVar2 = this.Aw;
                length = bArr.length;
                yVar = yVar2;
            }
            boolean zCs = this.Ao.cs(this.Ar);
            boolean z = zCs || i2 != 0;
            this.Av.hO()[0] = (byte) ((z ? 128 : 0) | length);
            this.Av.fx(0);
            this.wl.a(this.Av, 1, 1);
            this.wl.a(yVar, length, 1);
            if (!z) {
                return length + 1;
            }
            if (!zCs) {
                this.uO.U(8);
                byte[] bArrHO = this.uO.hO();
                bArrHO[0] = 0;
                bArrHO[1] = 1;
                bArrHO[2] = (byte) ((i2 >> 8) & 255);
                bArrHO[3] = (byte) (i2 & 255);
                bArrHO[4] = (byte) ((i >> 24) & 255);
                bArrHO[5] = (byte) ((i >> 16) & 255);
                bArrHO[6] = (byte) ((i >> 8) & 255);
                bArrHO[7] = (byte) (i & 255);
                this.wl.a(this.uO, 8, 1);
                return length + 1 + 8;
            }
            y yVar3 = this.Ao.Bm;
            int iPp = yVar3.pp();
            yVar3.fz(-2);
            int i3 = (iPp * 6) + 2;
            if (i2 != 0) {
                this.uO.U(i3);
                byte[] bArrHO2 = this.uO.hO();
                yVar3.r(bArrHO2, 0, i3);
                int i4 = (((bArrHO2[2] & 255) << 8) | (bArrHO2[3] & 255)) + i2;
                bArrHO2[2] = (byte) ((i4 >> 8) & 255);
                bArrHO2[3] = (byte) (i4 & 255);
                yVar3 = this.uO;
            }
            this.wl.a(yVar3, i3, 1);
            return length + 1 + i3;
        }
    }

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, @Nullable ag agVar) {
        this(i, agVar, null, Collections.emptyList());
    }

    public e(int i, @Nullable ag agVar, @Nullable k kVar, List<v> list) {
        this(i, agVar, kVar, list, null);
    }

    public e(int i, @Nullable ag agVar, @Nullable k kVar, List<v> list, @Nullable x xVar) {
        this.jF = i;
        this.zS = agVar;
        this.zM = kVar;
        this.zN = Collections.unmodifiableList(list);
        this.zX = xVar;
        this.zT = new com.applovin.exoplayer2.g.b.c();
        this.zU = new y(16);
        this.wm = new y(com.applovin.exoplayer2.l.v.abK);
        this.zP = new y(5);
        this.zQ = new y();
        byte[] bArr = new byte[16];
        this.zR = bArr;
        this.uO = new y(bArr);
        this.zV = new ArrayDeque<>();
        this.zW = new ArrayDeque<>();
        this.zO = new SparseArray<>();
        this.fH = C.TIME_UNSET;
        this.Af = C.TIME_UNSET;
        this.Ag = C.TIME_UNSET;
        this.vG = com.applovin.exoplayer2.e.j.uw;
        this.Ak = new x[0];
        this.Al = new x[0];
    }

    private boolean G(com.applovin.exoplayer2.e.i iVar) throws IOException {
        if (this.Ab == 0) {
            if (!iVar.a(this.zU.hO(), 0, 8, true)) {
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
            if (jMo28if == -1 && !this.zV.isEmpty()) {
                jMo28if = this.zV.peek().zl;
            }
            if (jMo28if != -1) {
                this.Aa = (jMo28if - iVar.ie()) + ((long) this.Ab);
            }
        }
        if (this.Aa < this.Ab) {
            throw com.applovin.exoplayer2.ai.p("Atom size less than header length (unsupported).");
        }
        long jIe = iVar.ie() - ((long) this.Ab);
        int i = this.zZ;
        if ((i == 1836019558 || i == 1835295092) && !this.Am) {
            this.vG.a(new v.b(this.fH, jIe));
            this.Am = true;
        }
        if (this.zZ == 1836019558) {
            int size = this.zO.size();
            for (int i2 = 0; i2 < size; i2++) {
                m mVar = this.zO.valueAt(i2).Ao;
                mVar.AZ = jIe;
                mVar.Bb = jIe;
                mVar.Ba = jIe;
            }
        }
        int i3 = this.zZ;
        if (i3 == 1835295092) {
            this.Ah = null;
            this.Ad = jIe + this.Aa;
            this.zY = 2;
            return true;
        }
        if (cn(i3)) {
            long jIe2 = (iVar.ie() + this.Aa) - 8;
            this.zV.push(new a.C0032a(this.zZ, jIe2));
            if (this.Aa == this.Ab) {
                au(jIe2);
            } else {
                iL();
            }
        } else if (cm(this.zZ)) {
            if (this.Ab != 8) {
                throw com.applovin.exoplayer2.ai.p("Leaf atom defines extended atom size (unsupported).");
            }
            long j2 = this.Aa;
            if (j2 > 2147483647L) {
                throw com.applovin.exoplayer2.ai.p("Leaf atom with length > 2147483647 (unsupported).");
            }
            y yVar = new y((int) j2);
            System.arraycopy(this.zU.hO(), 0, yVar.hO(), 0, 8);
            this.Ac = yVar;
            this.zY = 1;
        } else {
            if (this.Aa > 2147483647L) {
                throw com.applovin.exoplayer2.ai.p("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.Ac = null;
            this.zY = 1;
        }
        return true;
    }

    private void H(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = ((int) this.Aa) - this.Ab;
        y yVar = this.Ac;
        if (yVar != null) {
            iVar.a(yVar.hO(), 8, i);
            a(new a.b(this.zZ, yVar), iVar.ie());
        } else {
            iVar.bH(i);
        }
        au(iVar.ie());
    }

    private void I(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int size = this.zO.size();
        long j = Long.MAX_VALUE;
        b bVarValueAt = null;
        for (int i = 0; i < size; i++) {
            m mVar = this.zO.valueAt(i).Ao;
            if (mVar.Bn) {
                long j2 = mVar.Bb;
                if (j2 < j) {
                    bVarValueAt = this.zO.valueAt(i);
                    j = j2;
                }
            }
        }
        if (bVarValueAt == null) {
            this.zY = 3;
            return;
        }
        int iIe = (int) (j - iVar.ie());
        if (iIe < 0) {
            throw com.applovin.exoplayer2.ai.c("Offset to encryption data was negative.", null);
        }
        iVar.bH(iIe);
        bVarValueAt.Ao.M(iVar);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean J(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int iA;
        b bVarA = this.Ah;
        Throwable th = null;
        if (bVarA == null) {
            bVarA = a(this.zO);
            if (bVarA == null) {
                int iIe = (int) (this.Ad - iVar.ie());
                if (iIe < 0) {
                    throw com.applovin.exoplayer2.ai.c("Offset to end of mdat was negative.", null);
                }
                iVar.bH(iIe);
                iL();
                return false;
            }
            int iIP = (int) (bVarA.iP() - iVar.ie());
            if (iIP < 0) {
                com.applovin.exoplayer2.l.q.h("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iIP = 0;
            }
            iVar.bH(iIP);
            this.Ah = bVarA;
        }
        int i = 4;
        int i2 = 1;
        if (this.zY == 3) {
            int iIQ = bVarA.iQ();
            this.Ai = iIQ;
            if (bVarA.Ar < bVarA.Au) {
                iVar.bH(iIQ);
                bVarA.iT();
                if (!bVarA.iS()) {
                    this.Ah = null;
                }
                this.zY = 3;
                return true;
            }
            if (bVarA.Ap.AG.AR == 1) {
                this.Ai = iIQ - 8;
                iVar.bH(8);
            }
            if ("audio/ac4".equals(bVarA.Ap.AG.dU.dz)) {
                this.xJ = bVarA.z(this.Ai, 7);
                com.applovin.exoplayer2.b.c.a(this.Ai, this.uO);
                bVarA.wl.c(this.uO, 7);
                this.xJ += 7;
            } else {
                this.xJ = bVarA.z(this.Ai, 0);
            }
            this.Ai += this.xJ;
            this.zY = 4;
            this.xK = 0;
        }
        k kVar = bVarA.Ap.AG;
        x xVar = bVarA.wl;
        long jIO = bVarA.iO();
        ag agVar = this.zS;
        if (agVar != null) {
            jIO = agVar.bs(jIO);
        }
        long j = jIO;
        if (kVar.wo == 0) {
            while (true) {
                int i3 = this.xJ;
                int i4 = this.Ai;
                if (i3 >= i4) {
                    break;
                }
                this.xJ += xVar.a((com.applovin.exoplayer2.k.g) iVar, i4 - i3, false);
            }
        } else {
            byte[] bArrHO = this.zP.hO();
            bArrHO[0] = 0;
            bArrHO[1] = 0;
            bArrHO[2] = 0;
            int i5 = kVar.wo;
            int i6 = i5 + 1;
            int i7 = 4 - i5;
            while (this.xJ < this.Ai) {
                int i8 = this.xK;
                if (i8 == 0) {
                    iVar.a(bArrHO, i7, i6);
                    this.zP.fx(0);
                    int iPx = this.zP.px();
                    if (iPx < i2) {
                        throw com.applovin.exoplayer2.ai.c("Invalid NAL length", th);
                    }
                    this.xK = iPx - 1;
                    this.wm.fx(0);
                    xVar.c(this.wm, i);
                    xVar.c(this.zP, i2);
                    this.Aj = this.Al.length > 0 && com.applovin.exoplayer2.l.v.a(kVar.dU.dz, bArrHO[i]);
                    this.xJ += 5;
                    this.Ai += i7;
                } else {
                    if (this.Aj) {
                        this.zQ.U(i8);
                        iVar.a(this.zQ.hO(), 0, this.xK);
                        xVar.c(this.zQ, this.xK);
                        iA = this.xK;
                        int i9 = com.applovin.exoplayer2.l.v.i(this.zQ.hO(), this.zQ.pk());
                        this.zQ.fx("video/hevc".equals(kVar.dU.dz) ? 1 : 0);
                        this.zQ.fA(i9);
                        com.applovin.exoplayer2.e.b.a(j, this.zQ, this.Al);
                    } else {
                        iA = xVar.a((com.applovin.exoplayer2.k.g) iVar, i8, false);
                    }
                    this.xJ += iA;
                    this.xK -= iA;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int iIR = bVarA.iR();
        l lVarIU = bVarA.iU();
        xVar.a(j, iIR, this.Ai, 0, lVarIU != null ? lVarIU.xZ : null);
        av(j);
        if (!bVarA.iS()) {
            this.Ah = null;
        }
        this.zY = 3;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(com.applovin.exoplayer2.e.g.e.b r36, int r37, int r38, com.applovin.exoplayer2.l.y r39, int r40) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instruction units count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.e.a(com.applovin.exoplayer2.e.g.e$b, int, int, com.applovin.exoplayer2.l.y, int):int");
    }

    private c a(SparseArray<c> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (c) com.applovin.exoplayer2.l.a.checkNotNull(sparseArray.get(i));
    }

    @Nullable
    private static b a(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            b bVarValueAt = sparseArray.valueAt(i);
            if ((bVarValueAt.Ax || bVarValueAt.Ar != bVarValueAt.Ap.jA) && (!bVarValueAt.Ax || bVarValueAt.At != bVarValueAt.Ao.Bc)) {
                long jIP = bVarValueAt.iP();
                if (jIP < j) {
                    bVar = bVarValueAt;
                    j = jIP;
                }
            }
        }
        return bVar;
    }

    @Nullable
    private static b a(y yVar, SparseArray<b> sparseArray, boolean z) {
        yVar.fx(8);
        int iCg = com.applovin.exoplayer2.e.g.a.cg(yVar.px());
        b bVarValueAt = z ? sparseArray.valueAt(0) : sparseArray.get(yVar.px());
        if (bVarValueAt == null) {
            return null;
        }
        if ((iCg & 1) != 0) {
            long jPF = yVar.pF();
            m mVar = bVarValueAt.Ao;
            mVar.Ba = jPF;
            mVar.Bb = jPF;
        }
        c cVar = bVarValueAt.Aq;
        bVarValueAt.Ao.AY = new c((iCg & 2) != 0 ? yVar.px() - 1 : cVar.zF, (iCg & 8) != 0 ? yVar.px() : cVar.zG, (iCg & 16) != 0 ? yVar.px() : cVar.oW, (iCg & 32) != 0 ? yVar.px() : cVar.jF);
        return bVarValueAt;
    }

    private static void a(a.C0032a c0032a, SparseArray<b> sparseArray, boolean z, int i, byte[] bArr) throws com.applovin.exoplayer2.ai {
        int size = c0032a.zn.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.C0032a c0032a2 = c0032a.zn.get(i2);
            if (c0032a2.bs == 1953653094) {
                b(c0032a2, sparseArray, z, i, bArr);
            }
        }
    }

    private static void a(a.C0032a c0032a, b bVar, int i) throws com.applovin.exoplayer2.ai {
        List<a.b> list = c0032a.zm;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar2 = list.get(i4);
            if (bVar2.bs == 1953658222) {
                y yVar = bVar2.zo;
                yVar.fx(12);
                int iPD = yVar.pD();
                if (iPD > 0) {
                    i3 += iPD;
                    i2++;
                }
            }
        }
        bVar.At = 0;
        bVar.As = 0;
        bVar.Ar = 0;
        bVar.Ao.A(i2, i3);
        int i5 = 0;
        int iA = 0;
        for (int i6 = 0; i6 < size; i6++) {
            a.b bVar3 = list.get(i6);
            if (bVar3.bs == 1953658222) {
                iA = a(bVar, i5, i, bVar3.zo, iA);
                i5++;
            }
        }
    }

    private static void a(a.C0032a c0032a, @Nullable String str, m mVar) throws com.applovin.exoplayer2.ai {
        byte[] bArr = null;
        y yVar = null;
        y yVar2 = null;
        for (int i = 0; i < c0032a.zm.size(); i++) {
            a.b bVar = c0032a.zm.get(i);
            y yVar3 = bVar.zo;
            int i2 = bVar.bs;
            if (i2 == 1935828848) {
                yVar3.fx(12);
                if (yVar3.px() == 1936025959) {
                    yVar = yVar3;
                }
            } else if (i2 == 1936158820) {
                yVar3.fx(12);
                if (yVar3.px() == 1936025959) {
                    yVar2 = yVar3;
                }
            }
        }
        if (yVar == null || yVar2 == null) {
            return;
        }
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        yVar.fz(4);
        if (iCf == 1) {
            yVar.fz(4);
        }
        if (yVar.px() != 1) {
            throw com.applovin.exoplayer2.ai.p("Entry count in sbgp != 1 (unsupported).");
        }
        yVar2.fx(8);
        int iCf2 = com.applovin.exoplayer2.e.g.a.cf(yVar2.px());
        yVar2.fz(4);
        if (iCf2 == 1) {
            if (yVar2.pv() == 0) {
                throw com.applovin.exoplayer2.ai.p("Variable length description in sgpd found (unsupported)");
            }
        } else if (iCf2 >= 2) {
            yVar2.fz(4);
        }
        if (yVar2.pv() != 1) {
            throw com.applovin.exoplayer2.ai.p("Entry count in sgpd != 1 (unsupported).");
        }
        yVar2.fz(1);
        int iPo = yVar2.po();
        int i3 = (iPo & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        int i4 = iPo & 15;
        boolean z = yVar2.po() == 1;
        if (z) {
            int iPo2 = yVar2.po();
            byte[] bArr2 = new byte[16];
            yVar2.r(bArr2, 0, 16);
            if (iPo2 == 0) {
                int iPo3 = yVar2.po();
                bArr = new byte[iPo3];
                yVar2.r(bArr, 0, iPo3);
            }
            mVar.Bj = true;
            mVar.Bl = new l(z, str, iPo2, bArr2, i3, i4, bArr);
        }
    }

    private void a(a.b bVar, long j) throws com.applovin.exoplayer2.ai {
        if (!this.zV.isEmpty()) {
            this.zV.peek().a(bVar);
            return;
        }
        int i = bVar.bs;
        if (i != 1936286840) {
            if (i == 1701671783) {
                v(bVar.zo);
            }
        } else {
            Pair<Long, com.applovin.exoplayer2.e.c> pairC = c(bVar.zo, j);
            this.Ag = ((Long) pairC.first).longValue();
            this.vG.a((com.applovin.exoplayer2.e.v) pairC.second);
            this.Am = true;
        }
    }

    private static void a(l lVar, y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        int i;
        int i2 = lVar.AW;
        yVar.fx(8);
        if ((com.applovin.exoplayer2.e.g.a.cg(yVar.px()) & 1) == 1) {
            yVar.fz(8);
        }
        int iPo = yVar.po();
        int iPD = yVar.pD();
        if (iPD > mVar.jA) {
            throw com.applovin.exoplayer2.ai.c("Saiz sample count " + iPD + " is greater than fragment sample count" + mVar.jA, null);
        }
        if (iPo == 0) {
            boolean[] zArr = mVar.Bk;
            i = 0;
            for (int i3 = 0; i3 < iPD; i3++) {
                int iPo2 = yVar.po();
                i += iPo2;
                zArr[i3] = iPo2 > i2;
            }
        } else {
            i = (iPo * iPD) + 0;
            Arrays.fill(mVar.Bk, 0, iPD, iPo > i2);
        }
        Arrays.fill(mVar.Bk, iPD, mVar.jA, false);
        if (i > 0) {
            mVar.cq(i);
        }
    }

    private static void a(y yVar, int i, m mVar) throws com.applovin.exoplayer2.ai {
        yVar.fx(i + 8);
        int iCg = com.applovin.exoplayer2.e.g.a.cg(yVar.px());
        if ((iCg & 1) != 0) {
            throw com.applovin.exoplayer2.ai.p("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iCg & 2) != 0;
        int iPD = yVar.pD();
        if (iPD == 0) {
            Arrays.fill(mVar.Bk, 0, mVar.jA, false);
            return;
        }
        if (iPD == mVar.jA) {
            Arrays.fill(mVar.Bk, 0, iPD, z);
            mVar.cq(yVar.pj());
            mVar.E(yVar);
        } else {
            throw com.applovin.exoplayer2.ai.c("Senc sample count " + iPD + " is different from fragment sample count" + mVar.jA, null);
        }
    }

    private static void a(y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        yVar.fx(8);
        int iPx = yVar.px();
        if ((com.applovin.exoplayer2.e.g.a.cg(iPx) & 1) == 1) {
            yVar.fz(8);
        }
        int iPD = yVar.pD();
        if (iPD == 1) {
            mVar.Bb += com.applovin.exoplayer2.e.g.a.cf(iPx) == 0 ? yVar.pv() : yVar.pF();
        } else {
            throw com.applovin.exoplayer2.ai.c("Unexpected saio entry count: " + iPD, null);
        }
    }

    private static void a(y yVar, m mVar, byte[] bArr) throws com.applovin.exoplayer2.ai {
        yVar.fx(8);
        yVar.r(bArr, 0, 16);
        if (Arrays.equals(bArr, zK)) {
            a(yVar, 16, mVar);
        }
    }

    private void au(long j) throws com.applovin.exoplayer2.ai {
        while (!this.zV.isEmpty() && this.zV.peek().zl == j) {
            d(this.zV.pop());
        }
        iL();
    }

    private void av(long j) {
        while (!this.zW.isEmpty()) {
            a aVarRemoveFirst = this.zW.removeFirst();
            this.Ae -= aVarRemoveFirst.oW;
            long jBs = aVarRemoveFirst.An + j;
            ag agVar = this.zS;
            if (agVar != null) {
                jBs = agVar.bs(jBs);
            }
            for (x xVar : this.Ak) {
                xVar.a(jBs, 1, aVarRemoveFirst.oW, this.Ae, null);
            }
        }
    }

    private static void b(a.C0032a c0032a, SparseArray<b> sparseArray, boolean z, int i, byte[] bArr) throws com.applovin.exoplayer2.ai {
        b bVarA = a(((a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a.ci(1952868452))).zo, sparseArray, z);
        if (bVarA == null) {
            return;
        }
        m mVar = bVarA.Ao;
        long j = mVar.Bo;
        boolean z2 = mVar.Bp;
        bVarA.iN();
        bVarA.Ax = true;
        a.b bVarCi = c0032a.ci(1952867444);
        if (bVarCi == null || (i & 2) != 0) {
            mVar.Bo = j;
            mVar.Bp = z2;
        } else {
            mVar.Bo = y(bVarCi.zo);
            mVar.Bp = true;
        }
        a(c0032a, bVarA, i);
        l lVarCp = bVarA.Ap.AG.cp(((c) com.applovin.exoplayer2.l.a.checkNotNull(mVar.AY)).zF);
        a.b bVarCi2 = c0032a.ci(1935763834);
        if (bVarCi2 != null) {
            a((l) com.applovin.exoplayer2.l.a.checkNotNull(lVarCp), bVarCi2.zo, mVar);
        }
        a.b bVarCi3 = c0032a.ci(1935763823);
        if (bVarCi3 != null) {
            a(bVarCi3.zo, mVar);
        }
        a.b bVarCi4 = c0032a.ci(1936027235);
        if (bVarCi4 != null) {
            b(bVarCi4.zo, mVar);
        }
        a(c0032a, lVarCp != null ? lVarCp.tc : null, mVar);
        int size = c0032a.zm.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = c0032a.zm.get(i2);
            if (bVar.bs == 1970628964) {
                a(bVar.zo, mVar, bArr);
            }
        }
    }

    private static void b(y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        a(yVar, 0, mVar);
    }

    private static Pair<Long, com.applovin.exoplayer2.e.c> c(y yVar, long j) throws com.applovin.exoplayer2.ai {
        long jPF;
        long jPF2;
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        yVar.fz(4);
        long jPv = yVar.pv();
        if (iCf == 0) {
            jPF = yVar.pv();
            jPF2 = yVar.pv();
        } else {
            jPF = yVar.pF();
            jPF2 = yVar.pF();
        }
        long j2 = jPF;
        long j3 = j + jPF2;
        long jE = ai.e(j2, 1000000L, jPv);
        yVar.fz(2);
        int iPp = yVar.pp();
        int[] iArr = new int[iPp];
        long[] jArr = new long[iPp];
        long[] jArr2 = new long[iPp];
        long[] jArr3 = new long[iPp];
        long j4 = j2;
        long j5 = jE;
        int i = 0;
        while (i < iPp) {
            int iPx = yVar.px();
            if ((iPx & Integer.MIN_VALUE) != 0) {
                throw com.applovin.exoplayer2.ai.c("Unhandled indirect reference", null);
            }
            long jPv2 = yVar.pv();
            iArr[i] = iPx & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j5;
            long j6 = j4 + jPv2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i2 = iPp;
            int[] iArr2 = iArr;
            long jE2 = ai.e(j6, 1000000L, jPv);
            jArr4[i] = jE2 - jArr5[i];
            yVar.fz(4);
            j3 += (long) iArr2[i];
            i++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iPp = i2;
            j4 = j6;
            j5 = jE2;
        }
        return Pair.create(Long.valueOf(jE), new com.applovin.exoplayer2.e.c(iArr, jArr, jArr2, jArr3));
    }

    private static int cl(int i) throws com.applovin.exoplayer2.ai {
        if (i >= 0) {
            return i;
        }
        throw com.applovin.exoplayer2.ai.c("Unexpected negative value: " + i, null);
    }

    private static boolean cm(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    private static boolean cn(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    private void d(a.C0032a c0032a) throws com.applovin.exoplayer2.ai {
        int i = c0032a.bs;
        if (i == 1836019574) {
            e(c0032a);
        } else if (i == 1836019558) {
            f(c0032a);
        } else {
            if (this.zV.isEmpty()) {
                return;
            }
            this.zV.peek().a(c0032a);
        }
    }

    private void e(a.C0032a c0032a) throws com.applovin.exoplayer2.ai {
        int i = 0;
        com.applovin.exoplayer2.l.a.checkState(this.zM == null, "Unexpected moov box.");
        com.applovin.exoplayer2.d.e eVarI = i(c0032a.zm);
        a.C0032a c0032a2 = (a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(c0032a.cj(1836475768));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = c0032a2.zm.size();
        long jX = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = c0032a2.zm.get(i2);
            int i3 = bVar.bs;
            if (i3 == 1953654136) {
                Pair<Integer, c> pairW = w(bVar.zo);
                sparseArray.put(((Integer) pairW.first).intValue(), (c) pairW.second);
            } else if (i3 == 1835362404) {
                jX = x(bVar.zo);
            }
        }
        List<n> listA = com.applovin.exoplayer2.e.g.b.a(c0032a, new com.applovin.exoplayer2.e.r(), jX, eVarI, (this.jF & 16) != 0, false, (Function<k, k>) new Function() { // from class: com.applovin.exoplayer2.e.g.o
            @Override // com.applovin.exoplayer2.common.base.Function
            public final Object apply(Object obj) {
                return this.a.a((k) obj);
            }
        });
        int size2 = listA.size();
        if (this.zO.size() != 0) {
            com.applovin.exoplayer2.l.a.checkState(this.zO.size() == size2);
            while (i < size2) {
                n nVar = listA.get(i);
                k kVar = nVar.AG;
                this.zO.get(kVar.zD).a(nVar, a(sparseArray, kVar.zD));
                i++;
            }
            return;
        }
        while (i < size2) {
            n nVar2 = listA.get(i);
            k kVar2 = nVar2.AG;
            this.zO.put(kVar2.zD, new b(this.vG.y(i, kVar2.bs), nVar2, a(sparseArray, kVar2.zD)));
            this.fH = Math.max(this.fH, kVar2.fH);
            i++;
        }
        this.vG.ig();
    }

    private void f(a.C0032a c0032a) throws com.applovin.exoplayer2.ai {
        a(c0032a, this.zO, this.zM != null, this.jF, this.zR);
        com.applovin.exoplayer2.d.e eVarI = i(c0032a.zm);
        if (eVarI != null) {
            int size = this.zO.size();
            for (int i = 0; i < size; i++) {
                this.zO.valueAt(i).c(eVarI);
            }
        }
        if (this.Af != C.TIME_UNSET) {
            int size2 = this.zO.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.zO.valueAt(i2).aw(this.Af);
            }
            this.Af = C.TIME_UNSET;
        }
    }

    @Nullable
    private static com.applovin.exoplayer2.d.e i(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            a.b bVar = list.get(i);
            if (bVar.bs == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrHO = bVar.zo.hO();
                UUID uuidX = h.x(bArrHO);
                if (uuidX == null) {
                    com.applovin.exoplayer2.l.q.h("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new e.a(uuidX, MimeTypes.VIDEO_MP4, bArrHO));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new com.applovin.exoplayer2.d.e(arrayList);
    }

    private void iL() {
        this.zY = 0;
        this.Ab = 0;
    }

    private void iM() {
        int i;
        x[] xVarArr = new x[2];
        this.Ak = xVarArr;
        x xVar = this.zX;
        int i2 = 0;
        if (xVar != null) {
            xVarArr[0] = xVar;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.jF & 4) != 0) {
            xVarArr[i] = this.vG.y(100, 5);
            i++;
            i3 = 101;
        }
        x[] xVarArr2 = (x[]) ai.e(this.Ak, i);
        this.Ak = xVarArr2;
        for (x xVar2 : xVarArr2) {
            xVar2.j(zL);
        }
        this.Al = new x[this.zN.size()];
        while (i2 < this.Al.length) {
            x xVarY = this.vG.y(i3, 3);
            xVarY.j(this.zN.get(i2));
            this.Al[i2] = xVarY;
            i2++;
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new e()};
    }

    private void v(y yVar) {
        long jE;
        String str;
        long jE2;
        String str2;
        long jPv;
        long jBs;
        if (this.Ak.length == 0) {
            return;
        }
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        if (iCf == 0) {
            String str3 = (String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI());
            String str4 = (String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI());
            long jPv2 = yVar.pv();
            jE = ai.e(yVar.pv(), 1000000L, jPv2);
            long j = this.Ag;
            long j2 = j != C.TIME_UNSET ? j + jE : -9223372036854775807L;
            str = str3;
            jE2 = ai.e(yVar.pv(), 1000L, jPv2);
            str2 = str4;
            jPv = yVar.pv();
            jBs = j2;
        } else {
            if (iCf != 1) {
                com.applovin.exoplayer2.l.q.h("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iCf);
                return;
            }
            long jPv3 = yVar.pv();
            jBs = ai.e(yVar.pF(), 1000000L, jPv3);
            long jE3 = ai.e(yVar.pv(), 1000L, jPv3);
            long jPv4 = yVar.pv();
            str = (String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI());
            jE2 = jE3;
            jPv = jPv4;
            str2 = (String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI());
            jE = -9223372036854775807L;
        }
        byte[] bArr = new byte[yVar.pj()];
        yVar.r(bArr, 0, yVar.pj());
        y yVar2 = new y(this.zT.a(new com.applovin.exoplayer2.g.b.a(str, str2, jE2, jPv, bArr)));
        int iPj = yVar2.pj();
        for (x xVar : this.Ak) {
            yVar2.fx(0);
            xVar.c(yVar2, iPj);
        }
        if (jBs == C.TIME_UNSET) {
            this.zW.addLast(new a(jE, iPj));
            this.Ae += iPj;
            return;
        }
        ag agVar = this.zS;
        if (agVar != null) {
            jBs = agVar.bs(jBs);
        }
        for (x xVar2 : this.Ak) {
            xVar2.a(jBs, 1, iPj, 0, null);
        }
    }

    private static Pair<Integer, c> w(y yVar) {
        yVar.fx(12);
        return Pair.create(Integer.valueOf(yVar.px()), new c(yVar.px() - 1, yVar.px(), yVar.px(), yVar.px()));
    }

    private static long x(y yVar) {
        yVar.fx(8);
        return com.applovin.exoplayer2.e.g.a.cf(yVar.px()) == 0 ? yVar.pv() : yVar.pF();
    }

    private static long y(y yVar) {
        yVar.fx(8);
        return com.applovin.exoplayer2.e.g.a.cf(yVar.px()) == 1 ? yVar.pF() : yVar.pv();
    }

    @Nullable
    protected k a(@Nullable k kVar) {
        return kVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.vG = jVar;
        iL();
        iM();
        k kVar = this.zM;
        if (kVar != null) {
            this.zO.put(0, new b(jVar.y(0, kVar.bs), new n(this.zM, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.vG.ig();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return j.L(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        while (true) {
            int i = this.zY;
            if (i != 0) {
                if (i == 1) {
                    H(iVar);
                } else if (i == 2) {
                    I(iVar);
                } else if (J(iVar)) {
                    return 0;
                }
            } else if (!G(iVar)) {
                return -1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        int size = this.zO.size();
        for (int i = 0; i < size; i++) {
            this.zO.valueAt(i).iN();
        }
        this.zW.clear();
        this.Ae = 0;
        this.Af = j2;
        this.zV.clear();
        iL();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
