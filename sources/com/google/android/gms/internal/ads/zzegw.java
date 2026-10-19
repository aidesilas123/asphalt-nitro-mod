package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzegw implements zzefv {
    private final zzcsm zza;
    private final Context zzb;
    private final zzdqu zzc;
    private final zzfeq zzd;
    private final Executor zze;
    private final zzftn zzf;

    public zzegw(zzcsm zzcsmVar, Context context, Executor executor, zzdqu zzdquVar, zzfeq zzfeqVar, zzftn zzftnVar) {
        this.zzb = context;
        this.zza = zzcsmVar;
        this.zze = executor;
        this.zzc = zzdquVar;
        this.zzd = zzfeqVar;
        this.zzf = zzftnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        return zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzegv
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(zzfehVar, zzfduVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final boolean zzb(zzfeh zzfehVar, zzfdu zzfduVar) {
        zzfea zzfeaVar = zzfduVar.zzt;
        return (zzfeaVar == null || zzfeaVar.zza == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ h0 zzc(zzfeh zzfehVar, zzfdu zzfduVar, Object obj) throws Exception {
        View zzdqxVar;
        com.google.android.gms.ads.internal.client.zzq zzqVarZza = zzfeu.zza(this.zzb, zzfduVar.zzv);
        final zzcgv zzcgvVarZza = this.zzc.zza(zzqVarZza, zzfduVar, zzfehVar.zzb.zzb);
        zzcgvVarZza.zzZ(zzfduVar.zzX);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhH)).booleanValue() && zzfduVar.zzah) {
            zzdqxVar = zzctd.zza(this.zzb, (View) zzcgvVarZza, zzfduVar);
        } else {
            zzdqxVar = new zzdqx(this.zzb, (View) zzcgvVarZza, (com.google.android.gms.ads.internal.util.zzau) this.zzf.apply(zzfduVar));
        }
        final zzcrq zzcrqVarZza = this.zza.zza(new zzcuh(zzfehVar, zzfduVar, null), new zzcrw(zzdqxVar, zzcgvVarZza, new zzctp() { // from class: com.google.android.gms.internal.ads.zzegq
            @Override // com.google.android.gms.internal.ads.zzctp
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzcgvVarZza.zzq();
            }
        }, zzfeu.zzb(zzqVarZza)));
        zzcrqVarZza.zzh().zzi(zzcgvVarZza, false, null);
        zzcyz zzcyzVarZzc = zzcrqVarZza.zzc();
        zzczb zzczbVar = new zzczb() { // from class: com.google.android.gms.internal.ads.zzegr
            @Override // com.google.android.gms.internal.ads.zzczb
            public final void zzq() {
                zzcgv zzcgvVar = zzcgvVarZza;
                if (zzcgvVar.zzN() != null) {
                    zzcgvVar.zzN().zzq();
                }
            }
        };
        zzgbl zzgblVar = zzcca.zzf;
        zzcyzVarZzc.zzo(zzczbVar, zzgblVar);
        zzcrqVarZza.zzh();
        zzfea zzfeaVar = zzfduVar.zzt;
        h0 h0VarZzj = zzdqt.zzj(zzcgvVarZza, zzfeaVar.zzb, zzfeaVar.zza);
        if (zzfduVar.zzN) {
            h0VarZzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegs
                @Override // java.lang.Runnable
                public final void run() {
                    zzcgvVarZza.zzae();
                }
            }, this.zze);
        }
        h0VarZzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegt
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd(zzcgvVarZza);
            }
        }, this.zze);
        return zzgbb.zzm(h0VarZzj, new zzftn() { // from class: com.google.android.gms.internal.ads.zzegu
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj2) {
                return zzcrqVarZza.zza();
            }
        }, zzgblVar);
    }

    final /* synthetic */ void zzd(zzcgv zzcgvVar) {
        zzcgvVar.zzY();
        zzchr zzchrVarZzq = zzcgvVar.zzq();
        com.google.android.gms.ads.internal.client.zzfl zzflVar = this.zzd.zza;
        if (zzflVar == null || zzchrVarZzq == null) {
            return;
        }
        zzchrVarZzq.zzs(zzflVar);
    }
}
