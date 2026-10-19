package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzawq {
    private final float zza;
    private final float zzb;
    private final float zzc;
    private final float zzd;
    private final int zze;

    @VisibleForTesting
    public zzawq(float f2, float f3, float f4, float f5, int i) {
        this.zza = f2;
        this.zzb = f3;
        this.zzc = f2 + f4;
        this.zzd = f3 + f5;
        this.zze = i;
    }

    final float zza() {
        return this.zzd;
    }

    final float zzb() {
        return this.zza;
    }

    final float zzc() {
        return this.zzc;
    }

    final float zzd() {
        return this.zzb;
    }

    final int zze() {
        return this.zze;
    }
}
