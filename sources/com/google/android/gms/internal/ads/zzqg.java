package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(23)
final class zzqg {
    @DoNotInline
    public static void zza(AudioTrack audioTrack, @Nullable zzqi zzqiVar) {
        audioTrack.setPreferredDevice(zzqiVar == null ? null : zzqiVar.zza);
    }
}
