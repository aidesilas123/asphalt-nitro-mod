package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.h.w;
import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class v {
    private long Dh;
    private final com.applovin.exoplayer2.k.b Lu;
    private final int MK;
    private a ML;
    private a MM;
    private a MN;
    private final com.applovin.exoplayer2.l.y uO;

    private static final class a {
        public final long MO;
        public boolean MP;

        @Nullable
        public com.applovin.exoplayer2.k.a MQ;

        @Nullable
        public a MR;
        public final long zl;

        public a(long j, int i) {
            this.MO = j;
            this.zl = j + ((long) i);
        }

        public void a(com.applovin.exoplayer2.k.a aVar, a aVar2) {
            this.MQ = aVar;
            this.MR = aVar2;
            this.MP = true;
        }

        public int aZ(long j) {
            return ((int) (j - this.MO)) + this.MQ.oU;
        }

        public a lv() {
            this.MQ = null;
            a aVar = this.MR;
            this.MR = null;
            return aVar;
        }
    }

    public v(com.applovin.exoplayer2.k.b bVar) {
        this.Lu = bVar;
        int iOc = bVar.oc();
        this.MK = iOc;
        this.uO = new com.applovin.exoplayer2.l.y(32);
        a aVar = new a(0L, iOc);
        this.ML = aVar;
        this.MM = aVar;
        this.MN = aVar;
    }

    private static a a(a aVar, long j) {
        while (j >= aVar.zl) {
            aVar = aVar.MR;
        }
        return aVar;
    }

    private static a a(a aVar, long j, ByteBuffer byteBuffer, int i) {
        a aVarA = a(aVar, j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (aVarA.zl - j));
            byteBuffer.put(aVarA.MQ.tf, aVarA.aZ(j), iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == aVarA.zl) {
                aVarA = aVarA.MR;
            }
        }
        return aVarA;
    }

    private static a a(a aVar, long j, byte[] bArr, int i) {
        a aVarA = a(aVar, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (aVarA.zl - j));
            System.arraycopy(aVarA.MQ.tf, aVarA.aZ(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == aVarA.zl) {
                aVarA = aVarA.MR;
            }
        }
        return aVarA;
    }

    private static a a(a aVar, com.applovin.exoplayer2.c.g gVar, w.a aVar2, com.applovin.exoplayer2.l.y yVar) {
        if (gVar.hg()) {
            aVar = b(aVar, gVar, aVar2, yVar);
        }
        if (!gVar.ha()) {
            gVar.by(aVar2.oW);
            return a(aVar, aVar2.zr, gVar.rH, aVar2.oW);
        }
        yVar.U(4);
        a aVarA = a(aVar, aVar2.zr, yVar.hO(), 4);
        int iPD = yVar.pD();
        aVar2.zr += 4;
        aVar2.oW -= 4;
        gVar.by(iPD);
        a aVarA2 = a(aVarA, aVar2.zr, gVar.rH, iPD);
        aVar2.zr += (long) iPD;
        int i = aVar2.oW - iPD;
        aVar2.oW = i;
        gVar.bx(i);
        return a(aVarA2, aVar2.zr, gVar.rK, aVar2.oW);
    }

    private void a(a aVar) {
        if (aVar.MP) {
            a aVar2 = this.MN;
            boolean z = aVar2.MP;
            int i = (z ? 1 : 0) + (((int) (aVar2.MO - aVar.MO)) / this.MK);
            com.applovin.exoplayer2.k.a[] aVarArr = new com.applovin.exoplayer2.k.a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.MQ;
                aVar = aVar.lv();
            }
            this.Lu.a(aVarArr);
        }
    }

    private static a b(a aVar, com.applovin.exoplayer2.c.g gVar, w.a aVar2, com.applovin.exoplayer2.l.y yVar) {
        int iPp;
        long j = aVar2.zr;
        yVar.U(1);
        a aVarA = a(aVar, j, yVar.hO(), 1);
        long j2 = j + 1;
        byte b = yVar.hO()[0];
        boolean z = (b & 128) != 0;
        int i = b & Ascii.DEL;
        com.applovin.exoplayer2.c.c cVar = gVar.rG;
        byte[] bArr = cVar.rk;
        if (bArr == null) {
            cVar.rk = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarA2 = a(aVarA, j2, cVar.rk, i);
        long j3 = j2 + ((long) i);
        if (z) {
            yVar.U(2);
            aVarA2 = a(aVarA2, j3, yVar.hO(), 2);
            j3 += 2;
            iPp = yVar.pp();
        } else {
            iPp = 1;
        }
        int[] iArr = cVar.rn;
        if (iArr == null || iArr.length < iPp) {
            iArr = new int[iPp];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.ro;
        if (iArr3 == null || iArr3.length < iPp) {
            iArr3 = new int[iPp];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i2 = iPp * 6;
            yVar.U(i2);
            aVarA2 = a(aVarA2, j3, yVar.hO(), i2);
            j3 += (long) i2;
            yVar.fx(0);
            for (int i3 = 0; i3 < iPp; i3++) {
                iArr2[i3] = yVar.pp();
                iArr4[i3] = yVar.pD();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = aVar2.oW - ((int) (j3 - aVar2.zr));
        }
        x.a aVar3 = (x.a) ai.R(aVar2.xZ);
        cVar.a(iPp, iArr2, iArr4, aVar3.uV, cVar.rk, aVar3.uU, aVar3.rq, aVar3.rr);
        long j4 = aVar2.zr;
        int i4 = (int) (j3 - j4);
        aVar2.zr = j4 + ((long) i4);
        aVar2.oW -= i4;
        return aVarA2;
    }

    private int dN(int i) {
        a aVar = this.MN;
        if (!aVar.MP) {
            aVar.a(this.Lu.oa(), new a(this.MN.zl, this.MK));
        }
        return Math.min(i, (int) (this.MN.zl - this.Dh));
    }

    private void dO(int i) {
        long j = this.Dh + ((long) i);
        this.Dh = j;
        a aVar = this.MN;
        if (j == aVar.zl) {
            this.MN = aVar.MR;
        }
    }

    public void Y() {
        a(this.ML);
        a aVar = new a(0L, this.MK);
        this.ML = aVar;
        this.MM = aVar;
        this.MN = aVar;
        this.Dh = 0L;
        this.Lu.ob();
    }

    public int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) throws IOException {
        int iDN = dN(i);
        a aVar = this.MN;
        int i2 = gVar.read(aVar.MQ.tf, aVar.aZ(this.Dh), iDN);
        if (i2 != -1) {
            dO(i2);
            return i2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public void a(com.applovin.exoplayer2.c.g gVar, w.a aVar) {
        this.MM = a(this.MM, gVar, aVar, this.uO);
    }

    public void aY(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.ML;
            if (j < aVar.zl) {
                break;
            }
            this.Lu.a(aVar.MQ);
            this.ML = this.ML.lv();
        }
        if (this.MM.MO < aVar.MO) {
            this.MM = aVar;
        }
    }

    public void b(com.applovin.exoplayer2.c.g gVar, w.a aVar) {
        a(this.MM, gVar, aVar, this.uO);
    }

    public void c(com.applovin.exoplayer2.l.y yVar, int i) {
        while (i > 0) {
            int iDN = dN(i);
            a aVar = this.MN;
            yVar.r(aVar.MQ.tf, aVar.aZ(this.Dh), iDN);
            i -= iDN;
            dO(iDN);
        }
    }

    public void lt() {
        this.MM = this.ML;
    }

    public long lu() {
        return this.Dh;
    }
}
