package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcxp {
    private Context zza;
    private zzfeq zzb;
    private Bundle zzc;

    @Nullable
    private zzfei zzd;

    @Nullable
    private zzcxj zze;

    @Nullable
    private zzega zzf;

    public final zzcxp zzd(@Nullable zzega zzegaVar) {
        this.zzf = zzegaVar;
        return this;
    }

    public final zzcxp zze(Context context) {
        this.zza = context;
        return this;
    }

    public final zzcxp zzf(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzcxp zzg(@Nullable zzcxj zzcxjVar) {
        this.zze = zzcxjVar;
        return this;
    }

    public final zzcxp zzh(zzfei zzfeiVar) {
        this.zzd = zzfeiVar;
        return this;
    }

    public final zzcxp zzi(zzfeq zzfeqVar) {
        this.zzb = zzfeqVar;
        return this;
    }

    public final zzcxr zzj() {
        return new zzcxr(this, null);
    }
}
