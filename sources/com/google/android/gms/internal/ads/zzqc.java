package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(31)
final class zzqc {
    @DoNotInline
    public static zzpa zza(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return zzpa.zza;
        }
        zzoy zzoyVar = new zzoy();
        boolean z2 = false;
        if (zzfs.zza > 32 && playbackOffloadSupport == 2) {
            z2 = true;
        }
        zzoyVar.zza(true);
        zzoyVar.zzb(z2);
        zzoyVar.zzc(z);
        return zzoyVar.zzd();
    }
}
