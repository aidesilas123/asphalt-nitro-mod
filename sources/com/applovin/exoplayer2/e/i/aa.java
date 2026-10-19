package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class aa extends com.applovin.exoplayer2.e.a {

    private static final class a implements a.f {
        private final com.applovin.exoplayer2.l.y CB = new com.applovin.exoplayer2.l.y();
        private final ag Fo;
        private final int Fp;
        private final int Fq;

        public a(int i, ag agVar, int i2) {
            this.Fp = i;
            this.Fo = agVar;
            this.Fq = i2;
        }

        private a.e b(com.applovin.exoplayer2.l.y yVar, long j, long j2) {
            int i;
            int i2;
            int iPk = yVar.pk();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (yVar.pj() >= 188 && (i2 = (i = ae.i(yVar.hO(), yVar.il(), iPk)) + 188) <= iPk) {
                long jF = ae.f(yVar, i, this.Fp);
                if (jF != C.TIME_UNSET) {
                    long jBr = this.Fo.br(jF);
                    if (jBr > j) {
                        return j5 == C.TIME_UNSET ? a.e.m(jBr, j2) : a.e.aj(j2 + j4);
                    }
                    if (100000 + jBr > j) {
                        return a.e.aj(j2 + ((long) i));
                    }
                    j4 = i;
                    j5 = jBr;
                }
                yVar.fx(i2);
                j3 = i2;
            }
            return j5 != C.TIME_UNSET ? a.e.n(j5, j2 + j3) : a.e.tO;
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e b(com.applovin.exoplayer2.e.i iVar, long j) throws IOException {
            long jIe = iVar.ie();
            int iMin = (int) Math.min(this.Fq, iVar.mo28if() - jIe);
            this.CB.U(iMin);
            iVar.c(this.CB.hO(), 0, iMin);
            return b(this.CB, j, jIe);
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public void ib() {
            this.CB.I(ai.ada);
        }
    }

    public aa(ag agVar, long j, long j2, int i, int i2) {
        super(new a.b(), new a(i, agVar, i2), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}
