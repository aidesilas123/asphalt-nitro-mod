package com.applovin.exoplayer2.l;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static final byte[] abK = {0, 0, 0, 1};
    public static final float[] acq = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object acr = new Object();
    private static int[] acs = new int[10];

    public static final class a {
        public final int DY;
        public final int act;
        public final boolean acu;

        public a(int i, int i2, boolean z) {
            this.DY = i;
            this.act = i2;
            this.acu = z;
        }
    }

    public static final class b {
        public final boolean acA;
        public final int acB;
        public final int acC;
        public final int acD;
        public final boolean acE;
        public final int act;
        public final int acv;
        public final int acw;
        public final int acx;
        public final float acy;
        public final boolean acz;
        public final int dE;
        public final int height;

        public b(int i, int i2, int i3, int i4, int i5, int i6, float f2, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.acv = i;
            this.acw = i2;
            this.acx = i3;
            this.act = i4;
            this.dE = i5;
            this.height = i6;
            this.acy = f2;
            this.acz = z;
            this.acA = z2;
            this.acB = i7;
            this.acC = i8;
            this.acD = i9;
            this.acE = z3;
        }
    }

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        com.applovin.exoplayer2.l.a.checkState(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            b(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            b(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            b(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            if ((bArr[i5] & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                    b(zArr);
                    return i6;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    private static void a(z zVar, int i) {
        int iPN = 8;
        int i2 = 8;
        for (int i3 = 0; i3 < i; i3++) {
            if (iPN != 0) {
                iPN = ((zVar.pN() + i2) + 256) % 256;
            }
            if (iPN != 0) {
                i2 = iPN;
            }
        }
    }

    public static boolean a(@Nullable String str, byte b2) {
        if ("video/avc".equals(str) && (b2 & Ascii.US) == 6) {
            return true;
        }
        return "video/hevc".equals(str) && ((b2 & 126) >> 1) == 39;
    }

    public static void b(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int i(byte[] bArr, int i) {
        int i2;
        synchronized (acr) {
            int iP = 0;
            int i3 = 0;
            while (iP < i) {
                try {
                    iP = p(bArr, iP, i);
                    if (iP < i) {
                        int[] iArr = acs;
                        if (iArr.length <= i3) {
                            acs = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        acs[i3] = iP;
                        iP += 3;
                        i3++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i2 = i - i3;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = acs[i6] - i5;
                System.arraycopy(bArr, i5, bArr, i4, i7);
                int i8 = i4 + i7;
                int i9 = i8 + 1;
                bArr[i8] = 0;
                i4 = i9 + 1;
                bArr[i9] = 0;
                i5 += i7 + 3;
            }
            System.arraycopy(bArr, i5, bArr, i4, i2 - i4);
        }
        return i2;
    }

    public static int j(byte[] bArr, int i) {
        return bArr[i + 3] & Ascii.US;
    }

    public static int k(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static void m(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i3 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i4 = byteBuffer.get(i) & 255;
            if (i2 == 3) {
                if (i4 == 1 && (byteBuffer.get(i3) & Ascii.US) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i4 == 0) {
                i2++;
            }
            if (i4 != 0) {
                i2 = 0;
            }
            i = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.applovin.exoplayer2.l.v.b n(byte[] r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.l.v.n(byte[], int, int):com.applovin.exoplayer2.l.v$b");
    }

    public static a o(byte[] bArr, int i, int i2) {
        z zVar = new z(bArr, i, i2);
        zVar.bR(8);
        int iPM = zVar.pM();
        int iPM2 = zVar.pM();
        zVar.ph();
        return new a(iPM, iPM2, zVar.ik());
    }

    private static int p(byte[] bArr, int i, int i2) {
        while (i < i2 - 2) {
            if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 3) {
                return i;
            }
            i++;
        }
        return i2;
    }
}
