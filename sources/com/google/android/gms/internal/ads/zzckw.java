package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzckw implements zzeyv {
    private final zzckm zza;
    private final zzckw zzb = this;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;

    /* synthetic */ zzckw(zzckm zzckmVar, Context context, String str, zzckv zzckvVar) {
        this.zza = zzckmVar;
        zzhdp zzhdpVarZza = zzhdq.zza(context);
        this.zzc = zzhdpVarZza;
        zzhdp zzhdpVarZza2 = zzhdq.zza(str);
        this.zzd = zzhdpVarZza2;
        zzfbn zzfbnVar = new zzfbn(zzhdpVarZza, zzckmVar.zzaG, zzckmVar.zzaH);
        this.zze = zzfbnVar;
        zzhec zzhecVarZzc = zzhdo.zzc(new zzezt(zzckmVar.zzaG));
        this.zzf = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(new zzezv(zzhdpVarZza, zzckmVar.zzo, zzckmVar.zzU, zzfbnVar, zzhecVarZzc, zzfes.zza(), zzckmVar.zzh));
        this.zzg = zzhecVarZzc2;
        this.zzh = zzhdo.zzc(new zzfab(zzckmVar.zzU, zzhdpVarZza, zzhdpVarZza2, zzhecVarZzc2, zzhecVarZzc, zzckmVar.zzh, zzckmVar.zzZ));
    }

    @Override // com.google.android.gms.internal.ads.zzeyv
    public final zzfaa zza() {
        return (zzfaa) this.zzh.zzb();
    }
}
