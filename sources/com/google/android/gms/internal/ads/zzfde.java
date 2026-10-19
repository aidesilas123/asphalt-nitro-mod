package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfde implements zzgax {
    final /* synthetic */ zzeob zza;
    final /* synthetic */ zzfkh zzb;
    final /* synthetic */ zzfjw zzc;
    final /* synthetic */ zzfdg zzd;
    final /* synthetic */ zzfdh zze;

    zzfde(zzfdh zzfdhVar, zzeob zzeobVar, zzfkh zzfkhVar, zzfjw zzfjwVar, zzfdg zzfdgVar) {
        this.zze = zzfdhVar;
        this.zza = zzeobVar;
        this.zzb = zzfkhVar;
        this.zzc = zzfjwVar;
        this.zzd = zzfdgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzfkh zzfkhVar;
        zzdqd zzdqdVar = (zzdqd) this.zze.zze.zzd();
        final com.google.android.gms.ads.internal.client.zze zzeVarZzb = zzdqdVar == null ? zzffr.zzb(th, null) : zzdqdVar.zzb().zza(th);
        synchronized (this.zze) {
            if (zzdqdVar != null) {
                zzdqdVar.zza().zzbG(zzeVarZzb);
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdc
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zzd.zzbG(zzeVarZzb);
                    }
                });
            } else {
                this.zze.zzd.zzbG(zzeVarZzb);
                this.zze.zzk(this.zzd).zzh().zzb().zzc().zzh();
            }
            zzffl.zzb(zzeVarZzb.zza, th, "RewardedAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzg;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zza(zzeVarZzb);
                zzfjwVar.zzg(th);
                zzfjwVar.zzf(false);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzc(zzeVarZzb);
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
        zzdpy zzdpyVar = (zzdpy) obj;
        synchronized (this.zze) {
            zzdpyVar.zzn().zzd(this.zze.zzd);
            this.zza.zzb(zzdpyVar);
            zzfdh zzfdhVar = this.zze;
            Executor executor = zzfdhVar.zzb;
            final zzfcx zzfcxVar = zzfdhVar.zzd;
            zzfcxVar.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdd
                @Override // java.lang.Runnable
                public final void run() {
                    zzfcxVar.zzr();
                }
            });
            this.zze.zzd.onAdMetadataChanged();
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzg;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zzb(zzdpyVar.zzp().zzb);
                zzfjwVar.zzd(zzdpyVar.zzl().zzg());
                zzfjwVar.zzf(true);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzf(zzdpyVar.zzp().zzb);
                zzfkhVar.zze(zzdpyVar.zzl().zzg());
                zzfjw zzfjwVar2 = this.zzc;
                zzfjwVar2.zzf(true);
                zzfkhVar.zza(zzfjwVar2);
                zzfkhVar.zzg();
            }
        }
    }
}
