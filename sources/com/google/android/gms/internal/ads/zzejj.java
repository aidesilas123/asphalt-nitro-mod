package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzejj extends zzeje {
    private final zzciq zza;
    private final zzcxp zzb;
    private final zzelv zzc;
    private final zzddy zzd;
    private final zzejp zze;
    private final zzega zzf;

    public zzejj(zzciq zzciqVar, zzcxp zzcxpVar, zzelv zzelvVar, zzddy zzddyVar, zzejp zzejpVar, zzega zzegaVar) {
        this.zza = zzciqVar;
        this.zzb = zzcxpVar;
        this.zzc = zzelvVar;
        this.zzd = zzddyVar;
        this.zze = zzejpVar;
        this.zzf = zzegaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeje
    protected final h0 zzc(zzfeq zzfeqVar, Bundle bundle, zzfdu zzfduVar, zzfeh zzfehVar) {
        zzcxp zzcxpVar = this.zzb;
        zzcxpVar.zzi(zzfeqVar);
        zzcxpVar.zzf(bundle);
        zzcxpVar.zzg(new zzcxj(zzfehVar, zzfduVar, this.zze));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdq)).booleanValue()) {
            this.zzb.zzd(this.zzf);
        }
        zzciq zzciqVar = this.zza;
        zzcxp zzcxpVar2 = this.zzb;
        zzdhx zzdhxVarZzg = zzciqVar.zzg();
        zzdhxVarZzg.zze(zzcxpVar2.zzj());
        zzdhxVarZzg.zzd(this.zzd);
        zzdhxVarZzg.zzc(this.zzc);
        zzcuz zzcuzVarZza = zzdhxVarZzg.zzf().zza();
        return zzcuzVarZza.zzi(zzcuzVarZza.zzj());
    }
}
