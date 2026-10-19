package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzejc extends zzeje {
    private final zzciq zza;
    private final zzdip zzb;
    private final zzcxp zzc;
    private final zzddy zzd;
    private final zzejp zze;
    private final zzega zzf;

    public zzejc(zzciq zzciqVar, zzdip zzdipVar, zzcxp zzcxpVar, zzddy zzddyVar, zzejp zzejpVar, zzega zzegaVar) {
        this.zza = zzciqVar;
        this.zzb = zzdipVar;
        this.zzc = zzcxpVar;
        this.zzd = zzddyVar;
        this.zze = zzejpVar;
        this.zzf = zzegaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeje
    protected final h0 zzc(zzfeq zzfeqVar, Bundle bundle, zzfdu zzfduVar, zzfeh zzfehVar) {
        zzcxp zzcxpVar = this.zzc;
        zzcxpVar.zzi(zzfeqVar);
        zzcxpVar.zzf(bundle);
        zzcxpVar.zzg(new zzcxj(zzfehVar, zzfduVar, this.zze));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdq)).booleanValue()) {
            this.zzc.zzd(this.zzf);
        }
        zzciq zzciqVar = this.zza;
        zzcxp zzcxpVar2 = this.zzc;
        zzdit zzditVarZzh = zzciqVar.zzh();
        zzditVarZzh.zzf(zzcxpVar2.zzj());
        zzditVarZzh.zze(this.zzd);
        zzditVarZzh.zzd(this.zzb);
        zzditVarZzh.zzc(new zzcrm(null));
        zzcuz zzcuzVarZza = zzditVarZzh.zzg().zza();
        return zzcuzVarZza.zzi(zzcuzVarZza.zzj());
    }
}
