package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.ai;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final int[] jq = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] jr = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX INFO: renamed from: com.applovin.exoplayer2.b.a$a, reason: collision with other inner class name */
    public static final class C0019a {
        public final int dL;
        public final String dw;
        public final int js;

        private C0019a(int i, int i2, String str) {
            this.js = i;
            this.dL = i2;
            this.dw = str;
        }
    }

    private static int a(com.applovin.exoplayer2.l.x xVar) {
        int iBQ = xVar.bQ(5);
        return iBQ == 31 ? xVar.bQ(6) + 32 : iBQ;
    }

    public static C0019a a(com.applovin.exoplayer2.l.x xVar, boolean z) throws ai {
        int iA = a(xVar);
        int iB = b(xVar);
        int iBQ = xVar.bQ(4);
        String str = "mp4a.40." + iA;
        if (iA == 5 || iA == 29) {
            iB = b(xVar);
            iA = a(xVar);
            if (iA == 22) {
                iBQ = xVar.bQ(4);
            }
        }
        if (z) {
            if (iA != 1 && iA != 2 && iA != 3 && iA != 4 && iA != 6 && iA != 7 && iA != 17) {
                switch (iA) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ai.p("Unsupported audio object type: " + iA);
                }
            }
            a(xVar, iA, iBQ);
            switch (iA) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iBQ2 = xVar.bQ(2);
                    if (iBQ2 == 2 || iBQ2 == 3) {
                        throw ai.p("Unsupported epConfig: " + iBQ2);
                    }
                    break;
            }
        }
        int i = jr[iBQ];
        if (i != -1) {
            return new C0019a(iB, i, str);
        }
        throw ai.c(null, null);
    }

    private static void a(com.applovin.exoplayer2.l.x xVar, int i, int i2) {
        if (xVar.ik()) {
            com.applovin.exoplayer2.l.q.h("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (xVar.ik()) {
            xVar.bR(14);
        }
        boolean zIk = xVar.ik();
        if (i2 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i == 6 || i == 20) {
            xVar.bR(3);
        }
        if (zIk) {
            if (i == 22) {
                xVar.bR(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                xVar.bR(3);
            }
            xVar.bR(1);
        }
    }

    private static int b(com.applovin.exoplayer2.l.x xVar) throws ai {
        int iBQ = xVar.bQ(4);
        if (iBQ == 15) {
            return xVar.bQ(24);
        }
        if (iBQ < 13) {
            return jq[iBQ];
        }
        throw ai.c(null, null);
    }

    public static C0019a b(byte[] bArr) throws ai {
        return a(new com.applovin.exoplayer2.l.x(bArr), false);
    }

    public static byte[] b(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }
}
