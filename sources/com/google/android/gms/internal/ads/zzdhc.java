package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdhc implements zzhdp {
    private final zzdhb zza;
    private final zzhec zzb;

    public zzdhc(zzdhb zzdhbVar, zzhec zzhecVar) {
        this.zza = zzdhbVar;
        this.zzb = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdfw((zzcxe) this.zzb.zzb(), zzcca.zzf));
        zzhdx.zzb(setSingleton);
        return setSingleton;
    }
}
