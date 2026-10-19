package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfbw implements zzgax {
    final /* synthetic */ zzeob zza;
    final /* synthetic */ zzfkh zzb;
    final /* synthetic */ zzfjw zzc;
    final /* synthetic */ zzdhy zzd;
    final /* synthetic */ zzfbx zze;

    zzfbw(zzfbx zzfbxVar, zzeob zzeobVar, zzfkh zzfkhVar, zzfjw zzfjwVar, zzdhy zzdhyVar) {
        this.zze = zzfbxVar;
        this.zza = zzeobVar;
        this.zzb = zzfkhVar;
        this.zzc = zzfjwVar;
        this.zzd = zzdhyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzfkh zzfkhVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarZza = this.zzd.zza().zza(th);
        synchronized (this.zze) {
            this.zze.zzi = null;
            this.zzd.zzb().zzbG(zzeVarZza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzia)).booleanValue()) {
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbs
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zzd.zzbG(zzeVarZza);
                    }
                });
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbt
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zze.zzbG(zzeVarZza);
                    }
                });
            }
            zzffl.zzb(zzeVarZza.zza, th, "InterstitialAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzg;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zza(zzeVarZza);
                zzfjwVar.zzg(th);
                zzfjwVar.zzf(false);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzc(zzeVarZza);
                zzfjw zzfjwVar2 = this.zzc;
                zzfjwVar2.zzg(th);
                zzfjwVar2.zzf(false);
                zzfkhVar.zza(zzfjwVar2);
                zzfkhVar.zzg();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfkh zzfkhVar;
        zzdgx zzdgxVar = (zzdgx) obj;
        synchronized (this.zze) {
            this.zze.zzi = null;
            zzbcu zzbcuVar = zzbdc.zzia;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                zzdcm zzdcmVarZzn = zzdgxVar.zzn();
                zzdcmVarZzn.zza(this.zze.zzd);
                zzdcmVarZzn.zzd(this.zze.zze);
            }
            this.zza.zzb(zzdgxVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbu
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zzd.zzr();
                    }
                });
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbv
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zze.zzr();
                    }
                });
            }
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzg;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zzb(zzdgxVar.zzp().zzb);
                zzfjwVar.zzd(zzdgxVar.zzl().zzg());
                zzfjwVar.zzf(true);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzf(zzdgxVar.zzp().zzb);
                zzfkhVar.zze(zzdgxVar.zzl().zzg());
                zzfjw zzfjwVar2 = this.zzc;
                zzfjwVar2.zzf(true);
                zzfkhVar.zza(zzfjwVar2);
                zzfkhVar.zzg();
            }
        }
    }
}
