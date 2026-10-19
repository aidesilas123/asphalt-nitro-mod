package com.applovin.exoplayer2.e.h;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.n;
import com.applovin.exoplayer2.e.o;
import com.applovin.exoplayer2.e.p;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class b extends h {

    @Nullable
    private p BD;

    @Nullable
    private a BE;

    private static final class a implements f {
        private p BD;
        private p.a uJ;
        private long uA = -1;
        private long BF = -1;

        public a(p pVar, p.a aVar) {
            this.BD = pVar;
            this.uJ = aVar;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public long N(com.applovin.exoplayer2.e.i iVar) {
            long j = this.BF;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.BF = -1L;
            return j2;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public void aC(long j) {
            long[] jArr = this.uJ.uK;
            this.BF = jArr[ai.a(jArr, j, true, true)];
        }

        public void aD(long j) {
            this.uA = j;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public v iX() {
            com.applovin.exoplayer2.l.a.checkState(this.uA != -1);
            return new o(this.BD, this.uA);
        }
    }

    b() {
    }

    private static boolean A(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean F(y yVar) {
        return yVar.pj() >= 5 && yVar.po() == 127 && yVar.pv() == 1179402563;
    }

    private int H(y yVar) {
        int i = (yVar.hO()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            yVar.fz(4);
            yVar.pK();
        }
        int iA = m.a(yVar, i);
        yVar.fx(0);
        return iA;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long G(y yVar) {
        if (A(yVar.hO())) {
            return H(yVar);
        }
        return -1L;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) {
        byte[] bArrHO = yVar.hO();
        p pVar = this.BD;
        if (pVar == null) {
            p pVar2 = new p(bArrHO, 17);
            this.BD = pVar2;
            aVar.dU = pVar2.a(Arrays.copyOfRange(bArrHO, 9, yVar.pk()), (com.applovin.exoplayer2.g.a) null);
            return true;
        }
        if ((bArrHO[0] & Ascii.DEL) == 3) {
            p.a aVarB = n.b(yVar);
            p pVarA = pVar.a(aVarB);
            this.BD = pVarA;
            this.BE = new a(pVarA, aVarB);
            return true;
        }
        if (!A(bArrHO)) {
            return true;
        }
        a aVar2 = this.BE;
        if (aVar2 != null) {
            aVar2.aD(j);
            aVar.BZ = this.BE;
        }
        com.applovin.exoplayer2.l.a.checkNotNull(aVar.dU);
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected void e(boolean z) {
        super.e(z);
        if (z) {
            this.BD = null;
            this.BE = null;
        }
    }
}
