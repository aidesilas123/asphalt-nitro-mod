package com.applovin.exoplayer2.e.i;

import android.net.Uri;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e implements com.applovin.exoplayer2.e.h {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.d0
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return com.applovin.exoplayer2.e.c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return e.ih();
        }
    };
    private final f CA;
    private final com.applovin.exoplayer2.l.y CB;
    private final com.applovin.exoplayer2.l.x CC;
    private long CD;
    private long CE;
    private int CF;
    private boolean CG;
    private boolean Cq;
    private final int jF;
    private final com.applovin.exoplayer2.l.y uO;
    private boolean vB;
    private com.applovin.exoplayer2.e.j vG;

    public e() {
        this(0);
    }

    public e(int i) {
        this.jF = (i & 2) != 0 ? i | 1 : i;
        this.CA = new f(true);
        this.CB = new com.applovin.exoplayer2.l.y(2048);
        this.CF = -1;
        this.CE = -1L;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(10);
        this.uO = yVar;
        this.CC = new com.applovin.exoplayer2.l.x(yVar.hO());
    }

    private int W(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = 0;
        while (true) {
            iVar.c(this.uO.hO(), 0, 10);
            this.uO.fx(0);
            if (this.uO.pt() != 4801587) {
                break;
            }
            this.uO.fz(3);
            int iPC = this.uO.pC();
            i += iPC + 10;
            iVar.bI(iPC);
        }
        iVar.ic();
        iVar.bI(i);
        if (this.CE == -1) {
            this.CE = i;
        }
        return i;
    }

    private void X(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int iBQ;
        if (this.CG) {
            return;
        }
        this.CF = -1;
        iVar.ic();
        long j = 0;
        if (iVar.ie() == 0) {
            W(iVar);
        }
        int i = 0;
        int i2 = 0;
        do {
            try {
                if (!iVar.b(this.uO.hO(), 0, 2, true)) {
                    break;
                }
                this.uO.fx(0);
                if (!f.cu(this.uO.pp())) {
                    break;
                }
                if (!iVar.b(this.uO.hO(), 0, 4, true)) {
                    break;
                }
                this.CC.fx(14);
                iBQ = this.CC.bQ(13);
                if (iBQ <= 6) {
                    this.CG = true;
                    throw ai.c("Malformed ADTS stream", null);
                }
                j += (long) iBQ;
                i2++;
                if (i2 == 1000) {
                    break;
                }
            } catch (EOFException unused) {
            }
        } while (iVar.j(iBQ - 6, true));
        i = i2;
        iVar.ic();
        if (i > 0) {
            this.CF = (int) (j / ((long) i));
        } else {
            this.CF = -1;
        }
        this.CG = true;
    }

    private com.applovin.exoplayer2.e.v b(long j, boolean z) {
        return new com.applovin.exoplayer2.e.d(j, this.CE, d(this.CF, this.CA.je()), this.CF, z);
    }

    private void c(long j, boolean z) {
        if (this.vB) {
            return;
        }
        boolean z2 = (this.jF & 1) != 0 && this.CF > 0;
        if (z2 && this.CA.je() == C.TIME_UNSET && !z) {
            return;
        }
        if (!z2 || this.CA.je() == C.TIME_UNSET) {
            this.vG.a(new v.b(C.TIME_UNSET));
        } else {
            this.vG.a(b(j, (this.jF & 2) != 0));
        }
        this.vB = true;
    }

    private static int d(int i, long j) {
        return (int) ((((long) (i * 8)) * 1000000) / j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new e()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.vG = jVar;
        this.CA.a(jVar, new ad.d(0, 1));
        jVar.ig();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int iW = W(iVar);
        int i = iW;
        int i2 = 0;
        int i3 = 0;
        do {
            iVar.c(this.uO.hO(), 0, 2);
            this.uO.fx(0);
            if (f.cu(this.uO.pp())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                iVar.c(this.uO.hO(), 0, 4);
                this.CC.fx(14);
                int iBQ = this.CC.bQ(13);
                if (iBQ <= 6) {
                    i++;
                    iVar.ic();
                    iVar.bI(i);
                } else {
                    iVar.bI(iBQ - 6);
                    i3 += iBQ;
                }
            } else {
                i++;
                iVar.ic();
                iVar.bI(i);
            }
            i2 = 0;
            i3 = 0;
        } while (i - iW < 8192);
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.N(this.vG);
        long jMo28if = iVar.mo28if();
        int i = this.jF;
        if (((i & 2) == 0 && ((i & 1) == 0 || jMo28if == -1)) ? false : true) {
            X(iVar);
        }
        int i2 = iVar.read(this.CB.hO(), 0, 2048);
        boolean z = i2 == -1;
        c(jMo28if, z);
        if (z) {
            return -1;
        }
        this.CB.fx(0);
        this.CB.fA(i2);
        if (!this.Cq) {
            this.CA.e(this.CD, 4);
            this.Cq = true;
        }
        this.CA.K(this.CB);
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        this.Cq = false;
        this.CA.jb();
        this.CD = j2;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
