package com.applovin.exoplayer2.e;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.e.p;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    public static final class a {

        @Nullable
        public p uz;

        public a(@Nullable p pVar) {
            this.uz = pVar;
        }
    }

    @Nullable
    public static com.applovin.exoplayer2.g.a a(i iVar, boolean z) throws IOException {
        com.applovin.exoplayer2.g.a aVarA = new s().a(iVar, z ? null : com.applovin.exoplayer2.g.e.g.JP);
        if (aVarA == null || aVarA.kD() == 0) {
            return null;
        }
        return aVarA;
    }

    public static boolean a(i iVar, a aVar) throws IOException {
        iVar.ic();
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(new byte[4]);
        iVar.c(xVar.tf, 0, 4);
        boolean zIk = xVar.ik();
        int iBQ = xVar.bQ(7);
        int iBQ2 = xVar.bQ(24) + 4;
        if (iBQ == 0) {
            aVar.uz = e(iVar);
        } else {
            p pVar = aVar.uz;
            if (pVar == null) {
                throw new IllegalArgumentException();
            }
            if (iBQ == 3) {
                aVar.uz = pVar.a(b(iVar, iBQ2));
            } else if (iBQ == 4) {
                aVar.uz = pVar.g(c(iVar, iBQ2));
            } else if (iBQ == 6) {
                aVar.uz = pVar.h(Collections.singletonList(d(iVar, iBQ2)));
            } else {
                iVar.bH(iBQ2);
            }
        }
        return zIk;
    }

    private static p.a b(i iVar, int i) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(i);
        iVar.a(yVar.hO(), 0, i);
        return b(yVar);
    }

    public static p.a b(com.applovin.exoplayer2.l.y yVar) {
        yVar.fz(1);
        int iPt = yVar.pt();
        long jIl = ((long) yVar.il()) + ((long) iPt);
        int i = iPt / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long jPz = yVar.pz();
            if (jPz == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jPz;
            jArrCopyOf2[i2] = yVar.pz();
            yVar.fz(2);
            i2++;
        }
        yVar.fz((int) (jIl - ((long) yVar.il())));
        return new p.a(jArrCopyOf, jArrCopyOf2);
    }

    @Nullable
    public static com.applovin.exoplayer2.g.a b(i iVar, boolean z) throws IOException {
        iVar.ic();
        long jId = iVar.id();
        com.applovin.exoplayer2.g.a aVarA = a(iVar, z);
        iVar.bH((int) (iVar.id() - jId));
        return aVarA;
    }

    public static boolean b(i iVar) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(4);
        iVar.c(yVar.hO(), 0, 4);
        return yVar.pv() == 1716281667;
    }

    private static List<String> c(i iVar, int i) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(i);
        iVar.a(yVar.hO(), 0, i);
        yVar.fz(4);
        return Arrays.asList(z.a(yVar, false, false).vf);
    }

    public static void c(i iVar) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(4);
        iVar.a(yVar.hO(), 0, 4);
        if (yVar.pv() != 1716281667) {
            throw ai.c("Failed to read FLAC stream marker.", null);
        }
    }

    public static int d(i iVar) throws IOException {
        iVar.ic();
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(2);
        iVar.c(yVar.hO(), 0, 2);
        int iPp = yVar.pp();
        if ((iPp >> 2) == 16382) {
            iVar.ic();
            return iPp;
        }
        iVar.ic();
        throw ai.c("First frame does not start with sync code.", null);
    }

    private static com.applovin.exoplayer2.g.c.a d(i iVar, int i) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(i);
        iVar.a(yVar.hO(), 0, i);
        yVar.fz(4);
        int iPx = yVar.px();
        String strB = yVar.b(yVar.px(), Charsets.US_ASCII);
        String strFB = yVar.fB(yVar.px());
        int iPx2 = yVar.px();
        int iPx3 = yVar.px();
        int iPx4 = yVar.px();
        int iPx5 = yVar.px();
        int iPx6 = yVar.px();
        byte[] bArr = new byte[iPx6];
        yVar.r(bArr, 0, iPx6);
        return new com.applovin.exoplayer2.g.c.a(iPx, strB, strFB, iPx2, iPx3, iPx4, iPx5, bArr);
    }

    private static p e(i iVar) throws IOException {
        byte[] bArr = new byte[38];
        iVar.a(bArr, 0, 38);
        return new p(bArr, 4);
    }
}
