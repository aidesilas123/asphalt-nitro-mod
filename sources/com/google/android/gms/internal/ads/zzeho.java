package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeho implements zzgax {
    final /* synthetic */ zzehp zza;

    zzeho(zzehp zzehpVar) {
        this.zza = zzehpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zzeVarZza = this.zza.zza.zzd().zza(th);
        this.zza.zzd.zzbG(zzeVarZza);
        zzffl.zzb(zzeVarZza.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* synthetic */ void zzb(Object obj) {
        ((zzcrp) obj).zzj();
    }
}
