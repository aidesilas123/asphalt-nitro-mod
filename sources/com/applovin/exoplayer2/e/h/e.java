package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class e {
    public int BM;
    public long BN;
    public long BO;
    public long BP;
    public long BQ;
    public int BR;
    public int BT;
    public int BU;
    public int bs;
    public final int[] BV = new int[255];
    private final y uO = new y(255);

    e() {
    }

    public boolean T(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return c(iVar, -1L);
    }

    public void Y() {
        this.BM = 0;
        this.bs = 0;
        this.BN = 0L;
        this.BO = 0L;
        this.BP = 0L;
        this.BQ = 0L;
        this.BR = 0;
        this.BT = 0;
        this.BU = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (r10 == (-1)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        if (r9.ie() >= r10) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if (r9.bG(1) == (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean c(com.applovin.exoplayer2.e.i r9, long r10) throws java.io.IOException {
        /*
            r8 = this;
            long r0 = r9.ie()
            long r2 = r9.id()
            r4 = 0
            r5 = 1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 != 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.applovin.exoplayer2.l.a.checkArgument(r0)
            com.applovin.exoplayer2.l.y r0 = r8.uO
            r1 = 4
            r0.U(r1)
        L1a:
            r2 = -1
            int r0 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r0 == 0) goto L2b
            long r2 = r9.ie()
            r6 = 4
            long r2 = r2 + r6
            int r6 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r6 >= 0) goto L51
        L2b:
            com.applovin.exoplayer2.l.y r2 = r8.uO
            byte[] r2 = r2.hO()
            boolean r2 = com.applovin.exoplayer2.e.k.a(r9, r2, r4, r1, r5)
            if (r2 == 0) goto L51
            com.applovin.exoplayer2.l.y r0 = r8.uO
            r0.fx(r4)
            com.applovin.exoplayer2.l.y r0 = r8.uO
            long r2 = r0.pv()
            r6 = 1332176723(0x4f676753, double:6.58182753E-315)
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 != 0) goto L4d
            r9.ic()
            return r5
        L4d:
            r9.bH(r5)
            goto L1a
        L51:
            if (r0 == 0) goto L5b
            long r1 = r9.ie()
            int r3 = (r1 > r10 ? 1 : (r1 == r10 ? 0 : -1))
            if (r3 >= 0) goto L63
        L5b:
            int r1 = r9.bG(r5)
            r2 = -1
            if (r1 == r2) goto L63
            goto L51
        L63:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.h.e.c(com.applovin.exoplayer2.e.i, long):boolean");
    }

    public boolean f(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        Y();
        this.uO.U(27);
        if (!k.a(iVar, this.uO.hO(), 0, 27, z) || this.uO.pv() != 1332176723) {
            return false;
        }
        int iPo = this.uO.po();
        this.BM = iPo;
        if (iPo != 0) {
            if (z) {
                return false;
            }
            throw ai.p("unsupported bit stream revision");
        }
        this.bs = this.uO.po();
        this.BN = this.uO.pA();
        this.BO = this.uO.pw();
        this.BP = this.uO.pw();
        this.BQ = this.uO.pw();
        int iPo2 = this.uO.po();
        this.BR = iPo2;
        this.BT = iPo2 + 27;
        this.uO.U(iPo2);
        if (!k.a(iVar, this.uO.hO(), 0, this.BR, z)) {
            return false;
        }
        for (int i = 0; i < this.BR; i++) {
            this.BV[i] = this.uO.po();
            this.BU += this.BV[i];
        }
        return true;
    }
}
