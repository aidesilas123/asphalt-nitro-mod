package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzctj {
    private final zzdaw zza;

    @Nullable
    private final zzddd zzb;

    public zzctj(zzdaw zzdawVar, @Nullable zzddd zzdddVar) {
        this.zza = zzdawVar;
        this.zzb = zzdddVar;
    }

    public final zzdaw zza() {
        return this.zza;
    }

    @Nullable
    final zzddd zzb() {
        return this.zzb;
    }

    final zzdfw zzc() {
        zzddd zzdddVar = this.zzb;
        return zzdddVar != null ? new zzdfw(zzdddVar, zzcca.zzf) : new zzdfw(new zzcti(this), zzcca.zzf);
    }
}
