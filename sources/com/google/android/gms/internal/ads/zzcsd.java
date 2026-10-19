package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcsd implements zzhdp {
    private final zzcrw zza;
    private final zzhec zzb;

    public zzcsd(zzcrw zzcrwVar, zzhec zzhecVar) {
        this.zza = zzcrwVar;
        this.zzb = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setZzg = zzcrw.zzg((zzctg) this.zzb.zzb());
        zzhdx.zzb(setZzg);
        return setZzg;
    }
}
