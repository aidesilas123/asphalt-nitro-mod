package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfbx implements zzeoc {
    private final Context zza;
    private final Executor zzb;
    private final zzciq zzc;
    private final zzenm zzd;
    private final zzfcx zze;

    @Nullable
    private zzbea zzf;
    private final zzfkk zzg;
    private final zzfeo zzh;
    private h0 zzi;

    public zzfbx(Context context, Executor executor, zzciq zzciqVar, zzenm zzenmVar, zzfcx zzfcxVar, zzfeo zzfeoVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzciqVar;
        this.zzd = zzenmVar;
        this.zzh = zzfeoVar;
        this.zze = zzfcxVar;
        this.zzg = zzciqVar.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zza() {
        h0 h0Var = this.zzi;
        return (h0Var == null || h0Var.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeoa zzeoaVar, zzeob zzeobVar) {
        zzdhy zzdhyVarZzf;
        zzfkh zzfkhVar;
        if (str == null) {
            zzcbn.zzg("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbr
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzh();
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziJ)).booleanValue() && zzlVar.zzf) {
            this.zzc.zzk().zzn(true);
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar = ((zzfbq) zzeoaVar).zza;
        zzfeo zzfeoVar = this.zzh;
        zzfeoVar.zzs(str);
        zzfeoVar.zzr(zzqVar);
        zzfeoVar.zzE(zzlVar);
        Context context = this.zza;
        zzfeq zzfeqVarZzG = zzfeoVar.zzG();
        zzfjw zzfjwVarZzb = zzfjv.zzb(context, zzfkg.zzf(zzfeqVarZzG), 4, zzlVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzia)).booleanValue()) {
            zzdhx zzdhxVarZzg = this.zzc.zzg();
            zzcxp zzcxpVar = new zzcxp();
            zzcxpVar.zze(this.zza);
            zzcxpVar.zzi(zzfeqVarZzG);
            zzdhxVarZzg.zze(zzcxpVar.zzj());
            zzddw zzddwVar = new zzddw();
            zzddwVar.zzj(this.zzd, this.zzb);
            zzddwVar.zzk(this.zzd, this.zzb);
            zzdhxVarZzg.zzd(zzddwVar.zzn());
            zzdhxVarZzg.zzc(new zzelv(this.zzf));
            zzdhyVarZzf = zzdhxVarZzg.zzh();
        } else {
            zzddw zzddwVar2 = new zzddw();
            zzfcx zzfcxVar = this.zze;
            if (zzfcxVar != null) {
                zzddwVar2.zze(zzfcxVar, this.zzb);
                zzddwVar2.zzf(this.zze, this.zzb);
                zzddwVar2.zzb(this.zze, this.zzb);
            }
            zzdhx zzdhxVarZzg2 = this.zzc.zzg();
            zzcxp zzcxpVar2 = new zzcxp();
            zzcxpVar2.zze(this.zza);
            zzcxpVar2.zzi(zzfeqVarZzG);
            zzdhxVarZzg2.zze(zzcxpVar2.zzj());
            zzddwVar2.zzj(this.zzd, this.zzb);
            zzddwVar2.zze(this.zzd, this.zzb);
            zzddwVar2.zzf(this.zzd, this.zzb);
            zzddwVar2.zzb(this.zzd, this.zzb);
            zzddwVar2.zza(this.zzd, this.zzb);
            zzddwVar2.zzl(this.zzd, this.zzb);
            zzddwVar2.zzk(this.zzd, this.zzb);
            zzddwVar2.zzi(this.zzd, this.zzb);
            zzddwVar2.zzc(this.zzd, this.zzb);
            zzdhxVarZzg2.zzd(zzddwVar2.zzn());
            zzdhxVarZzg2.zzc(new zzelv(this.zzf));
            zzdhyVarZzf = zzdhxVarZzg2.zzh();
        }
        zzdhy zzdhyVar = zzdhyVarZzf;
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzfkh zzfkhVarZzf = zzdhyVar.zzf();
            zzfkhVarZzf.zzh(4);
            zzfkhVarZzf.zzb(zzlVar.zzp);
            zzfkhVar = zzfkhVarZzf;
        } else {
            zzfkhVar = null;
        }
        zzcuz zzcuzVarZza = zzdhyVar.zza();
        h0 h0VarZzi = zzcuzVarZza.zzi(zzcuzVarZza.zzj());
        this.zzi = h0VarZzi;
        zzgbb.zzr(h0VarZzi, new zzfbw(this, zzeobVar, zzfkhVar, zzfjwVarZzb, zzdhyVar), this.zzb);
        return true;
    }

    final /* synthetic */ void zzh() {
        this.zzd.zzbG(zzffr.zzd(6, null, null));
    }

    public final void zzi(zzbea zzbeaVar) {
        this.zzf = zzbeaVar;
    }
}
