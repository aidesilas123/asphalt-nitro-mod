package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdse implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzdse(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        Set setSingleton = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeN)).booleanValue() ? Collections.singleton(new zzdfw(((zzdsx) this.zzb).zzb(), zzgblVar)) : Collections.emptySet();
        zzhdx.zzb(setSingleton);
        return setSingleton;
    }
}
