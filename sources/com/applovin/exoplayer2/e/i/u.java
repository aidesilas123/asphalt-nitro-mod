package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class u extends com.applovin.exoplayer2.e.a {

    private static final class a implements a.f {
        private final com.applovin.exoplayer2.l.y CB;
        private final ag EU;

        private a(ag agVar) {
            this.EU = agVar;
            this.CB = new com.applovin.exoplayer2.l.y();
        }

        private static void S(com.applovin.exoplayer2.l.y yVar) {
            int iD;
            int iPk = yVar.pk();
            if (yVar.pj() < 10) {
                yVar.fx(iPk);
                return;
            }
            yVar.fz(9);
            int iPo = yVar.po() & 7;
            if (yVar.pj() < iPo) {
                yVar.fx(iPk);
                return;
            }
            yVar.fz(iPo);
            if (yVar.pj() < 4) {
                yVar.fx(iPk);
                return;
            }
            if (u.d(yVar.hO(), yVar.il()) == 443) {
                yVar.fz(4);
                int iPp = yVar.pp();
                if (yVar.pj() < iPp) {
                    yVar.fx(iPk);
                    return;
                }
                yVar.fz(iPp);
            }
            while (yVar.pj() >= 4 && (iD = u.d(yVar.hO(), yVar.il())) != 442 && iD != 441 && (iD >>> 8) == 1) {
                yVar.fz(4);
                if (yVar.pj() < 2) {
                    yVar.fx(iPk);
                    return;
                }
                yVar.fx(Math.min(yVar.pk(), yVar.il() + yVar.pp()));
            }
        }

        private a.e a(com.applovin.exoplayer2.l.y yVar, long j, long j2) {
            int iIl = -1;
            long j3 = -9223372036854775807L;
            int iIl2 = -1;
            while (yVar.pj() >= 4) {
                if (u.d(yVar.hO(), yVar.il()) != 442) {
                    yVar.fz(1);
                } else {
                    yVar.fz(4);
                    long jT = v.T(yVar);
                    if (jT != C.TIME_UNSET) {
                        long jBr = this.EU.br(jT);
                        if (jBr > j) {
                            return j3 == C.TIME_UNSET ? a.e.m(jBr, j2) : a.e.aj(j2 + ((long) iIl2));
                        }
                        if (100000 + jBr > j) {
                            return a.e.aj(j2 + ((long) yVar.il()));
                        }
                        iIl2 = yVar.il();
                        j3 = jBr;
                    }
                    S(yVar);
                    iIl = yVar.il();
                }
            }
            return j3 != C.TIME_UNSET ? a.e.n(j3, j2 + ((long) iIl)) : a.e.tO;
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e b(com.applovin.exoplayer2.e.i iVar, long j) throws IOException {
            long jIe = iVar.ie();
            int iMin = (int) Math.min(20000L, iVar.mo28if() - jIe);
            this.CB.U(iMin);
            iVar.c(this.CB.hO(), 0, iMin);
            return a(this.CB, j, jIe);
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public void ib() {
            this.CB.I(ai.ada);
        }
    }

    public u(ag agVar, long j, long j2) {
        super(new a.b(), new a(agVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
