package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeay implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;

    public zzeay(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4, zzhec zzhecVar5, zzhec zzhecVar6, zzhec zzhecVar7, zzhec zzhecVar8, zzhec zzhecVar9) {
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
    public final zzeax zzb() {
        zzdba zzdbaVarZzb = ((zzdbb) this.zza).zzb();
        zzeaf zzeafVarZzb = ((zzeag) this.zzb).zzb();
        zzfiu zzfiuVar = (zzfiu) this.zzc.zzb();
        zzfeq zzfeqVarZza = ((zzcxy) this.zzd).zza();
        zzcbt zzcbtVarZza = ((zzcji) this.zze).zza();
        zzfkk zzfkkVar = (zzfkk) this.zzf.zzb();
        zzfkh zzfkhVar = (zzfkh) this.zzg.zzb();
        Context contextZza = ((zzciw) this.zzh).zza();
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        return new zzeax(zzdbaVarZzb, zzeafVarZzb, zzfiuVar, zzfeqVarZza, zzcbtVarZza, zzfkkVar, zzfkhVar, contextZza, zzgblVar);
    }
}
