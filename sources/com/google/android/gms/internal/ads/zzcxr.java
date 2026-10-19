package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcxr {
    private final Context zza;
    private final zzfeq zzb;
    private final Bundle zzc;

    @Nullable
    private final zzfei zzd;

    @Nullable
    private final zzcxj zze;

    @Nullable
    private final zzega zzf;

    /* synthetic */ zzcxr(zzcxp zzcxpVar, zzcxq zzcxqVar) {
        this.zza = zzcxpVar.zza;
        this.zzb = zzcxpVar.zzb;
        this.zzc = zzcxpVar.zzc;
        this.zzd = zzcxpVar.zzd;
        this.zze = zzcxpVar.zze;
        this.zzf = zzcxpVar.zzf;
    }

    final Context zza(Context context) {
        return this.zza;
    }

    @Nullable
    final Bundle zzb() {
        return this.zzc;
    }

    @Nullable
    final zzcxj zzc() {
        return this.zze;
    }

    final zzcxp zzd() {
        zzcxp zzcxpVar = new zzcxp();
        zzcxpVar.zze(this.zza);
        zzcxpVar.zzi(this.zzb);
        zzcxpVar.zzf(this.zzc);
        zzcxpVar.zzg(this.zze);
        zzcxpVar.zzd(this.zzf);
        return zzcxpVar;
    }

    final zzega zze(String str) {
        zzega zzegaVar = this.zzf;
        return zzegaVar != null ? zzegaVar : new zzega(str);
    }

    @Nullable
    final zzfei zzf() {
        return this.zzd;
    }

    final zzfeq zzg() {
        return this.zzb;
    }
}
