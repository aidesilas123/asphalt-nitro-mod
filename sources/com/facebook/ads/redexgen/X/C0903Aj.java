package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0903Aj {
    public static byte[] A00;
    public static String[] A01 = {"LgmYw98W3bgowMYQY6Q3BawqAxXNUuUl", "GpzgTRDYOaIyAt6xSJRYAk3b6rAdzkZ0", "RtCZFOI40BGARGfB2sOg6MLybkAs9Fzf", "Gx3YqKVlWhsXJsTGKtjglmBlxW0pOlYg", "tq174XAFZe", "aVWuh4A2S2MgQagwT", "vwD2gnTxyUihDEDfn", "xhuYGO7iBGvSpDZMcS9LxFC"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;

    static {
        A06();
        A02 = new int[]{1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
        A03 = new int[]{-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
        A04 = new int[]{64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    }

    public static int A00(ByteBuffer byteBuffer) {
        int i;
        int iPosition = byteBuffer.position();
        switch (byteBuffer.get(iPosition)) {
            case -2:
                i = ((byteBuffer.get(iPosition + 5) & 1) << 6) | ((byteBuffer.get(iPosition + 4) & 252) >> 2);
                break;
            case -1:
                i = ((byteBuffer.get(iPosition + 4) & 7) << 4) | ((byteBuffer.get(iPosition + 7) & 60) >> 2);
                break;
            case 31:
                i = ((byteBuffer.get(iPosition + 5) & 7) << 4) | ((byteBuffer.get(iPosition + 6) & 60) >> 2);
                break;
            default:
                i = ((byteBuffer.get(iPosition + 4) & 1) << 6) | ((byteBuffer.get(iPosition + 5) & 252) >> 2);
                break;
        }
        return (i + 1) * 32;
    }

    public static int A01(byte[] bArr) {
        int i;
        boolean z = false;
        switch (bArr[0]) {
            case -2:
                i = (((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4) | ((bArr[6] & 240) >> 4)) + 1;
                break;
            case -1:
                int i2 = (bArr[7] & 3) << 12;
                int i3 = (bArr[6] & 255) << 4;
                if (A01[1].charAt(17) == 'C') {
                    i = (i2 | i3 | ((bArr[9] & 60) >> 2)) + 1;
                    z = true;
                } else {
                    A01[2] = "MBjMF3o66WyYJ7fC9eQP49KWn3JCWQGt";
                    i = (i2 | i3 | ((bArr[9] & 60) >> 2)) + 1;
                    z = true;
                }
                break;
            case 31:
                int i4 = (bArr[6] & 3) << 12;
                byte b = bArr[7];
                String[] strArr = A01;
                if (strArr[5].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                A01[0] = "meKDaeVMRSRS1vVcwwYXxolxpiaSquNW";
                i = (i4 | ((b & 255) << 4) | ((bArr[8] & 60) >> 2)) + 1;
                z = true;
                break;
            default:
                i = (((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4) | ((bArr[7] & 240) >> 4)) + 1;
                break;
        }
        return z ? (i * 16) / 14 : i;
    }

    public static int A02(byte[] bArr) {
        int i;
        switch (bArr[0]) {
            case -2:
                i = ((bArr[5] & 1) << 6) | ((bArr[4] & 252) >> 2);
                break;
            case -1:
                i = ((bArr[4] & 7) << 4) | ((bArr[7] & 60) >> 2);
                break;
            case 31:
                i = ((bArr[5] & 7) << 4) | ((bArr[6] & 60) >> 2);
                break;
            default:
                byte b = bArr[4];
                String[] strArr = A01;
                if (strArr[5].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[5] = "0rS52mmndmktv37b0";
                strArr2[6] = "cQepkBNQqnKQzzIfS";
                i = ((b & 1) << 6) | ((bArr[5] & 252) >> 2);
                break;
        }
        return (i + 1) * 32;
    }

    public static Format A03(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        C1061Hg c1061HgA04 = A04(bArr);
        c1061HgA04.A08(60);
        int i = A02[c1061HgA04.A04(6)];
        int i2 = A03[c1061HgA04.A04(4)];
        int iA04 = c1061HgA04.A04(5);
        int[] iArr = A04;
        int i3 = iA04 >= iArr.length ? -1 : (iArr[iA04] * 1000) / 2;
        c1061HgA04.A08(10);
        return Format.A07(str, A05(0, 13, 102), null, i3, -1, i + (c1061HgA04.A04(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }

    public static C1061Hg A04(byte[] bArr) {
        if (bArr[0] == 127) {
            return new C1061Hg(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (A08(bArrCopyOf)) {
            for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                byte b = bArrCopyOf[i];
                bArrCopyOf[i] = bArrCopyOf[i + 1];
                bArrCopyOf[i + 1] = b;
            }
        }
        C1061Hg c1061Hg = new C1061Hg(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            C1061Hg c1061Hg2 = new C1061Hg(bArrCopyOf);
            while (c1061Hg2.A01() >= 16) {
                c1061Hg2.A08(2);
                c1061Hg.A0A(c1061Hg2.A04(14), 14);
            }
        }
        c1061Hg.A0B(bArrCopyOf);
        return c1061Hg;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{65, 85, 68, 73, 79, Ascii.SI, 86, 78, 68, Ascii.SO, 68, 84, 83};
    }

    public static boolean A07(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    public static boolean A08(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }
}
