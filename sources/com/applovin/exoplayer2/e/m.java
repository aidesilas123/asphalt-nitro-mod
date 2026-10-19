package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.ai;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    public static final class a {
        public long uy;
    }

    public static int a(com.applovin.exoplayer2.l.y yVar, int i) {
        switch (i) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return yVar.po() + 1;
            case 7:
                return yVar.pp() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long a(i iVar, p pVar) throws IOException {
        iVar.ic();
        iVar.bI(1);
        byte[] bArr = new byte[1];
        iVar.c(bArr, 0, 1);
        boolean z = (bArr[0] & 1) == 1;
        iVar.bI(2);
        int i = z ? 7 : 6;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(i);
        yVar.fA(k.a(iVar, yVar.hO(), 0, i));
        iVar.ic();
        a aVar = new a();
        if (a(yVar, pVar, z, aVar)) {
            return aVar.uy;
        }
        throw ai.c(null, null);
    }

    private static boolean a(int i, p pVar) {
        return i <= 7 ? i == pVar.mI - 1 : i <= 10 && pVar.mI == 2;
    }

    public static boolean a(i iVar, p pVar, int i, a aVar) throws IOException {
        long jId = iVar.id();
        byte[] bArr = new byte[2];
        iVar.c(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            iVar.ic();
            iVar.bI((int) (jId - iVar.ie()));
            return false;
        }
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(16);
        System.arraycopy(bArr, 0, yVar.hO(), 0, 2);
        yVar.fA(k.a(iVar, yVar.hO(), 2, 14));
        iVar.ic();
        iVar.bI((int) (jId - iVar.ie()));
        return a(yVar, pVar, i, aVar);
    }

    private static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, int i) {
        int iA = a(yVar, i);
        return iA != -1 && iA <= pVar.uC;
    }

    public static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, int i, a aVar) {
        int iIl = yVar.il();
        long jPv = yVar.pv();
        long j = jPv >>> 16;
        if (j != i) {
            return false;
        }
        return a((int) (15 & (jPv >> 4)), pVar) && b((int) ((jPv >> 1) & 7), pVar) && !(((jPv & 1) > 1L ? 1 : ((jPv & 1) == 1L ? 0 : -1)) == 0) && a(yVar, pVar, ((j & 1) > 1L ? 1 : ((j & 1) == 1L ? 0 : -1)) == 0, aVar) && a(yVar, pVar, (int) ((jPv >> 12) & 15)) && b(yVar, pVar, (int) ((jPv >> 8) & 15)) && b(yVar, iIl);
    }

    private static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, boolean z, a aVar) {
        try {
            long jPK = yVar.pK();
            if (!z) {
                jPK *= (long) pVar.uC;
            }
            aVar.uy = jPK;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    private static boolean b(int i, p pVar) {
        return i == 0 || i == pVar.uH;
    }

    private static boolean b(com.applovin.exoplayer2.l.y yVar, int i) {
        return yVar.po() == com.applovin.exoplayer2.l.ai.c(yVar.hO(), i, yVar.il() - 1, 0);
    }

    private static boolean b(com.applovin.exoplayer2.l.y yVar, p pVar, int i) {
        int i2 = pVar.dM;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == pVar.uF;
        }
        if (i == 12) {
            return yVar.po() * 1000 == i2;
        }
        if (i > 14) {
            return false;
        }
        int iPp = yVar.pp();
        if (i == 14) {
            iPp *= 10;
        }
        return iPp == i2;
    }
}
