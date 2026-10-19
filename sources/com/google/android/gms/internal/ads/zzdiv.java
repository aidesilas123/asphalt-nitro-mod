package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdiv implements zzhdp {
    private final zzhec zza;

    public zzdiv(zzhec zzhecVar) {
        this.zza = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = ((zzdis) this.zza).zza().zze() != null ? Collections.singleton("banner") : Collections.emptySet();
        zzhdx.zzb(setSingleton);
        return setSingleton;
    }
}
