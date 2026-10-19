package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.ai;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    private static final class a {
        public final int uZ;
        public final int va;
        public final long[] vb;
        public final int vc;
        public final boolean vd;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.uZ = i;
            this.va = i2;
            this.vb = jArr;
            this.vc = i3;
            this.vd = z;
        }
    }

    public static final class b {
        public final int fR;
        public final String ve;
        public final String[] vf;

        public b(String str, String[] strArr, int i) {
            this.ve = str;
            this.vf = strArr;
            this.fR = i;
        }
    }

    public static final class c {
        public final boolean vg;
        public final int vh;
        public final int vi;
        public final int vj;

        public c(boolean z, int i, int i2, int i3) {
            this.vg = z;
            this.vh = i;
            this.vi = i2;
            this.vj = i3;
        }
    }

    public static final class d {
        public final int dM;
        public final int mH;
        public final int mI;
        public final byte[] tf;
        public final int vk;
        public final int vl;
        public final int vm;
        public final int vn;
        public final int vo;
        public final boolean vp;

        public d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.mH = i;
            this.mI = i2;
            this.dM = i3;
            this.vk = i4;
            this.vl = i5;
            this.vm = i6;
            this.vn = i7;
            this.vo = i8;
            this.vp = z;
            this.tf = bArr;
        }
    }

    public static b a(com.applovin.exoplayer2.l.y yVar, boolean z, boolean z2) throws ai {
        if (z) {
            a(3, yVar, false);
        }
        String strFB = yVar.fB((int) yVar.pw());
        int length = 11 + strFB.length();
        long jPw = yVar.pw();
        String[] strArr = new String[(int) jPw];
        int length2 = length + 4;
        for (int i = 0; i < jPw; i++) {
            strArr[i] = yVar.fB((int) yVar.pw());
            length2 = length2 + 4 + strArr[i].length();
        }
        if (z2 && (yVar.po() & 1) == 0) {
            throw ai.c("framing bit expected to be set", null);
        }
        return new b(strFB, strArr, length2 + 1);
    }

    private static void a(int i, y yVar) throws ai {
        int iBQ = yVar.bQ(6) + 1;
        for (int i2 = 0; i2 < iBQ; i2++) {
            int iBQ2 = yVar.bQ(16);
            if (iBQ2 != 0) {
                com.applovin.exoplayer2.l.q.i("VorbisUtil", "mapping type other than 0 not supported: " + iBQ2);
            } else {
                int iBQ3 = yVar.ik() ? yVar.bQ(4) + 1 : 1;
                if (yVar.ik()) {
                    int iBQ4 = yVar.bQ(8) + 1;
                    for (int i3 = 0; i3 < iBQ4; i3++) {
                        int i4 = i - 1;
                        yVar.bR(bS(i4));
                        yVar.bR(bS(i4));
                    }
                }
                if (yVar.bQ(2) != 0) {
                    throw ai.c("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iBQ3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        yVar.bR(4);
                    }
                }
                for (int i6 = 0; i6 < iBQ3; i6++) {
                    yVar.bR(8);
                    yVar.bR(8);
                    yVar.bR(8);
                }
            }
        }
    }

    public static boolean a(int i, com.applovin.exoplayer2.l.y yVar, boolean z) throws ai {
        if (yVar.pj() < 7) {
            if (z) {
                return false;
            }
            throw ai.c("too short header: " + yVar.pj(), null);
        }
        if (yVar.po() != i) {
            if (z) {
                return false;
            }
            throw ai.c("expected header type " + Integer.toHexString(i), null);
        }
        if (yVar.po() == 118 && yVar.po() == 111 && yVar.po() == 114 && yVar.po() == 98 && yVar.po() == 105 && yVar.po() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ai.c("expected characters 'vorbis'", null);
    }

    private static c[] a(y yVar) {
        int iBQ = yVar.bQ(6) + 1;
        c[] cVarArr = new c[iBQ];
        for (int i = 0; i < iBQ; i++) {
            cVarArr[i] = new c(yVar.ik(), yVar.bQ(16), yVar.bQ(16), yVar.bQ(8));
        }
        return cVarArr;
    }

    private static void b(y yVar) throws ai {
        int iBQ = yVar.bQ(6) + 1;
        for (int i = 0; i < iBQ; i++) {
            if (yVar.bQ(16) > 2) {
                throw ai.c("residueType greater than 2 is not decodable", null);
            }
            yVar.bR(24);
            yVar.bR(24);
            yVar.bR(24);
            int iBQ2 = yVar.bQ(6) + 1;
            yVar.bR(8);
            int[] iArr = new int[iBQ2];
            for (int i2 = 0; i2 < iBQ2; i2++) {
                iArr[i2] = ((yVar.ik() ? yVar.bQ(5) : 0) * 8) + yVar.bQ(3);
            }
            for (int i3 = 0; i3 < iBQ2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        yVar.bR(8);
                    }
                }
            }
        }
    }

    public static int bS(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static d c(com.applovin.exoplayer2.l.y yVar) throws ai {
        a(1, yVar, false);
        int iPE = yVar.pE();
        int iPo = yVar.po();
        int iPE2 = yVar.pE();
        int iPy = yVar.py();
        if (iPy <= 0) {
            iPy = -1;
        }
        int iPy2 = yVar.py();
        if (iPy2 <= 0) {
            iPy2 = -1;
        }
        int iPy3 = yVar.py();
        if (iPy3 <= 0) {
            iPy3 = -1;
        }
        int iPo2 = yVar.po();
        return new d(iPE, iPo, iPE2, iPy, iPy2, iPy3, (int) Math.pow(2.0d, iPo2 & 15), (int) Math.pow(2.0d, (iPo2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (yVar.po() & 1) > 0, Arrays.copyOf(yVar.hO(), yVar.pk()));
    }

    private static void c(y yVar) throws ai {
        int iBQ = yVar.bQ(6) + 1;
        for (int i = 0; i < iBQ; i++) {
            int iBQ2 = yVar.bQ(16);
            if (iBQ2 == 0) {
                yVar.bR(8);
                yVar.bR(16);
                yVar.bR(16);
                yVar.bR(6);
                yVar.bR(8);
                int iBQ3 = yVar.bQ(4) + 1;
                for (int i2 = 0; i2 < iBQ3; i2++) {
                    yVar.bR(8);
                }
            } else {
                if (iBQ2 != 1) {
                    throw ai.c("floor type greater than 1 not decodable: " + iBQ2, null);
                }
                int iBQ4 = yVar.bQ(5);
                int i3 = -1;
                int[] iArr = new int[iBQ4];
                for (int i4 = 0; i4 < iBQ4; i4++) {
                    iArr[i4] = yVar.bQ(4);
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = yVar.bQ(3) + 1;
                    int iBQ5 = yVar.bQ(2);
                    if (iBQ5 > 0) {
                        yVar.bR(8);
                    }
                    for (int i7 = 0; i7 < (1 << iBQ5); i7++) {
                        yVar.bR(8);
                    }
                }
                yVar.bR(2);
                int iBQ6 = yVar.bQ(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < iBQ4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        yVar.bR(iBQ6);
                        i9++;
                    }
                }
            }
        }
    }

    private static a d(y yVar) throws ai {
        if (yVar.bQ(24) != 5653314) {
            throw ai.c("expected code book to start with [0x56, 0x43, 0x42] at " + yVar.il(), null);
        }
        int iBQ = yVar.bQ(16);
        int iBQ2 = yVar.bQ(24);
        long[] jArr = new long[iBQ2];
        boolean zIk = yVar.ik();
        long jQ = 0;
        if (zIk) {
            int iBQ3 = yVar.bQ(5) + 1;
            int i = 0;
            while (i < iBQ2) {
                int iBQ4 = yVar.bQ(bS(iBQ2 - i));
                for (int i2 = 0; i2 < iBQ4 && i < iBQ2; i2++) {
                    jArr[i] = iBQ3;
                    i++;
                }
                iBQ3++;
            }
        } else {
            boolean zIk2 = yVar.ik();
            for (int i3 = 0; i3 < iBQ2; i3++) {
                if (!zIk2) {
                    jArr[i3] = yVar.bQ(5) + 1;
                } else if (yVar.ik()) {
                    jArr[i3] = yVar.bQ(5) + 1;
                } else {
                    jArr[i3] = 0;
                }
            }
        }
        int iBQ5 = yVar.bQ(4);
        if (iBQ5 > 2) {
            throw ai.c("lookup type greater than 2 not decodable: " + iBQ5, null);
        }
        if (iBQ5 == 1 || iBQ5 == 2) {
            yVar.bR(32);
            yVar.bR(32);
            int iBQ6 = yVar.bQ(4) + 1;
            yVar.bR(1);
            if (iBQ5 != 1) {
                jQ = ((long) iBQ2) * ((long) iBQ);
            } else if (iBQ != 0) {
                jQ = q(iBQ2, iBQ);
            }
            yVar.bR((int) (jQ * ((long) iBQ6)));
        }
        return new a(iBQ, iBQ2, jArr, iBQ5, zIk);
    }

    public static b d(com.applovin.exoplayer2.l.y yVar) throws ai {
        return a(yVar, true, true);
    }

    public static c[] d(com.applovin.exoplayer2.l.y yVar, int i) throws ai {
        a(5, yVar, false);
        int iPo = yVar.po() + 1;
        y yVar2 = new y(yVar.hO());
        yVar2.bR(yVar.il() * 8);
        for (int i2 = 0; i2 < iPo; i2++) {
            d(yVar2);
        }
        int iBQ = yVar2.bQ(6) + 1;
        for (int i3 = 0; i3 < iBQ; i3++) {
            if (yVar2.bQ(16) != 0) {
                throw ai.c("placeholder of time domain transforms not zeroed out", null);
            }
        }
        c(yVar2);
        b(yVar2);
        a(i, yVar2);
        c[] cVarArrA = a(yVar2);
        if (yVar2.ik()) {
            return cVarArrA;
        }
        throw ai.c("framing bit after modes not set as expected", null);
    }

    private static long q(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }
}
