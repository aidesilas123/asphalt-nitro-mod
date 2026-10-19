package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdhm implements zzhdp {
    private final zzdhb zza;
    private final zzhec zzb;

    public zzdhm(zzdhb zzdhbVar, zzhec zzhecVar) {
        this.zza = zzdhbVar;
        this.zzb = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setZzf = this.zza.zzf((zzcxe) this.zzb.zzb());
        zzhdx.zzb(setZzf);
        return setZzf;
    }
}
