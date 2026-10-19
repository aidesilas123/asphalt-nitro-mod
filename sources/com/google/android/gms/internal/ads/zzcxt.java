package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcxt implements zzhdp {
    private final zzcxr zza;
    private final zzhec zzb;

    public zzcxt(zzcxr zzcxrVar, zzhec zzhecVar) {
        this.zza = zzcxrVar;
        this.zzb = zzhecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextZza = this.zza.zza(((zzciw) this.zzb).zza());
        zzhdx.zzb(contextZza);
        return contextZza;
    }
}
