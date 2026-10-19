package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfag implements zzeoc {
    private final Context zza;
    private final Executor zzb;
    private final zzciq zzc;
    private final zzenm zzd;
    private final zzenq zze;
    private final ViewGroup zzf;

    @Nullable
    private zzbea zzg;
    private final zzdaw zzh;
    private final zzfkk zzi;
    private final zzddd zzj;
    private final zzfeo zzk;
    private h0 zzl;

    public zzfag(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzq zzqVar, zzciq zzciqVar, zzenm zzenmVar, zzenq zzenqVar, zzfeo zzfeoVar, zzddd zzdddVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzciqVar;
        this.zzd = zzenmVar;
        this.zze = zzenqVar;
        this.zzk = zzfeoVar;
        this.zzh = zzciqVar.zzf();
        this.zzi = zzciqVar.zzz();
        this.zzf = new FrameLayout(context);
        this.zzj = zzdddVar;
        zzfeoVar.zzr(zzqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zza() {
        h0 h0Var = this.zzl;
        return (h0Var == null || h0Var.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, @Nullable zzeoa zzeoaVar, zzeob zzeobVar) throws RemoteException {
        zzcsm zzcsmVarZzk;
        zzfkh zzfkhVar;
        if (str == null) {
            zzcbn.zzg("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfac
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzm();
                }
            });
            return false;
        }
        if (!zza()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziJ)).booleanValue() && zzlVar.zzf) {
                this.zzc.zzk().zzn(true);
            }
            zzfeo zzfeoVar = this.zzk;
            zzfeoVar.zzs(str);
            zzfeoVar.zzE(zzlVar);
            Context context = this.zza;
            zzfeq zzfeqVarZzG = zzfeoVar.zzG();
            zzfjw zzfjwVarZzb = zzfjv.zzb(context, zzfkg.zzf(zzfeqVarZzG), 3, zzlVar);
            if (!((Boolean) zzbfb.zze.zze()).booleanValue() || !this.zzk.zzg().zzk) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhY)).booleanValue()) {
                    zzcsl zzcslVarZze = this.zzc.zze();
                    zzcxp zzcxpVar = new zzcxp();
                    zzcxpVar.zze(this.zza);
                    zzcxpVar.zzi(zzfeqVarZzG);
                    zzcslVarZze.zzi(zzcxpVar.zzj());
                    zzddw zzddwVar = new zzddw();
                    zzddwVar.zzj(this.zzd, this.zzb);
                    zzddwVar.zzk(this.zzd, this.zzb);
                    zzcslVarZze.zzf(zzddwVar.zzn());
                    zzcslVarZze.zze(new zzelv(this.zzg));
                    zzcslVarZze.zzd(new zzdip(zzdkv.zza, null));
                    zzcslVarZze.zzg(new zzctj(this.zzh, this.zzj));
                    zzcslVarZze.zzc(new zzcrm(this.zzf));
                    zzcsmVarZzk = zzcslVarZze.zzh();
                } else {
                    zzcsl zzcslVarZze2 = this.zzc.zze();
                    zzcxp zzcxpVar2 = new zzcxp();
                    zzcxpVar2.zze(this.zza);
                    zzcxpVar2.zzi(zzfeqVarZzG);
                    zzcslVarZze2.zzi(zzcxpVar2.zzj());
                    zzddw zzddwVar2 = new zzddw();
                    zzddwVar2.zzj(this.zzd, this.zzb);
                    zzddwVar2.zza(this.zzd, this.zzb);
                    zzddwVar2.zza(this.zze, this.zzb);
                    zzddwVar2.zzl(this.zzd, this.zzb);
                    zzddwVar2.zzd(this.zzd, this.zzb);
                    zzddwVar2.zze(this.zzd, this.zzb);
                    zzddwVar2.zzf(this.zzd, this.zzb);
                    zzddwVar2.zzb(this.zzd, this.zzb);
                    zzddwVar2.zzk(this.zzd, this.zzb);
                    zzddwVar2.zzi(this.zzd, this.zzb);
                    zzcslVarZze2.zzf(zzddwVar2.zzn());
                    zzcslVarZze2.zze(new zzelv(this.zzg));
                    zzcslVarZze2.zzd(new zzdip(zzdkv.zza, null));
                    zzcslVarZze2.zzg(new zzctj(this.zzh, this.zzj));
                    zzcslVarZze2.zzc(new zzcrm(this.zzf));
                    zzcsmVarZzk = zzcslVarZze2.zzh();
                }
                zzcsm zzcsmVar = zzcsmVarZzk;
                if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                    zzfkh zzfkhVarZzj = zzcsmVar.zzj();
                    zzfkhVarZzj.zzh(3);
                    zzfkhVarZzj.zzb(zzlVar.zzp);
                    zzfkhVar = zzfkhVarZzj;
                } else {
                    zzfkhVar = null;
                }
                zzcuz zzcuzVarZzd = zzcsmVar.zzd();
                h0 h0VarZzi = zzcuzVarZzd.zzi(zzcuzVarZzd.zzj());
                this.zzl = h0VarZzi;
                zzgbb.zzr(h0VarZzi, new zzfaf(this, zzeobVar, zzfkhVar, zzfjwVarZzb, zzcsmVar), this.zzb);
                return true;
            }
            zzenm zzenmVar = this.zzd;
            if (zzenmVar != null) {
                zzenmVar.zzbG(zzffr.zzd(7, null, null));
            }
        }
        return false;
    }

    public final ViewGroup zzd() {
        return this.zzf;
    }

    public final zzfeo zzi() {
        return this.zzk;
    }

    final /* synthetic */ void zzm() {
        this.zzd.zzbG(zzffr.zzd(6, null, null));
    }

    public final void zzn() {
        this.zzh.zzd(this.zzj.zzc());
    }

    public final void zzo(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.zze.zza(zzbeVar);
    }

    public final void zzp(zzdax zzdaxVar) {
        this.zzh.zzo(zzdaxVar, this.zzb);
    }

    public final void zzq(zzbea zzbeaVar) {
        this.zzg = zzbeaVar;
    }

    public final boolean zzr() {
        Object parent = this.zzf.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        com.google.android.gms.ads.internal.zzt.zzp();
        return com.google.android.gms.ads.internal.util.zzt.zzV(view, view.getContext());
    }
}
