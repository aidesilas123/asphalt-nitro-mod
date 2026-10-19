package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HM {
    public static byte[] A00;
    public static String[] A01 = {"hLuAeVo", "xAd", "BycTw1zmUt42SK9Tl7PmiYbTXOv2h", "PsetfG6yciY5a2BvCaZ", "D9JCYa2SYwqlcDmoI8QxkPMLQh1jrwYx", "z42CWN0IsG1EBL", "CLFdSzfEbp5p3IaxEHP", "w1O1Tcjq0FMnxE"};
    public static final byte[] A02;
    public static final int[] A03;
    public static final int[] A04;

    static {
        A05();
        A02 = new byte[]{0, 0, 0, 1};
        A04 = new int[]{96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
        A03 = new int[]{0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};
    }

    public static int A00(C1061Hg c1061Hg) {
        int iA04 = c1061Hg.A04(5);
        return iA04 == 31 ? c1061Hg.A04(6) + 32 : iA04;
    }

    public static int A01(C1061Hg c1061Hg) {
        int iA04 = c1061Hg.A04(4);
        if (iA04 == 15) {
            return c1061Hg.A04(24);
        }
        HI.A03(iA04 < 13);
        return A04[iA04];
    }

    public static Pair<Integer, Integer> A02(C1061Hg c1061Hg, boolean z) throws C08729d {
        int iA00 = A00(c1061Hg);
        int iA01 = A01(c1061Hg);
        int iA04 = c1061Hg.A04(4);
        if (iA00 == 5 || iA00 == 29) {
            iA01 = A01(c1061Hg);
            String[] strArr = A01;
            if (strArr[0].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[7] = "JGW5XGvoVK0qP1";
            strArr2[5] = "AxLOy3pO6f4GWD";
            iA00 = A00(c1061Hg);
            if (iA00 == 22) {
                iA04 = c1061Hg.A04(4);
            }
        }
        if (z) {
            switch (iA00) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    A06(c1061Hg, iA00, iA04);
                    switch (iA00) {
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                            int iA042 = c1061Hg.A04(2);
                            if (iA042 == 2 || iA042 == 3) {
                                throw new C08729d(A04(31, 22, 104) + iA042);
                            }
                            break;
                    }
                    break;
                case 5:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 18:
                default:
                    throw new C08729d(A04(0, 31, 107) + iA00);
            }
        }
        int i = A03[iA04];
        HI.A03(i != -1);
        return Pair.create(Integer.valueOf(iA01), Integer.valueOf(i));
    }

    public static Pair<Integer, Integer> A03(byte[] bArr) throws C08729d {
        return A02(new C1061Hg(bArr), false);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
            String[] strArr = A01;
            if (strArr[6].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "Dt6";
            strArr2[2] = "OnDLvfdZPAa4wnGN2lHsysDkDPPP1";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{56, 81, 86, 88, 83, 83, 82, 85, 87, 72, 71, 3, 68, 88, 71, 76, 82, 3, 82, 69, 77, 72, 70, 87, 3, 87, 92, 83, 72, Ascii.GS, 3, 53, 78, 83, 85, 80, 80, 79, 82, 84, 69, 68, 0, 69, 80, 35, 79, 78, 70, 73, 71, Ascii.SUB, 0};
        String[] strArr = A01;
        if (strArr[0].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "c3c";
        strArr2[2] = "iYeoIjHtwrae0f23gr6EBkw9G0Kfv";
    }

    public static void A06(C1061Hg c1061Hg, int i, int i2) {
        c1061Hg.A08(1);
        if (c1061Hg.A0F()) {
            c1061Hg.A08(14);
        }
        boolean zA0F = c1061Hg.A0F();
        String[] strArr = A01;
        if (strArr[7].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "nlb";
        strArr2[2] = "S8LKkeIYdF4OoMAzerSloF9wgi0dm";
        if (i2 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i == 6 || i == 20) {
            c1061Hg.A08(3);
        }
        if (zA0F) {
            if (i == 22) {
                String[] strArr3 = A01;
                if (strArr3[0].length() != strArr3[4].length()) {
                    String[] strArr4 = A01;
                    strArr4[6] = "BiS0DBnBbJBeAmhr68B";
                    strArr4[3] = "FFiJeWYvMIC9W9Y4RTY";
                    c1061Hg.A08(16);
                } else {
                    String[] strArr5 = A01;
                    strArr5[7] = "qOSfS5LOAo7Xl2";
                    strArr5[5] = "vocqRDobCtB3dP";
                    c1061Hg.A08(16);
                }
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                c1061Hg.A08(3);
            }
            c1061Hg.A08(1);
        }
    }

    public static byte[] A07(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] A08(byte[] bArr, int i, int i2) {
        byte[] bArr2 = A02;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }
}
