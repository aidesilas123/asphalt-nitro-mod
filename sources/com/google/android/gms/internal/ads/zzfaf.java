package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfaf implements zzgax {
    final /* synthetic */ zzeob zza;
    final /* synthetic */ zzfkh zzb;
    final /* synthetic */ zzfjw zzc;
    final /* synthetic */ zzcsm zzd;
    final /* synthetic */ zzfag zze;

    zzfaf(zzfag zzfagVar, zzeob zzeobVar, zzfkh zzfkhVar, zzfjw zzfjwVar, zzcsm zzcsmVar) {
        this.zze = zzfagVar;
        this.zza = zzeobVar;
        this.zzb = zzfkhVar;
        this.zzc = zzfjwVar;
        this.zzd = zzcsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzfkh zzfkhVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarZza = this.zzd.zzd().zza(th);
        synchronized (this.zze) {
            this.zze.zzl = null;
            this.zzd.zzf().zzbG(zzeVarZza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhY)).booleanValue()) {
                this.zze.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfad
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zze.zzd.zzbG(zzeVarZza);
                    }
                });
            }
            zzfag zzfagVar = this.zze;
            zzfagVar.zzh.zzd(zzfagVar.zzj.zzc());
            zzffl.zzb(zzeVarZza.zza, th, "BannerAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzi;
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
        zzcrp zzcrpVar = (zzcrp) obj;
        synchronized (this.zze) {
            this.zze.zzl = null;
            this.zze.zzf.removeAllViews();
            if (zzcrpVar.zzc() != null) {
                ViewParent parent = zzcrpVar.zzc().getParent();
                if (parent instanceof ViewGroup) {
                    zzcbn.zzj("Banner view provided from " + (zzcrpVar.zzl() != null ? zzcrpVar.zzl().zzg() : "") + " already has a parent view. Removing its old parent.");
                    ((ViewGroup) parent).removeView(zzcrpVar.zzc());
                }
            }
            zzbcu zzbcuVar = zzbdc.zzhY;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                zzdcm zzdcmVarZzn = zzcrpVar.zzn();
                zzdcmVarZzn.zza(this.zze.zzd);
                zzdcmVarZzn.zzc(this.zze.zze);
            }
            this.zze.zzf.addView(zzcrpVar.zzc());
            this.zza.zzb(zzcrpVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                zzfag zzfagVar = this.zze;
                Executor executor = zzfagVar.zzb;
                final zzenm zzenmVar = zzfagVar.zzd;
                zzenmVar.getClass();
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfae
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzenmVar.zzr();
                    }
                });
            }
            this.zze.zzh.zzd(zzcrpVar.zza());
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfkhVar = this.zzb) == null) {
                zzfkk zzfkkVar = this.zze.zzi;
                zzfjw zzfjwVar = this.zzc;
                zzfjwVar.zzb(zzcrpVar.zzp().zzb);
                zzfjwVar.zzd(zzcrpVar.zzl().zzg());
                zzfjwVar.zzf(true);
                zzfkkVar.zzb(zzfjwVar.zzl());
            } else {
                zzfkhVar.zzf(zzcrpVar.zzp().zzb);
                zzfkhVar.zze(zzcrpVar.zzl().zzg());
                zzfjw zzfjwVar2 = this.zzc;
                zzfjwVar2.zzf(true);
                zzfkhVar.zza(zzfjwVar2);
                zzfkhVar.zzg();
            }
        }
    }
}
