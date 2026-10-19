package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdhh implements zzhdp {
    private final zzdhb zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;

    public zzdhh(zzdhb zzdhbVar, zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4) {
        this.zza = zzdhbVar;
        this.zzb = zzhecVar;
        this.zzc = zzhecVar2;
        this.zzd = zzhecVar3;
        this.zze = zzhecVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zzb.zzb();
        final zzcbt zzcbtVarZza = ((zzcji) this.zzc).zza();
        final zzfdu zzfduVarZza = ((zzcui) this.zzd).zza();
        final zzfeq zzfeqVarZza = ((zzcxy) this.zze).zza();
        return new zzdfw(new zzczv() { // from class: com.google.android.gms.internal.ads.zzdgz
            @Override // com.google.android.gms.internal.ads.zzczv
            public final void zzr() {
                com.google.android.gms.ads.internal.zzt.zzs().zzn(context, zzcbtVarZza.zza, zzfduVarZza.zzD.toString(), zzfeqVarZza.zzf);
            }
        }, zzcca.zzf);
    }
}
