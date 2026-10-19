package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1058Hd {
    public static byte[] A00;
    public static int[] A01;
    public static String[] A02 = {"NtIRWyZV8H4fZGcEpCmcKf3IqD05aRmR", "GeJrrdqpTOChTmOZ0a7zD9rW5xWuwwPC", "fB9woPX", "60Ey3AJYIgulbHGVt5ok32wwr6OtRAhs", "ywmal8sml3QBlriqnsJwUXbJL0wOA6tO", "h15JbuXclRunjao1u8Y3u6XMQgnEqNxE", "VnL2Csv3rCYD2ISe0PbhclEmcnjJ2Dil", "pqWxkCx1Owc6AlIW11IRV9LZfrwFezHs"};
    public static final byte[] A03;
    public static final float[] A04;
    public static final Object A05;

    static {
        A08();
        A03 = new byte[]{0, 0, 0, 1};
        A04 = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
        A05 = new Object();
        A01 = new int[10];
    }

    public static int A00(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static int A01(byte[] bArr, int i) {
        return bArr[i + 3] & Ascii.US;
    }

    public static int A02(byte[] bArr, int i) {
        int i2;
        synchronized (A05) {
            int iA03 = 0;
            int i3 = 0;
            while (iA03 < i) {
                iA03 = A03(bArr, iA03, i);
                if (iA03 < i) {
                    int[] iArr = A01;
                    if (iArr.length <= i3) {
                        A01 = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    A01[i3] = iA03;
                    iA03 += 3;
                    i3++;
                }
            }
            i2 = i - i3;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = A01[i6] - i4;
                System.arraycopy(bArr, i4, bArr, i5, i7);
                int i8 = i5 + i7;
                int i9 = i8 + 1;
                bArr[i8] = 0;
                i5 = i9 + 1;
                bArr[i9] = 0;
                i4 += i7 + 3;
            }
            System.arraycopy(bArr, i4, bArr, i5, i2 - i5);
        }
        return i2;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        while (i < i2 - 2) {
            if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 3) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A04(byte[] r8, int r9, int r10, boolean[] r11) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1058Hd.A04(byte[], int, int, boolean[]):int");
    }

    public static C1056Hb A05(byte[] bArr, int i, int i2) {
        C1063Hi c1063Hi = new C1063Hi(bArr, i, i2);
        c1063Hi.A07(8);
        int iA04 = c1063Hi.A04();
        int iA042 = c1063Hi.A04();
        c1063Hi.A06();
        return new C1056Hb(iA04, iA042, c1063Hi.A0A());
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C1057Hc A06(byte[] r19, int r20, int r21) {
        /*
            Method dump skipped, instruction units count: 521
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1058Hd.A06(byte[], int, int):com.facebook.ads.redexgen.X.Hc");
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{117, 90, 87, 110, 85, 82, 79, 110, 79, 82, 87, 17, 42, 33, 60, 52, 33, 39, 48, 33, 32, 100, 37, 55, 52, 33, 39, 48, Ascii.ESC, 54, 37, 48, 45, 43, Ascii.ESC, 45, 32, 39, 100, 50, 37, 40, 49, 33, 126, 100, Ascii.RS, 1, Ascii.FF, Ascii.CR, 7, 71, 9, Ascii.RS, Ascii.VT, 85, 74, 71, 70, 76, Ascii.FF, 75, 70, 85, 64};
    }

    public static void A09(C1063Hi c1063Hi, int i) {
        int i2 = 8;
        int iA03 = 8;
        for (int i3 = 0; i3 < i; i3++) {
            if (iA03 != 0) {
                iA03 = ((c1063Hi.A03() + i2) + 256) % 256;
            }
            if (iA03 != 0) {
                i2 = iA03;
            }
            String[] strArr = A02;
            if (strArr[6].charAt(16) != strArr[1].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "KXMRoqtdhshm8G74asFo5uqDFob0Iegs";
            strArr2[7] = "VTZDrARlCd8p2vM8k7YrNOP12vylJmks";
        }
    }

    public static void A0A(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i = 0;
        for (int i2 = 0; i2 + 1 < iPosition; i2++) {
            int i3 = byteBuffer.get(i2) & 255;
            if (i == 3) {
                if (A02[4].charAt(6) != 's') {
                    throw new RuntimeException();
                }
                A02[2] = "cLm552F16buuPP9xMufxVHaN";
                if (i3 == 1 && (byteBuffer.get(i2 + 1) & Ascii.US) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i2 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    if (A02[4].charAt(6) != 's') {
                        String[] strArr = A02;
                        strArr[3] = "6nmXEFQWU8IXvuDOHtOk9CPNFswxHRRs";
                        strArr[7] = "sRzFReGlCKeKmBP91kaLZyOllIcQLpOs";
                        return;
                    } else {
                        String[] strArr2 = A02;
                        strArr2[5] = "MM5ABksrrLy98KCtfJajpuklss5i1OmF";
                        strArr2[0] = "sCLzk23Fd4ag3qXWex39LdUh6FJSiknG";
                        return;
                    }
                }
            } else if (i3 == 0) {
                i++;
            }
            if (i3 != 0) {
                i = 0;
            }
        }
        byteBuffer.clear();
    }

    public static void A0B(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean A0C(String str, byte b) {
        if (A07(46, 9, 117).equals(str) && (b & Ascii.US) == 6) {
            return true;
        }
        return A07(55, 10, 62).equals(str) && ((b & 126) >> 1) == 39;
    }
}
