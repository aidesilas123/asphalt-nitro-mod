package com.applovin.exoplayer2.b;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    private static final String[] mA = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] mB = {44100, 48000, 32000};
    private static final int[] mC = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] mD = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
    private static final int[] mE = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
    private static final int[] mF = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    private static final int[] mG = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    public static final class a {
        public int dM;
        public int dv;

        @Nullable
        public String eg;
        public int jz;
        public int mH;
        public int mI;
        public int mJ;

        public boolean aK(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            if (!r.aI(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.mH = i2;
            this.eg = r.mA[3 - i3];
            int i6 = r.mB[i5];
            this.dM = i6;
            if (i2 == 2) {
                this.dM = i6 / 2;
            } else if (i2 == 0) {
                this.dM = i6 / 4;
            }
            int i7 = (i >>> 9) & 1;
            this.mJ = r.l(i2, i3);
            if (i3 == 3) {
                int i8 = i2 == 3 ? r.mC[i4 - 1] : r.mD[i4 - 1];
                this.dv = i8;
                this.jz = (((i8 * 12) / this.dM) + i7) * 4;
            } else {
                if (i2 == 3) {
                    int i9 = i3 == 2 ? r.mE[i4 - 1] : r.mF[i4 - 1];
                    this.dv = i9;
                    this.jz = ((i9 * 144) / this.dM) + i7;
                } else {
                    int i10 = r.mG[i4 - 1];
                    this.dv = i10;
                    this.jz = (((i3 == 1 ? 72 : 144) * i10) / this.dM) + i7;
                }
            }
            this.mI = ((i >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int aG(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (!aI(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i6 = mB[i5];
        if (i2 == 2) {
            i6 /= 2;
        } else if (i2 == 0) {
            i6 /= 4;
        }
        int i7 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? mC[i4 - 1] : mD[i4 - 1]) * 12) / i6) + i7) * 4;
        }
        int i8 = i2 == 3 ? i3 == 2 ? mE[i4 - 1] : mF[i4 - 1] : mG[i4 - 1];
        if (i2 == 3) {
            return ((i8 * 144) / i6) + i7;
        }
        return (((i3 == 1 ? 72 : 144) * i8) / i6) + i7;
    }

    public static int aH(int i) {
        int i2;
        int i3;
        if (!aI(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 == 0 || i4 == 15 || i5 == 3) {
            return -1;
        }
        return l(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean aI(int i) {
        return (i & (-2097152)) == -2097152;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        }
        if (i2 == 2) {
            return 1152;
        }
        if (i2 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }
}
