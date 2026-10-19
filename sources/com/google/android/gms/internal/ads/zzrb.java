package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzrb implements zzps {
    final /* synthetic */ zzrc zza;

    /* synthetic */ zzrb(zzrc zzrcVar, zzra zzraVar) {
        this.zza = zzrcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(Exception exc) {
        zzez.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        this.zza.zzc.zzb(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zzb() {
        zzrc zzrcVar = this.zza;
        if (zzrcVar.zzl != null) {
            zzrcVar.zzl.zzb();
        }
    }
}
