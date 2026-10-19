package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeoj implements zzeoc {
    private final zzfeo zza;
    private final zzciq zzb;
    private final Context zzc;
    private final zzenz zzd;
    private final zzfkk zze;

    @Nullable
    private zzcug zzf;

    public zzeoj(zzciq zzciqVar, Context context, zzenz zzenzVar, zzfeo zzfeoVar) {
        this.zzb = zzciqVar;
        this.zzc = context;
        this.zzd = zzenzVar;
        this.zza = zzfeoVar;
        this.zze = zzciqVar.zzz();
        zzfeoVar.zzu(zzenzVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zza() {
        zzcug zzcugVar = this.zzf;
        return zzcugVar != null && zzcugVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeoa zzeoaVar, zzeob zzeobVar) throws RemoteException {
        zzfkh zzfkhVar;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zzc) && zzlVar.zzs == null) {
            zzcbn.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoe
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzf();
                }
            });
            return false;
        }
        if (str == null) {
            zzcbn.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeof
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzg();
                }
            });
            return false;
        }
        zzffl.zza(this.zzc, zzlVar.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziJ)).booleanValue() && zzlVar.zzf) {
            this.zzb.zzk().zzn(true);
        }
        int i = ((zzeod) zzeoaVar).zza;
        zzfeo zzfeoVar = this.zza;
        zzfeoVar.zzE(zzlVar);
        zzfeoVar.zzz(i);
        Context context = this.zzc;
        zzfeq zzfeqVarZzG = zzfeoVar.zzG();
        zzfjw zzfjwVarZzb = zzfjv.zzb(context, zzfkg.zzf(zzfeqVarZzG), 8, zzlVar);
        com.google.android.gms.ads.internal.client.zzcb zzcbVar = zzfeqVarZzG.zzn;
        if (zzcbVar != null) {
            this.zzd.zzd().zzm(zzcbVar);
        }
        zzdit zzditVarZzh = this.zzb.zzh();
        zzcxp zzcxpVar = new zzcxp();
        zzcxpVar.zze(this.zzc);
        zzcxpVar.zzi(zzfeqVarZzG);
        zzditVarZzh.zzf(zzcxpVar.zzj());
        zzddw zzddwVar = new zzddw();
        zzddwVar.zzk(this.zzd.zzd(), this.zzb.zzB());
        zzditVarZzh.zze(zzddwVar.zzn());
        zzditVarZzh.zzd(this.zzd.zzc());
        zzditVarZzh.zzc(new zzcrm(null));
        zzdiu zzdiuVarZzg = zzditVarZzh.zzg();
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzfkh zzfkhVarZzf = zzdiuVarZzg.zzf();
            zzfkhVarZzf.zzh(8);
            zzfkhVarZzf.zzb(zzlVar.zzp);
            zzfkhVar = zzfkhVarZzf;
        } else {
            zzfkhVar = null;
        }
        this.zzb.zzx().zzc(1);
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        ScheduledExecutorService scheduledExecutorServiceZzC = this.zzb.zzC();
        zzcuz zzcuzVarZza = zzdiuVarZzg.zza();
        zzcug zzcugVar = new zzcug(zzgblVar, scheduledExecutorServiceZzC, zzcuzVarZza.zzi(zzcuzVarZza.zzj()));
        this.zzf = zzcugVar;
        zzcugVar.zze(new zzeoi(this, zzeobVar, zzfkhVar, zzfjwVarZzb, zzdiuVarZzg));
        return true;
    }

    final /* synthetic */ void zzf() {
        this.zzd.zza().zzbG(zzffr.zzd(4, null, null));
    }

    final /* synthetic */ void zzg() {
        this.zzd.zza().zzbG(zzffr.zzd(6, null, null));
    }
}
