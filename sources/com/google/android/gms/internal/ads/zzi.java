package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(21)
public final class zzi {
    public final AudioAttributes zza;

    /* synthetic */ zzi(zzk zzkVar, zzh zzhVar) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i = zzfs.zza;
        if (i >= 29) {
            zzf.zza(usage, 1);
        }
        if (i >= 32) {
            zzg.zza(usage, 0);
        }
        this.zza = usage.build();
    }
}
