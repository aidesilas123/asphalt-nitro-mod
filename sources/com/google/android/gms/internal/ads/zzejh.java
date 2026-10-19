package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzejh extends zzeje {
    private final zzciq zza;
    private final zzcxp zzb;
    private final zzelv zzc;
    private final zzddy zzd;
    private final zzdip zze;
    private final zzdaw zzf;
    private final ViewGroup zzg;
    private final zzddd zzh;
    private final zzejp zzi;
    private final zzega zzj;

    public zzejh(zzciq zzciqVar, zzcxp zzcxpVar, zzelv zzelvVar, zzddy zzddyVar, zzdip zzdipVar, zzdaw zzdawVar, @Nullable ViewGroup viewGroup, @Nullable zzddd zzdddVar, zzejp zzejpVar, zzega zzegaVar) {
        this.zza = zzciqVar;
        this.zzb = zzcxpVar;
        this.zzc = zzelvVar;
        this.zzd = zzddyVar;
        this.zze = zzdipVar;
        this.zzf = zzdawVar;
        this.zzg = viewGroup;
        this.zzh = zzdddVar;
        this.zzi = zzejpVar;
        this.zzj = zzegaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeje
    protected final h0 zzc(zzfeq zzfeqVar, Bundle bundle, zzfdu zzfduVar, zzfeh zzfehVar) {
        zzcxp zzcxpVar = this.zzb;
        zzcxpVar.zzi(zzfeqVar);
        zzcxpVar.zzf(bundle);
        zzcxpVar.zzg(new zzcxj(zzfehVar, zzfduVar, this.zzi));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdq)).booleanValue()) {
            this.zzb.zzd(this.zzj);
        }
        zzciq zzciqVar = this.zza;
        zzcxp zzcxpVar2 = this.zzb;
        zzcsl zzcslVarZze = zzciqVar.zze();
        zzcslVarZze.zzi(zzcxpVar2.zzj());
        zzcslVarZze.zzf(this.zzd);
        zzcslVarZze.zze(this.zzc);
        zzcslVarZze.zzd(this.zze);
        zzcslVarZze.zzg(new zzctj(this.zzf, this.zzh));
        zzcslVarZze.zzc(new zzcrm(this.zzg));
        zzcuz zzcuzVarZzd = zzcslVarZze.zzk().zzd();
        return zzcuzVarZzd.zzi(zzcuzVarZzd.zzj());
    }
}
