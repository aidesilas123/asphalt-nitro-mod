package com.applovin.exoplayer2.f;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ai;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public final String Hr;

    @Nullable
    public final MediaCodecInfo.CodecCapabilities Hs;
    public final boolean Ht;
    public final boolean Hu;
    public final boolean Hv;
    public final boolean Hw;
    public final boolean Hx;
    private final boolean Hy;
    public final String eg;
    public final boolean hi;
    public final String name;

    @VisibleForTesting
    i(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.name = (String) com.applovin.exoplayer2.l.a.checkNotNull(str);
        this.eg = str2;
        this.Hr = str3;
        this.Hs = codecCapabilities;
        this.Hv = z;
        this.Hw = z2;
        this.Hx = z3;
        this.Ht = z4;
        this.hi = z5;
        this.Hu = z6;
        this.Hy = com.applovin.exoplayer2.l.u.aX(str2);
    }

    private void K(String str) {
        com.applovin.exoplayer2.l.q.f(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.name + ", " + this.eg + "] [" + ai.acZ + o2.i.f6491e);
    }

    private void L(String str) {
        com.applovin.exoplayer2.l.q.f(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.name + ", " + this.eg + "] [" + ai.acZ + o2.i.f6491e);
    }

    private static boolean M(String str) {
        if (ai.acV <= 22) {
            String str2 = ai.acY;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static boolean N(String str) {
        return ai.acY.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean O(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static final boolean P(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(ai.acW)) ? false : true;
    }

    private static int a(String str, String str2, int i) {
        if (i > 1 || ((ai.acV >= 26 && i > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i;
        }
        int i2 = MimeTypes.AUDIO_AC3.equals(str2) ? 6 : MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        com.applovin.exoplayer2.l.q.h(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + o2.i.f6491e);
        return i2;
    }

    @RequiresApi(21)
    private static Point a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(ai.N(i, widthAlignment) * widthAlignment, ai.N(i2, heightAlignment) * heightAlignment);
    }

    public static i a(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new i(str, str2, str3, codecCapabilities, z, z2, z3, (z4 || codecCapabilities == null || !a(codecCapabilities) || M(str)) ? false : true, codecCapabilities != null && c(codecCapabilities), z5 || (codecCapabilities != null && e(codecCapabilities)));
    }

    private static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.acV >= 19 && b(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        Point pointA = a(videoCapabilities, i, i2);
        int i3 = pointA.x;
        int i4 = pointA.y;
        return (d2 == -1.0d || d2 < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d2));
    }

    @RequiresApi(19)
    private static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.acV >= 21 && d(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private static boolean e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.acV >= 21 && f(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static MediaCodecInfo.CodecProfileLevel[] g(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        int i = iIntValue >= 180000000 ? 1024 : iIntValue >= 120000000 ? 512 : iIntValue >= 60000000 ? 256 : iIntValue >= 30000000 ? 128 : iIntValue >= 18000000 ? 64 : iIntValue >= 12000000 ? 32 : iIntValue >= 7200000 ? 16 : iIntValue >= 3600000 ? 8 : iIntValue >= 1800000 ? 4 : iIntValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    @Nullable
    @RequiresApi(21)
    public Point D(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.Hs;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return a(videoCapabilities, i, i2);
    }

    public com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v vVar2) {
        int i = !ai.r(vVar.dz, vVar2.dz) ? 8 : 0;
        if (this.Hy) {
            if (vVar.dG != vVar2.dG) {
                i |= 1024;
            }
            if (!this.Ht && (vVar.dE != vVar2.dE || vVar.height != vVar2.height)) {
                i |= 512;
            }
            if (!ai.r(vVar.dK, vVar2.dK)) {
                i |= 2048;
            }
            if (N(this.name) && !vVar.a(vVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.applovin.exoplayer2.c.h(this.name, vVar, vVar2, vVar.a(vVar2) ? 3 : 2, 0);
            }
        } else {
            if (vVar.dL != vVar2.dL) {
                i |= 4096;
            }
            if (vVar.dM != vVar2.dM) {
                i |= 8192;
            }
            if (vVar.dN != vVar2.dN) {
                i |= 16384;
            }
            if (i == 0 && MimeTypes.AUDIO_AAC.equals(this.eg)) {
                Pair<Integer, Integer> pairR = l.r(vVar);
                Pair<Integer, Integer> pairR2 = l.r(vVar2);
                if (pairR != null && pairR2 != null) {
                    int iIntValue = ((Integer) pairR.first).intValue();
                    int iIntValue2 = ((Integer) pairR2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new com.applovin.exoplayer2.c.h(this.name, vVar, vVar2, 3, 0);
                    }
                }
            }
            if (!vVar.a(vVar2)) {
                i |= 32;
            }
            if (O(this.eg)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.applovin.exoplayer2.c.h(this.name, vVar, vVar2, 1, 0);
            }
        }
        return new com.applovin.exoplayer2.c.h(this.name, vVar, vVar2, 0, i);
    }

    @RequiresApi(21)
    public boolean a(int i, int i2, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.Hs;
        if (codecCapabilities == null) {
            K("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            K("sizeAndRate.vCaps");
            return false;
        }
        if (a(videoCapabilities, i, i2, d2)) {
            return true;
        }
        if (i < i2 && P(this.name) && a(videoCapabilities, i2, i, d2)) {
            L("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d2);
            return true;
        }
        K("sizeAndRate.support, " + i + "x" + i2 + "x" + d2);
        return false;
    }

    @RequiresApi(21)
    public boolean cS(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.Hs;
        if (codecCapabilities == null) {
            K("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            K("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        }
        K("sampleRate.support, " + i);
        return false;
    }

    @RequiresApi(21)
    public boolean cT(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.Hs;
        if (codecCapabilities == null) {
            K("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            K("channelCount.aCaps");
            return false;
        }
        if (a(this.name, this.eg, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        }
        K("channelCount.support, " + i);
        return false;
    }

    public MediaCodecInfo.CodecProfileLevel[] jV() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.Hs;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean jW() {
        if (ai.acV >= 29 && MimeTypes.VIDEO_VP9.equals(this.eg)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : jV()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean l(com.applovin.exoplayer2.v vVar) throws l.b {
        int i;
        if (!m(vVar)) {
            return false;
        }
        if (!this.Hy) {
            if (ai.acV >= 21) {
                int i2 = vVar.dM;
                if (i2 != -1 && !cS(i2)) {
                    return false;
                }
                int i3 = vVar.dL;
                if (i3 != -1 && !cT(i3)) {
                    return false;
                }
            }
            return true;
        }
        int i4 = vVar.dE;
        if (i4 <= 0 || (i = vVar.height) <= 0) {
            return true;
        }
        if (ai.acV >= 21) {
            return a(i4, i, vVar.dF);
        }
        boolean z = i4 * i <= l.kz();
        if (!z) {
            K("legacyFrameSize, " + vVar.dE + "x" + vVar.height);
        }
        return z;
    }

    public boolean m(com.applovin.exoplayer2.v vVar) {
        String strAZ;
        String str = vVar.dw;
        if (str == null || this.eg == null || (strAZ = com.applovin.exoplayer2.l.u.aZ(str)) == null) {
            return true;
        }
        if (!this.eg.equals(strAZ)) {
            K("codec.mime " + vVar.dw + ", " + strAZ);
            return false;
        }
        Pair<Integer, Integer> pairR = l.r(vVar);
        if (pairR == null) {
            return true;
        }
        int iIntValue = ((Integer) pairR.first).intValue();
        int iIntValue2 = ((Integer) pairR.second).intValue();
        if (!this.Hy && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrJV = jV();
        if (ai.acV <= 23 && MimeTypes.VIDEO_VP9.equals(this.eg) && codecProfileLevelArrJV.length == 0) {
            codecProfileLevelArrJV = g(this.Hs);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrJV) {
            if (codecProfileLevel.profile == iIntValue && codecProfileLevel.level >= iIntValue2) {
                return true;
            }
        }
        K("codec.profileLevel, " + vVar.dw + ", " + strAZ);
        return false;
    }

    public boolean n(com.applovin.exoplayer2.v vVar) {
        if (this.Hy) {
            return this.Ht;
        }
        Pair<Integer, Integer> pairR = l.r(vVar);
        return pairR != null && ((Integer) pairR.first).intValue() == 42;
    }

    public String toString() {
        return this.name;
    }
}
