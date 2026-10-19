package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdkd implements zzgax {
    final /* synthetic */ String zza = "Google";
    final /* synthetic */ zzdkf zzb;

    zzdkd(zzdkf zzdkfVar, String str, boolean z) {
        this.zzb = zzdkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfa)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(th, "omid native display exp");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zzb.zze.zzT((zzcgv) obj);
        zzdkf zzdkfVar = this.zzb;
        zzccf zzccfVarZzp = zzdkfVar.zze.zzp();
        zzflf zzflfVarZzf = zzdkfVar.zzf(this.zza, true);
        if (zzflfVarZzf != null && zzccfVarZzp != null) {
            zzccfVarZzp.zzc(zzflfVarZzf);
        } else if (zzccfVarZzp != null) {
            zzccfVarZzp.cancel(false);
        }
    }
}
