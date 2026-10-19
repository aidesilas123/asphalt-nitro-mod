package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdll implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;

    public zzdll(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4, zzhec zzhecVar5, zzhec zzhecVar6, zzhec zzhecVar7, zzhec zzhecVar8, zzhec zzhecVar9) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
        this.zzc = zzhecVar3;
        this.zzd = zzhecVar4;
        this.zze = zzhecVar5;
        this.zzf = zzhecVar6;
        this.zzg = zzhecVar7;
        this.zzh = zzhecVar8;
        this.zzi = zzhecVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzdlk zzb() {
        com.google.android.gms.ads.internal.util.zzg zzgVarZzb = ((zzciu) this.zza).zzb();
        zzfeq zzfeqVarZza = ((zzcxy) this.zzb).zza();
        zzdkp zzdkpVar = (zzdkp) this.zzc.zzb();
        zzdkk zzdkkVarZza = ((zzdld) this.zzd).zza();
        zzdlw zzdlwVar = (zzdlw) this.zze.zzb();
        zzdme zzdmeVar = (zzdme) this.zzf.zzb();
        Executor executor = (Executor) this.zzg.zzb();
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        return new zzdlk(zzgVarZzb, zzfeqVarZza, zzdkpVar, zzdkkVarZza, zzdlwVar, zzdmeVar, executor, zzgblVar, (zzdkh) this.zzi.zzb());
    }
}
