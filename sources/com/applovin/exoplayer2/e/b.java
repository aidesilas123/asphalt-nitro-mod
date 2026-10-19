package com.applovin.exoplayer2.e;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static int a(com.applovin.exoplayer2.l.y yVar) {
        int i = 0;
        while (yVar.pj() != 0) {
            int iPo = yVar.po();
            i += iPo;
            if (iPo != 255) {
                return i;
            }
        }
        return -1;
    }

    public static void a(long j, com.applovin.exoplayer2.l.y yVar, x[] xVarArr) {
        while (true) {
            if (yVar.pj() <= 1) {
                return;
            }
            int iA = a(yVar);
            int iA2 = a(yVar);
            int iIl = yVar.il() + iA2;
            if (iA2 == -1 || iA2 > yVar.pj()) {
                com.applovin.exoplayer2.l.q.h("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iIl = yVar.pk();
            } else if (iA == 4 && iA2 >= 8) {
                int iPo = yVar.po();
                int iPp = yVar.pp();
                int iPx = iPp == 49 ? yVar.px() : 0;
                int iPo2 = yVar.po();
                if (iPp == 47) {
                    yVar.fz(1);
                }
                boolean z = iPo == 181 && (iPp == 49 || iPp == 47) && iPo2 == 3;
                if (iPp == 49) {
                    z &= iPx == 1195456820;
                }
                if (z) {
                    b(j, yVar, xVarArr);
                }
            }
            yVar.fx(iIl);
        }
    }

    public static void b(long j, com.applovin.exoplayer2.l.y yVar, x[] xVarArr) {
        int iPo = yVar.po();
        if ((iPo & 64) != 0) {
            yVar.fz(1);
            int i = (iPo & 31) * 3;
            int iIl = yVar.il();
            for (x xVar : xVarArr) {
                yVar.fx(iIl);
                xVar.c(yVar, i);
                if (j != C.TIME_UNSET) {
                    xVar.a(j, 1, i, 0, null);
                }
            }
        }
    }
}
