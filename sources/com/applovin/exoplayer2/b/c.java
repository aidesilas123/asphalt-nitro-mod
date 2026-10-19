package com.applovin.exoplayer2.b;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.v;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static final int[] jB = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    public static final class a {
        public final int dL;
        public final int dM;
        public final int jA;
        public final int jC;
        public final int jz;

        private a(int i, int i2, int i3, int i4, int i5) {
            this.jC = i;
            this.dL = i2;
            this.dM = i3;
            this.jz = i4;
            this.jA = i5;
        }
    }

    private static int a(com.applovin.exoplayer2.l.x xVar, int i) {
        int i2 = 0;
        while (true) {
            int iBQ = i2 + xVar.bQ(i);
            if (!xVar.ik()) {
                return iBQ;
            }
            i2 = (iBQ + 1) << i;
        }
    }

    public static void a(int i, com.applovin.exoplayer2.l.y yVar) {
        yVar.U(7);
        byte[] bArrHO = yVar.hO();
        bArrHO[0] = -84;
        bArrHO[1] = 64;
        bArrHO[2] = -1;
        bArrHO[3] = -1;
        bArrHO[4] = (byte) ((i >> 16) & 255);
        bArrHO[5] = (byte) ((i >> 8) & 255);
        bArrHO[6] = (byte) (i & 255);
    }

    public static int b(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        if (i == 44097) {
            i2 += 2;
        }
        return i3 + i2;
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return d(new com.applovin.exoplayer2.l.x(bArr)).jA;
    }

    public static com.applovin.exoplayer2.v c(com.applovin.exoplayer2.l.y yVar, String str, String str2, @Nullable com.applovin.exoplayer2.d.e eVar) {
        yVar.fz(1);
        return new v.a().g(str).m("audio/ac4").N(2).O(((yVar.po() & 32) >> 5) == 1 ? 48000 : 44100).a(eVar).j(str2).bT();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.applovin.exoplayer2.b.c.a d(com.applovin.exoplayer2.l.x r10) {
        /*
            r0 = 16
            int r1 = r10.bQ(r0)
            int r0 = r10.bQ(r0)
            r2 = 4
            r3 = 65535(0xffff, float:9.1834E-41)
            if (r0 != r3) goto L18
            r0 = 24
            int r0 = r10.bQ(r0)
            r3 = 7
            goto L19
        L18:
            r3 = 4
        L19:
            int r0 = r0 + r3
            r3 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r3) goto L21
            int r0 = r0 + 2
        L21:
            r7 = r0
            r0 = 2
            int r1 = r10.bQ(r0)
            r3 = 3
            if (r1 != r3) goto L2f
            int r4 = a(r10, r0)
            int r1 = r1 + r4
        L2f:
            r4 = r1
            r1 = 10
            int r1 = r10.bQ(r1)
            boolean r5 = r10.ik()
            if (r5 == 0) goto L45
            int r5 = r10.bQ(r3)
            if (r5 <= 0) goto L45
            r10.bR(r0)
        L45:
            boolean r5 = r10.ik()
            r6 = 48000(0xbb80, float:6.7262E-41)
            r8 = 44100(0xac44, float:6.1797E-41)
            if (r5 == 0) goto L55
            r9 = 48000(0xbb80, float:6.7262E-41)
            goto L58
        L55:
            r9 = 44100(0xac44, float:6.1797E-41)
        L58:
            int r10 = r10.bQ(r2)
            r5 = 0
            if (r9 != r8) goto L69
            r8 = 13
            if (r10 != r8) goto L69
            int[] r0 = com.applovin.exoplayer2.b.c.jB
            r10 = r0[r10]
            r8 = r10
            goto L99
        L69:
            if (r9 != r6) goto L98
            int[] r6 = com.applovin.exoplayer2.b.c.jB
            int r8 = r6.length
            if (r10 >= r8) goto L98
            r5 = r6[r10]
            int r1 = r1 % 5
            r6 = 8
            r8 = 1
            if (r1 == r8) goto L8e
            r8 = 11
            if (r1 == r0) goto L89
            if (r1 == r3) goto L8e
            if (r1 == r2) goto L82
            goto L93
        L82:
            if (r10 == r3) goto L95
            if (r10 == r6) goto L95
            if (r10 != r8) goto L93
            goto L95
        L89:
            if (r10 == r6) goto L95
            if (r10 != r8) goto L93
            goto L95
        L8e:
            if (r10 == r3) goto L95
            if (r10 != r6) goto L93
            goto L95
        L93:
            r8 = r5
            goto L99
        L95:
            int r5 = r5 + 1
            goto L93
        L98:
            r8 = 0
        L99:
            com.applovin.exoplayer2.b.c$a r10 = new com.applovin.exoplayer2.b.c$a
            r5 = 2
            r0 = 0
            r3 = r10
            r6 = r9
            r9 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.c.d(com.applovin.exoplayer2.l.x):com.applovin.exoplayer2.b.c$a");
    }
}
