package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(29)
final class zzqb {
    @DoNotInline
    public static zzpa zza(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return zzpa.zza;
        }
        zzoy zzoyVar = new zzoy();
        zzoyVar.zza(true);
        zzoyVar.zzc(z);
        return zzoyVar.zzd();
    }
}
