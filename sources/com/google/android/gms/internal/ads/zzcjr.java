package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcjr implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzcjr(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbwl zzb() {
        Context contextZza = ((zzciw) this.zza).zza();
        zzfkk zzfkkVar = (zzfkk) this.zzb.zzb();
        zzbou zzbouVarZzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(contextZza, zzcbt.zza(), zzfkkVar);
        zzboo zzbooVar = zzbor.zza;
        zzbouVarZzb.zza("google.afma.request.getAdDictionary", zzbooVar, zzbooVar);
        return new zzbwk(contextZza, com.google.android.gms.ads.internal.zzt.zzf().zzb(contextZza, zzcbt.zza(), zzfkkVar).zza("google.afma.sdkConstants.getSdkConstants", zzbooVar, zzbooVar));
    }
}
