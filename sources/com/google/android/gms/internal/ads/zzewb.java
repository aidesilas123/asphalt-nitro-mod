package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzewb {
    private final zzbve zza;
    private final int zzb;

    public zzewb(zzbve zzbveVar, int i) {
        this.zza = zzbveVar;
        this.zzb = i;
    }

    final int zza() {
        return this.zzb;
    }

    @Nullable
    final PackageInfo zzb() {
        return this.zza.zzc;
    }

    final String zzc() {
        return this.zza.zzb;
    }

    final String zzd() {
        return this.zza.zzd;
    }

    final String zze() {
        return this.zza.zzf;
    }

    final List zzf() {
        return this.zza.zzg;
    }

    final boolean zzg() {
        return this.zza.zzi;
    }

    final boolean zzh() {
        return this.zza.zzh;
    }
}
