package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzduk implements zzhdp {
    private final zzdud zza;
    private final zzhec zzb;
    private final zzhec zzc;

    public zzduk(zzdud zzdudVar, zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzdudVar;
        this.zzb = zzhecVar;
        this.zzc = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdun zzdunVar = (zzdun) this.zzb.zzb();
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        Set setZzg = zzdud.zzg(zzdunVar, zzgblVar);
        zzhdx.zzb(setZzg);
        return setZzg;
    }
}
