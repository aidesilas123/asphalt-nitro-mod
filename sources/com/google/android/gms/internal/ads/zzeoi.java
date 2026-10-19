package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeoi implements zzgax {
    final /* synthetic */ zzeob zza;
    final /* synthetic */ zzfkh zzb;
    final /* synthetic */ zzfjw zzc;
    final /* synthetic */ zzdiu zzd;
    final /* synthetic */ zzeoj zze;

    zzeoi(zzeoj zzeojVar, zzeob zzeobVar, zzfkh zzfkhVar, zzfjw zzfjwVar, zzdiu zzdiuVar) {
        this.zze = zzeojVar;
        this.zza = zzeobVar;
        this.zzb = zzfkhVar;
        this.zzc = zzfjwVar;
        this.zzd = zzdiuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzfkh zzfkhVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarZza = this.zzd.zza().zza(th);
        this.zzd.zzb().zzbG(zzeVarZza);
        this.zze.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoh
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze.zzd.zza().zzbG(zzeVarZza);
            }
        });
        zzffl.zzb(zzeVarZza.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (((Boolean) zzbeo.zzc.zze()).booleanValue() && (zzfkhVar = this.zzb) != null) {
            zzfkhVar.zzc(zzeVarZza);
            zzfjw zzfjwVar = this.zzc;
            zzfjwVar.zzg(th);
            zzfjwVar.zzf(false);
            zzfkhVar.zza(zzfjwVar);
            zzfkhVar.zzg();
            return;
        }
        zzeoj zzeojVar = this.zze;
        zzfjw zzfjwVar2 = this.zzc;
        zzfkk zzfkkVar = zzeojVar.zze;
        zzfjwVar2.zza(zzeVarZza);
        zzfjwVar2.zzg(th);
        zzfjwVar2.zzf(false);
        zzfkkVar.zzb(zzfjwVar2.zzl());
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfkh zzfkhVar;
        zzctr zzctrVar = (zzctr) obj;
        synchronized (this.zze) {
            zzctrVar.zzn().zza(this.zze.zzd.zzd());
            this.zza.zzb(zzctrVar);
            this.zze.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeog
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zze.zzd.zzb().zzr();
                }
            });
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zze;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zzb(zzctrVar.zzp().zzb);
                zzfjwVar.zzd(zzctrVar.zzl().zzg());
                zzfjwVar.zzf(true);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzf(zzctrVar.zzp().zzb);
                zzfkhVar.zze(zzctrVar.zzl().zzg());
                zzfjw zzfjwVar2 = this.zzc;
                zzfjwVar2.zzf(true);
                zzfkhVar.zza(zzfjwVar2);
                zzfkhVar.zzg();
            }
        }
    }
}
