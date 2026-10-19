package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcme implements zzfca {
    private final zzckm zza;
    private final zzcme zzb = this;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;

    /* synthetic */ zzcme(zzckm zzckmVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcmd zzcmdVar) {
        this.zza = zzckmVar;
        zzhdp zzhdpVarZza = zzhdq.zza(context);
        this.zzc = zzhdpVarZza;
        zzhdp zzhdpVarZza2 = zzhdq.zza(zzqVar);
        this.zzd = zzhdpVarZza2;
        zzhdp zzhdpVarZza3 = zzhdq.zza(str);
        this.zze = zzhdpVarZza3;
        zzhec zzhecVarZzc = zzhdo.zzc(new zzenn(zzckmVar.zzn));
        this.zzf = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(new zzfcy(zzckmVar.zzaG));
        this.zzg = zzhecVarZzc2;
        zzhec zzhecVarZzc3 = zzhdo.zzc(new zzfby(zzhdpVarZza, zzckmVar.zzo, zzckmVar.zzU, zzhecVarZzc, zzhecVarZzc2, zzfes.zza()));
        this.zzh = zzhecVarZzc3;
        this.zzi = zzhdo.zzc(new zzenv(zzhdpVarZza, zzhdpVarZza2, zzhdpVarZza3, zzhecVarZzc3, zzhecVarZzc, zzhecVarZzc2, zzckmVar.zzh, zzckmVar.zzV, zzckmVar.zzZ));
    }

    @Override // com.google.android.gms.internal.ads.zzfca
    public final zzenu zza() {
        return (zzenu) this.zzi.zzb();
    }
}
