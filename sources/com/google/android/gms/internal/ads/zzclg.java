package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzclg implements zzfaj {
    private final Context zza;
    private final com.google.android.gms.ads.internal.client.zzq zzb;
    private final String zzc;
    private final zzckm zzd;
    private final zzclg zze = this;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;
    private final zzhec zzj;
    private final zzhec zzk;

    /* synthetic */ zzclg(zzckm zzckmVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzclf zzclfVar) {
        this.zzd = zzckmVar;
        this.zza = context;
        this.zzb = zzqVar;
        this.zzc = str;
        zzhdp zzhdpVarZza = zzhdq.zza(context);
        this.zzf = zzhdpVarZza;
        zzhdp zzhdpVarZza2 = zzhdq.zza(zzqVar);
        this.zzg = zzhdpVarZza2;
        zzhec zzhecVarZzc = zzhdo.zzc(new zzenn(zzckmVar.zzn));
        this.zzh = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(zzens.zza());
        this.zzi = zzhecVarZzc2;
        zzhec zzhecVarZzc3 = zzhdo.zzc(zzddf.zza());
        this.zzj = zzhecVarZzc3;
        this.zzk = zzhdo.zzc(new zzfah(zzhdpVarZza, zzckmVar.zzo, zzhdpVarZza2, zzckmVar.zzU, zzhecVarZzc, zzhecVarZzc2, zzfes.zza(), zzhecVarZzc3));
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    public final zzems zza() {
        zzfag zzfagVar = (zzfag) this.zzk.zzb();
        zzenm zzenmVar = (zzenm) this.zzh.zzb();
        zzcbt zzcbtVarZzd = this.zzd.zza.zzd();
        zzhdx.zzb(zzcbtVarZzd);
        return new zzems(this.zza, this.zzb, this.zzc, zzfagVar, zzenmVar, zzcbtVarZzd, (zzdtp) this.zzd.zzZ.zzb());
    }
}
