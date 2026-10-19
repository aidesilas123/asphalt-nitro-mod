package com.applovin.exoplayer2.e.f;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.f.e;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.s;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.e.g;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d implements com.applovin.exoplayer2.e.h {
    public static final l vq = new l() { // from class: com.applovin.exoplayer2.e.f.h
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return d.ih();
        }
    };
    private static final g.a yT = new g.a() { // from class: com.applovin.exoplayer2.e.f.i
        @Override // com.applovin.exoplayer2.g.e.g.a
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return d.a(i, i2, i3, i4, i5);
        }
    };

    @Nullable
    private com.applovin.exoplayer2.g.a dx;
    private final int jF;
    private long tL;
    private final y uO;
    private long vC;
    private j vG;
    private final long yU;
    private final r.a yV;
    private final com.applovin.exoplayer2.e.r yW;
    private final s yX;
    private final x yY;
    private x yZ;
    private x za;
    private int zb;
    private long zc;
    private long zd;
    private int ze;
    private e zf;
    private boolean zg;
    private boolean zh;

    public d() {
        this(0);
    }

    public d(int i) {
        this(i, C.TIME_UNSET);
    }

    public d(int i, long j) {
        this.jF = (i & 2) != 0 ? i | 1 : i;
        this.yU = j;
        this.uO = new y(10);
        this.yV = new r.a();
        this.yW = new com.applovin.exoplayer2.e.r();
        this.zc = C.TIME_UNSET;
        this.yX = new s();
        com.applovin.exoplayer2.e.g gVar = new com.applovin.exoplayer2.e.g();
        this.yY = gVar;
        this.za = gVar;
    }

    private int C(com.applovin.exoplayer2.e.i iVar) throws IOException {
        if (this.zb == 0) {
            try {
                c(iVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.zf == null) {
            e eVarE = E(iVar);
            this.zf = eVarE;
            this.vG.a(eVarE);
            this.za.j(new v.a().m(this.yV.eg).I(4096).N(this.yV.mI).O(this.yV.dM).Q(this.yW.dO).R(this.yW.dP).b((this.jF & 8) != 0 ? null : this.dx).bT());
            this.vC = iVar.ie();
        } else if (this.vC != 0) {
            long jIe = iVar.ie();
            long j = this.vC;
            if (jIe < j) {
                iVar.bH((int) (j - jIe));
            }
        }
        return g(iVar);
    }

    private boolean D(com.applovin.exoplayer2.e.i iVar) throws IOException {
        e eVar = this.zf;
        if (eVar != null) {
            long jIF = eVar.iF();
            if (jIF != -1 && iVar.id() > jIF - 4) {
                return true;
            }
        }
        try {
            return !iVar.b(this.uO.hO(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private e E(com.applovin.exoplayer2.e.i iVar) throws IOException {
        long jF;
        long j;
        long jDd;
        long jIF;
        e eVarF = F(iVar);
        c cVarA = a(this.dx, iVar.ie());
        if (this.zg) {
            return new e.a();
        }
        if ((this.jF & 4) != 0) {
            if (cVarA != null) {
                jDd = cVarA.dd();
                jIF = cVarA.iF();
            } else if (eVarF != null) {
                jDd = eVarF.dd();
                jIF = eVarF.iF();
            } else {
                jF = f(this.dx);
                j = -1;
                eVarF = new b(jF, iVar.ie(), j);
            }
            j = jIF;
            jF = jDd;
            eVarF = new b(jF, iVar.ie(), j);
        } else if (cVarA != null) {
            eVarF = cVarA;
        } else if (eVarF == null) {
            eVarF = null;
        }
        if (eVarF == null || !(eVarF.hU() || (this.jF & 1) == 0)) {
            return d(iVar, (this.jF & 2) != 0);
        }
        return eVarF;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.applovin.exoplayer2.e.f.e F(com.applovin.exoplayer2.e.i r11) throws java.io.IOException {
        /*
            r10 = this;
            com.applovin.exoplayer2.l.y r5 = new com.applovin.exoplayer2.l.y
            com.applovin.exoplayer2.b.r$a r0 = r10.yV
            int r0 = r0.jz
            r5.<init>(r0)
            byte[] r0 = r5.hO()
            com.applovin.exoplayer2.b.r$a r1 = r10.yV
            int r1 = r1.jz
            r6 = 0
            r11.c(r0, r6, r1)
            com.applovin.exoplayer2.b.r$a r0 = r10.yV
            int r1 = r0.mH
            r2 = 1
            r1 = r1 & r2
            r3 = 21
            if (r1 == 0) goto L28
            int r0 = r0.mI
            if (r0 == r2) goto L2c
            r3 = 36
            r7 = 36
            goto L33
        L28:
            int r0 = r0.mI
            if (r0 == r2) goto L2f
        L2c:
            r7 = 21
            goto L33
        L2f:
            r3 = 13
            r7 = 13
        L33:
            int r8 = f(r5, r7)
            r0 = 1483304551(0x58696e67, float:1.02664153E15)
            r9 = 1231971951(0x496e666f, float:976486.94)
            if (r8 == r0) goto L62
            if (r8 != r9) goto L42
            goto L62
        L42:
            r0 = 1447187017(0x56425249, float:5.3414667E13)
            if (r8 != r0) goto L5d
            long r0 = r11.mo28if()
            long r2 = r11.ie()
            com.applovin.exoplayer2.b.r$a r4 = r10.yV
            com.applovin.exoplayer2.e.f.f r0 = com.applovin.exoplayer2.e.f.f.a(r0, r2, r4, r5)
            com.applovin.exoplayer2.b.r$a r1 = r10.yV
            int r1 = r1.jz
            r11.bH(r1)
            goto Lb2
        L5d:
            r0 = 0
            r11.ic()
            goto Lb2
        L62:
            long r0 = r11.mo28if()
            long r2 = r11.ie()
            com.applovin.exoplayer2.b.r$a r4 = r10.yV
            com.applovin.exoplayer2.e.f.g r0 = com.applovin.exoplayer2.e.f.g.b(r0, r2, r4, r5)
            if (r0 == 0) goto L9c
            com.applovin.exoplayer2.e.r r1 = r10.yW
            boolean r1 = r1.ij()
            if (r1 != 0) goto L9c
            r11.ic()
            int r7 = r7 + 141
            r11.bI(r7)
            com.applovin.exoplayer2.l.y r1 = r10.uO
            byte[] r1 = r1.hO()
            r2 = 3
            r11.c(r1, r6, r2)
            com.applovin.exoplayer2.l.y r1 = r10.uO
            r1.fx(r6)
            com.applovin.exoplayer2.e.r r1 = r10.yW
            com.applovin.exoplayer2.l.y r2 = r10.uO
            int r2 = r2.pt()
            r1.bP(r2)
        L9c:
            com.applovin.exoplayer2.b.r$a r1 = r10.yV
            int r1 = r1.jz
            r11.bH(r1)
            if (r0 == 0) goto Lb2
            boolean r1 = r0.hU()
            if (r1 != 0) goto Lb2
            if (r8 != r9) goto Lb2
            com.applovin.exoplayer2.e.f.e r11 = r10.d(r11, r6)
            return r11
        Lb2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.f.d.F(com.applovin.exoplayer2.e.i):com.applovin.exoplayer2.e.f.e");
    }

    @Nullable
    private static c a(@Nullable com.applovin.exoplayer2.g.a aVar, long j) {
        if (aVar == null) {
            return null;
        }
        int iKD = aVar.kD();
        for (int i = 0; i < iKD; i++) {
            a.InterfaceC0038a interfaceC0038aDe = aVar.de(i);
            if (interfaceC0038aDe instanceof com.applovin.exoplayer2.g.e.j) {
                return c.a(j, (com.applovin.exoplayer2.g.e.j) interfaceC0038aDe, f(aVar));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    private long at(long j) {
        return this.zc + ((j * 1000000) / ((long) this.yV.dM));
    }

    private boolean c(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        int i;
        int iId;
        int iAG;
        int i2 = z ? 32768 : 131072;
        iVar.ic();
        if (iVar.ie() == 0) {
            com.applovin.exoplayer2.g.a aVarA = this.yX.a(iVar, (this.jF & 8) == 0 ? null : yT);
            this.dx = aVarA;
            if (aVarA != null) {
                this.yW.e(aVarA);
            }
            iId = (int) iVar.id();
            if (!z) {
                iVar.bH(iId);
            }
            i = 0;
        } else {
            i = 0;
            iId = 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (!D(iVar)) {
                this.uO.fx(0);
                int iPx = this.uO.px();
                if ((i == 0 || f(iPx, i)) && (iAG = r.aG(iPx)) != -1) {
                    i3++;
                    if (i3 != 1) {
                        if (i3 == 4) {
                            break;
                        }
                    } else {
                        this.yV.aK(iPx);
                        i = iPx;
                    }
                    iVar.bI(iAG - 4);
                } else {
                    int i5 = i4 + 1;
                    if (i4 == i2) {
                        if (z) {
                            return false;
                        }
                        throw ai.c("Searched too many bytes.", null);
                    }
                    if (z) {
                        iVar.ic();
                        iVar.bI(iId + i5);
                    } else {
                        iVar.bH(1);
                    }
                    i4 = i5;
                    i = 0;
                    i3 = 0;
                }
            } else if (i3 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            iVar.bH(iId + i4);
        } else {
            iVar.ic();
        }
        this.zb = i;
        return true;
    }

    private e d(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        iVar.c(this.uO.hO(), 0, 4);
        this.uO.fx(0);
        this.yV.aK(this.uO.px());
        return new a(iVar.mo28if(), iVar.ie(), this.yV, z);
    }

    private static int f(y yVar, int i) {
        if (yVar.pk() >= i + 4) {
            yVar.fx(i);
            int iPx = yVar.px();
            if (iPx == 1483304551 || iPx == 1231971951) {
                return iPx;
            }
        }
        if (yVar.pk() < 40) {
            return 0;
        }
        yVar.fx(36);
        return yVar.px() == 1447187017 ? 1447187017 : 0;
    }

    private static long f(@Nullable com.applovin.exoplayer2.g.a aVar) {
        if (aVar == null) {
            return C.TIME_UNSET;
        }
        int iKD = aVar.kD();
        for (int i = 0; i < iKD; i++) {
            a.InterfaceC0038a interfaceC0038aDe = aVar.de(i);
            if (interfaceC0038aDe instanceof com.applovin.exoplayer2.g.e.l) {
                com.applovin.exoplayer2.g.e.l lVar = (com.applovin.exoplayer2.g.e.l) interfaceC0038aDe;
                if (lVar.f1do.equals("TLEN")) {
                    return com.applovin.exoplayer2.h.g(Long.parseLong(lVar.Jn));
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static boolean f(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private int g(com.applovin.exoplayer2.e.i iVar) throws IOException {
        if (this.ze == 0) {
            iVar.ic();
            if (D(iVar)) {
                return -1;
            }
            this.uO.fx(0);
            int iPx = this.uO.px();
            if (!f(iPx, this.zb) || r.aG(iPx) == -1) {
                iVar.bH(1);
                this.zb = 0;
                return 0;
            }
            this.yV.aK(iPx);
            if (this.zc == C.TIME_UNSET) {
                this.zc = this.zf.aq(iVar.ie());
                if (this.yU != C.TIME_UNSET) {
                    this.zc += this.yU - this.zf.aq(0L);
                }
            }
            r.a aVar = this.yV;
            this.ze = aVar.jz;
            e eVar = this.zf;
            if (eVar instanceof b) {
                b bVar = (b) eVar;
                bVar.s(at(this.zd + ((long) aVar.mJ)), iVar.ie() + ((long) this.yV.jz));
                if (this.zh && bVar.ar(this.tL)) {
                    this.zh = false;
                    this.za = this.yZ;
                }
            }
        }
        int iA = this.za.a((com.applovin.exoplayer2.k.g) iVar, this.ze, true);
        if (iA == -1) {
            return -1;
        }
        int i = this.ze - iA;
        this.ze = i;
        if (i > 0) {
            return 0;
        }
        this.za.a(at(this.zd), 1, this.yV.jz, 0, null);
        this.zd += (long) this.yV.mJ;
        this.ze = 0;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new d()};
    }

    private void io() {
        com.applovin.exoplayer2.l.a.N(this.yZ);
        com.applovin.exoplayer2.l.ai.R(this.vG);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.vG = jVar;
        x xVarY = jVar.y(0, 1);
        this.yZ = xVarY;
        this.za = xVarY;
        this.vG.ig();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return c(iVar, true);
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        io();
        int iC = C(iVar);
        if (iC == -1 && (this.zf instanceof b)) {
            long jAt = at(this.zd);
            if (this.zf.dd() != jAt) {
                ((b) this.zf).as(jAt);
                this.vG.a(this.zf);
            }
        }
        return iC;
    }

    public void iG() {
        this.zg = true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        this.zb = 0;
        this.zc = C.TIME_UNSET;
        this.zd = 0L;
        this.ze = 0;
        this.tL = j2;
        e eVar = this.zf;
        if (!(eVar instanceof b) || ((b) eVar).ar(j2)) {
            return;
        }
        this.zh = true;
        this.za = this.yY;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
