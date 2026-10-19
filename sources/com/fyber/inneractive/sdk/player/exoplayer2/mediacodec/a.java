package com.fyber.inneractive.sdk.player.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.o2;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class a {
    public final String a;
    public final boolean b;
    public final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f2480e;

    public a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z) {
        this.a = (String) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(str);
        this.f2479d = str2;
        this.f2480e = codecCapabilities;
        this.b = (z || codecCapabilities == null || !a(codecCapabilities)) ? false : true;
        this.c = codecCapabilities != null && b(codecCapabilities);
    }

    public static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return u.a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    @TargetApi(21)
    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        return (d2 == -1.0d || d2 <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d2);
    }

    public static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return u.a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    public final void a(String str) {
        Log.d(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.a + ", " + this.f2479d + "] [" + u.f2616e + o2.i.f6491e);
    }

    @TargetApi(21)
    public boolean a(int i, int i2, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2480e;
        if (codecCapabilities == null) {
            a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            a("sizeAndRate.vCaps");
            return false;
        }
        if (a(videoCapabilities, i, i2, d2)) {
            return true;
        }
        if (i >= i2 || !a(videoCapabilities, i2, i, d2)) {
            a("sizeAndRate.support, " + i + "x" + i2 + "x" + d2);
            return false;
        }
        Log.d(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d2) + "] [" + this.a + ", " + this.f2479d + "] [" + u.f2616e + o2.i.f6491e);
        return true;
    }
}
