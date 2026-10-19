package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzccl implements zzgax {
    final /* synthetic */ zzccj zza;
    final /* synthetic */ zzcch zzb;

    zzccl(zzccm zzccmVar, zzccj zzccjVar, zzcch zzcchVar) {
        this.zza = zzccjVar;
        this.zzb = zzcchVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb(@Nullable Object obj) {
        this.zza.zza(obj);
    }
}
