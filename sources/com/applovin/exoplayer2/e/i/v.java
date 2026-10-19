package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class v {
    private boolean EV;
    private boolean EW;
    private boolean EX;
    private final ag EU = new ag(0);
    private long EY = C.TIME_UNSET;
    private long EZ = C.TIME_UNSET;
    private long fH = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y CB = new com.applovin.exoplayer2.l.y();

    v() {
    }

    private static boolean C(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private static long D(byte[] bArr) {
        return (((((long) bArr[0]) & 56) >> 3) << 30) | ((((long) bArr[0]) & 3) << 28) | ((((long) bArr[1]) & 255) << 20) | (((((long) bArr[2]) & 248) >> 3) << 15) | ((((long) bArr[2]) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public static long T(com.applovin.exoplayer2.l.y yVar) {
        int iIl = yVar.il();
        if (yVar.pj() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        yVar.r(bArr, 0, 9);
        yVar.fx(iIl);
        return !C(bArr) ? C.TIME_UNSET : D(bArr);
    }

    private long U(com.applovin.exoplayer2.l.y yVar) {
        int iPk = yVar.pk();
        for (int iIl = yVar.il(); iIl < iPk - 3; iIl++) {
            if (d(yVar.hO(), iIl) == 442) {
                yVar.fx(iIl + 4);
                long jT = T(yVar);
                if (jT != C.TIME_UNSET) {
                    return jT;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private long V(com.applovin.exoplayer2.l.y yVar) {
        int iIl = yVar.il();
        for (int iPk = yVar.pk() - 4; iPk >= iIl; iPk--) {
            if (d(yVar.hO(), iPk) == 442) {
                yVar.fx(iPk + 4);
                long jT = T(yVar);
                if (jT != C.TIME_UNSET) {
                    return jT;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int Y(com.applovin.exoplayer2.e.i iVar) {
        this.CB.I(ai.ada);
        this.EV = true;
        iVar.ic();
        return 0;
    }

    private int d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    private int k(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        int iMin = (int) Math.min(20000L, iVar.mo28if());
        long j = 0;
        if (iVar.ie() != j) {
            uVar.uc = j;
            return 1;
        }
        this.CB.U(iMin);
        iVar.ic();
        iVar.c(this.CB.hO(), 0, iMin);
        this.EY = U(this.CB);
        this.EW = true;
        return 0;
    }

    private int l(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        long jMo28if = iVar.mo28if();
        int iMin = (int) Math.min(20000L, jMo28if);
        long j = jMo28if - ((long) iMin);
        if (iVar.ie() != j) {
            uVar.uc = j;
            return 1;
        }
        this.CB.U(iMin);
        iVar.ic();
        iVar.c(this.CB.hO(), 0, iMin);
        this.EZ = V(this.CB);
        this.EX = true;
        return 0;
    }

    public long dd() {
        return this.fH;
    }

    public int j(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        if (!this.EX) {
            return l(iVar, uVar);
        }
        if (this.EZ == C.TIME_UNSET) {
            return Y(iVar);
        }
        if (!this.EW) {
            return k(iVar, uVar);
        }
        long j = this.EY;
        if (j == C.TIME_UNSET) {
            return Y(iVar);
        }
        long jBr = this.EU.br(this.EZ) - this.EU.br(j);
        this.fH = jBr;
        if (jBr < 0) {
            com.applovin.exoplayer2.l.q.h("PsDurationReader", "Invalid duration: " + this.fH + ". Using TIME_UNSET instead.");
            this.fH = C.TIME_UNSET;
        }
        return Y(iVar);
    }

    public boolean jt() {
        return this.EV;
    }

    public ag ju() {
        return this.EU;
    }
}
