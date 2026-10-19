package com.applovin.exoplayer2.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.l.ai;
import com.json.o2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e jJ = new e(new int[]{2}, 8);
    private static final e jK = new e(new int[]{2, 5, 6}, 8);
    private static final int[] jL = {5, 6, 18, 17, 14, 7, 8};
    private final int[] jM;
    private final int jN;

    @RequiresApi(29)
    private static final class a {
        public static int[] dF() {
            s.a aVarGc = com.applovin.exoplayer2.common.a.s.gc();
            for (int i : e.jL) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(i).setSampleRate(48000).build(), new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    aVarGc.t(Integer.valueOf(i));
                }
            }
            aVarGc.t(2);
            return com.applovin.exoplayer2.common.b.c.f(aVarGc.gd());
        }
    }

    public e(@Nullable int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.jM = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.jM = new int[0];
        }
        this.jN = i;
    }

    @SuppressLint({"InlinedApi"})
    static e a(Context context, @Nullable Intent intent) {
        return (dD() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) ? jK : (ai.acV < 29 || !ai.isTv(context)) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? jJ : new e(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : new e(a.dF(), 8);
    }

    public static e d(Context context) {
        return a(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    private static boolean dD() {
        if (ai.acV >= 17) {
            String str = ai.acX;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean av(int i) {
        return Arrays.binarySearch(this.jM, i) >= 0;
    }

    public int dC() {
        return this.jN;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Arrays.equals(this.jM, eVar.jM) && this.jN == eVar.jN;
    }

    public int hashCode() {
        return this.jN + (Arrays.hashCode(this.jM) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.jN + ", supportedEncodings=" + Arrays.toString(this.jM) + o2.i.f6491e;
    }
}
