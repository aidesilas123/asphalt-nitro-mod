package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcsg implements zzhdp {
    private final zzcrw zza;
    private final zzhec zzb;

    public zzcsg(zzcrw zzcrwVar, zzhec zzhecVar) {
        this.zza = zzcrwVar;
        this.zzb = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdfw((zzctg) this.zzb.zzb(), zzcca.zzf));
        zzhdx.zzb(setSingleton);
        return setSingleton;
    }
}
