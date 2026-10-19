package com.applovin.exoplayer2.e.e;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i;
import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
final class a implements c {
    private final byte[] vw = new byte[8];
    private final ArrayDeque<C0031a> wK = new ArrayDeque<>();
    private final f wL = new f();
    private b wM;
    private int wN;
    private int wO;
    private long wP;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.e.e.a$a, reason: collision with other inner class name */
    private static final class C0031a {
        private final int wO;
        private final long wQ;

        private C0031a(int i, long j) {
            this.wO = i;
            this.wQ = j;
        }
    }

    private long e(i iVar, int i) throws IOException {
        iVar.a(this.vw, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.vw[i2] & 255));
        }
        return j;
    }

    private double f(i iVar, int i) throws IOException {
        return i == 4 ? Float.intBitsToFloat((int) r0) : Double.longBitsToDouble(e(iVar, i));
    }

    private static String g(i iVar, int i) throws IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        iVar.a(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    private long z(i iVar) throws IOException {
        iVar.ic();
        while (true) {
            iVar.c(this.vw, 0, 4);
            int iCd = f.cd(this.vw[0]);
            if (iCd != -1 && iCd <= 4) {
                int iB = (int) f.b(this.vw, iCd, false);
                if (this.wM.bY(iB)) {
                    iVar.bH(iCd);
                    return iB;
                }
            }
            iVar.bH(1);
        }
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public void Y() {
        this.wN = 0;
        this.wK.clear();
        this.wL.Y();
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public void a(b bVar) {
        this.wM = bVar;
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public boolean y(i iVar) throws IOException {
        com.applovin.exoplayer2.l.a.N(this.wM);
        while (true) {
            C0031a c0031aPeek = this.wK.peek();
            if (c0031aPeek != null && iVar.ie() >= c0031aPeek.wQ) {
                this.wM.bZ(this.wK.pop().wO);
                return true;
            }
            if (this.wN == 0) {
                long jA = this.wL.a(iVar, true, false, 4);
                if (jA == -2) {
                    jA = z(iVar);
                }
                if (jA == -1) {
                    return false;
                }
                this.wO = (int) jA;
                this.wN = 1;
            }
            if (this.wN == 1) {
                this.wP = this.wL.a(iVar, false, true, 8);
                this.wN = 2;
            }
            int iBX = this.wM.bX(this.wO);
            if (iBX != 0) {
                if (iBX == 1) {
                    long jIe = iVar.ie();
                    this.wK.push(new C0031a(this.wO, this.wP + jIe));
                    this.wM.f(this.wO, jIe, this.wP);
                    this.wN = 0;
                    return true;
                }
                if (iBX == 2) {
                    long j = this.wP;
                    if (j <= 8) {
                        this.wM.e(this.wO, e(iVar, (int) j));
                        this.wN = 0;
                        return true;
                    }
                    throw ai.c("Invalid integer size: " + this.wP, null);
                }
                if (iBX == 3) {
                    long j2 = this.wP;
                    if (j2 <= 2147483647L) {
                        this.wM.b(this.wO, g(iVar, (int) j2));
                        this.wN = 0;
                        return true;
                    }
                    throw ai.c("String element size: " + this.wP, null);
                }
                if (iBX == 4) {
                    this.wM.a(this.wO, (int) this.wP, iVar);
                    this.wN = 0;
                    return true;
                }
                if (iBX != 5) {
                    throw ai.c("Invalid element type " + iBX, null);
                }
                long j3 = this.wP;
                if (j3 == 4 || j3 == 8) {
                    this.wM.b(this.wO, f(iVar, (int) j3));
                    this.wN = 0;
                    return true;
                }
                throw ai.c("Invalid float size: " + this.wP, null);
            }
            iVar.bH((int) this.wP);
            this.wN = 0;
        }
    }
}
