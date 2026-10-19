package com.applovin.exoplayer2.e.f;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;

/* JADX INFO: loaded from: classes.dex */
final class f implements e {
    private final long fH;
    private final long[] tU;
    private final long[] uP;
    private final long yO;

    private f(long[] jArr, long[] jArr2, long j, long j2) {
        this.tU = jArr;
        this.uP = jArr2;
        this.fH = j;
        this.yO = j2;
    }

    @Nullable
    public static f a(long j, long j2, r.a aVar, y yVar) {
        int iPo;
        yVar.fz(10);
        int iPx = yVar.px();
        if (iPx <= 0) {
            return null;
        }
        int i = aVar.dM;
        long jE = ai.e(iPx, 1000000 * ((long) (i >= 32000 ? 1152 : 576)), i);
        int iPp = yVar.pp();
        int iPp2 = yVar.pp();
        int iPp3 = yVar.pp();
        yVar.fz(2);
        long j3 = j2 + ((long) aVar.jz);
        long[] jArr = new long[iPp];
        long[] jArr2 = new long[iPp];
        int i2 = 0;
        long j4 = j2;
        while (i2 < iPp) {
            int i3 = iPp2;
            long j5 = j3;
            jArr[i2] = (((long) i2) * jE) / ((long) iPp);
            jArr2[i2] = Math.max(j4, j5);
            if (iPp3 == 1) {
                iPo = yVar.po();
            } else if (iPp3 == 2) {
                iPo = yVar.pp();
            } else if (iPp3 == 3) {
                iPo = yVar.pt();
            } else {
                if (iPp3 != 4) {
                    return null;
                }
                iPo = yVar.pD();
            }
            j4 += (long) (iPo * i3);
            i2++;
            j3 = j5;
            iPp2 = i3;
        }
        if (j != -1 && j != j4) {
            q.h("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new f(jArr, jArr2, jE, j4);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a ai(long j) {
        int iA = ai.a(this.tU, j, true, true);
        w wVar = new w(this.tU[iA], this.uP[iA]);
        if (wVar.rJ >= j || iA == this.tU.length - 1) {
            return new v.a(wVar);
        }
        int i = iA + 1;
        return new v.a(wVar, new w(this.tU[i], this.uP[i]));
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long aq(long j) {
        return this.tU[ai.a(this.uP, j, true, true)];
    }

    @Override // com.applovin.exoplayer2.e.v
    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean hU() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long iF() {
        return this.yO;
    }
}
