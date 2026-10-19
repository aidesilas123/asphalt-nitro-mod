package com.fyber.inneractive.sdk.player.exoplayer2.extractor;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.gameloft.adsmanager.JavaUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public static final String[] h = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    public static final int[] i = {44100, 48000, 32000};
    public static final int[] j = {32, 64, 96, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 288, JavaUtils.Constants.BANNER_WIDTH_DP, 352, 384, TypedValues.CycleType.TYPE_PATH_ROTATE, 448};
    public static final int[] k = {32, 48, 56, 64, 80, 96, 112, 128, 144, 160, 176, PsExtractor.AUDIO_STREAM, 224, 256};
    public static final int[] l = {32, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, JavaUtils.Constants.BANNER_WIDTH_DP, 384};
    public static final int[] m = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, JavaUtils.Constants.BANNER_WIDTH_DP};
    public static final int[] n = {8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160};
    public int a;
    public String b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2296g;

    public static int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = i[i6];
        if (i3 == 2) {
            i7 /= 2;
        } else if (i3 == 0) {
            i7 /= 4;
        }
        int i8 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? j[i5 - 1] : k[i5 - 1]) * 12000) / i7) + i8) * 4;
        }
        int i9 = i3 == 3 ? i4 == 2 ? l[i5 - 1] : m[i5 - 1] : n[i5 - 1];
        if (i3 == 3) {
            return ((i9 * 144000) / i7) + i8;
        }
        return (((i4 == 1 ? DefaultOggSeeker.MATCH_RANGE : 144000) * i9) / i7) + i8;
    }

    public static boolean a(int i2, k kVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return false;
        }
        int i10 = i[i6];
        if (i3 == 2) {
            i10 /= 2;
        } else if (i3 == 0) {
            i10 /= 4;
        }
        int i11 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            i7 = i3 == 3 ? j[i5 - 1] : k[i5 - 1];
            i9 = (((i7 * 12000) / i10) + i11) * 4;
            i = 384;
        } else {
            if (i3 == 3) {
                i7 = i4 == 2 ? l[i5 - 1] : m[i5 - 1];
                i8 = (144000 * i7) / i10;
            } else {
                i7 = n[i5 - 1];
                i = i4 == 1 ? 576 : 1152;
                i8 = ((i4 == 1 ? DefaultOggSeeker.MATCH_RANGE : 144000) * i7) / i10;
            }
            i9 = i11 + i8;
        }
        String str = h[3 - i4];
        int i12 = ((i2 >> 6) & 3) == 3 ? 1 : 2;
        kVar.a = i3;
        kVar.b = str;
        kVar.c = i9;
        kVar.f2293d = i10;
        kVar.f2294e = i12;
        kVar.f2295f = i7 * 1000;
        kVar.f2296g = i;
        return true;
    }
}
