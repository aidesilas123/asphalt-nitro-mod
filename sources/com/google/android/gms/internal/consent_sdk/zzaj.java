package com.google.android.gms.internal.consent_sdk;

import android.app.Application;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaj extends zzc {
    private final zzaj zza = this;
    private final zzdr zzb;
    private final zzdr zzc;
    private final zzdr zzd;
    private final zzdr zze;
    private final zzdr zzf;
    private final zzdr zzg;
    private final zzdr zzh;
    private final zzdr zzi;
    private final zzdr zzj;
    private final zzdr zzk;
    private final zzdr zzl;
    private final zzdr zzm;

    /* synthetic */ zzaj(Application application, zzai zzaiVar) {
        zzdo zzdoVarZza = zzdp.zza(application);
        this.zzb = zzdoVarZza;
        zzdr zzdrVarZza = zzdn.zza(new zzat(zzdoVarZza));
        this.zzc = zzdrVarZza;
        zzdr zzdrVarZza2 = zzdn.zza(zzaf.zza);
        this.zzd = zzdrVarZza2;
        zzah zzahVar = new zzah(this);
        this.zze = zzahVar;
        zzdr zzdrVarZza3 = zzdn.zza(new zzbr(zzahVar, zzaw.zza));
        this.zzf = zzdrVarZza3;
        zzb zzbVar = new zzb(zzdoVarZza);
        this.zzg = zzbVar;
        zzq zzqVar = new zzq(zzdoVarZza, zzbVar, zzdrVarZza);
        this.zzh = zzqVar;
        zzdr zzdrVarZza4 = zzdn.zza(new zzh(zzaw.zza));
        this.zzi = zzdrVarZza4;
        zzar zzarVar = new zzar(zzdoVarZza, zzdrVarZza, zzaw.zza);
        this.zzj = zzarVar;
        zzad zzadVar = new zzad(zzdrVarZza4, zzarVar, zzdrVarZza);
        this.zzk = zzadVar;
        zzy zzyVar = new zzy(zzdoVarZza, zzdrVarZza2, zzau.zza, zzaw.zza, zzdrVarZza, zzdrVarZza3, zzqVar, zzadVar, zzdrVarZza4);
        this.zzl = zzyVar;
        this.zzm = zzdn.zza(new zzm(zzdrVarZza, zzyVar, zzdrVarZza3));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc
    public final zzl zzb() {
        return (zzl) this.zzm.zzb();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc
    public final zzbq zzc() {
        return (zzbq) this.zzf.zzb();
    }
}
