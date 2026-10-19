package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdhq implements zzhdp {
    private final zzhec zza;

    public zzdhq(zzhec zzhecVar) {
        this.zza = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdfw((zzdij) this.zza.zzb(), zzcca.zzf));
        zzhdx.zzb(setSingleton);
        return setSingleton;
    }
}
