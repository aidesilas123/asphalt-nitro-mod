package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzccs implements Runnable {
    final /* synthetic */ MediaPlayer zza;
    final /* synthetic */ zzcda zzb;

    zzccs(zzcda zzcdaVar, MediaPlayer mediaPlayer) {
        this.zzb = zzcdaVar;
        this.zza = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcda.zzl(this.zzb, this.zza);
        zzcda zzcdaVar = this.zzb;
        if (zzcdaVar.zzq != null) {
            zzcdaVar.zzq.zzf();
        }
    }
}
