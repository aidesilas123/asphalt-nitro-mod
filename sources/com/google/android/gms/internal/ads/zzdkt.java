package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdkt {
    zzbhj zza;
    zzbhg zzb;
    zzbhw zzc;
    zzbht zzd;
    zzbmv zze;
    final SimpleArrayMap zzf = new SimpleArrayMap();
    final SimpleArrayMap zzg = new SimpleArrayMap();

    public final zzdkt zza(zzbhg zzbhgVar) {
        this.zzb = zzbhgVar;
        return this;
    }

    public final zzdkt zzb(zzbhj zzbhjVar) {
        this.zza = zzbhjVar;
        return this;
    }

    public final zzdkt zzc(String str, zzbhp zzbhpVar, @Nullable zzbhm zzbhmVar) {
        this.zzf.put(str, zzbhpVar);
        if (zzbhmVar != null) {
            this.zzg.put(str, zzbhmVar);
        }
        return this;
    }

    public final zzdkt zzd(zzbmv zzbmvVar) {
        this.zze = zzbmvVar;
        return this;
    }

    public final zzdkt zze(zzbht zzbhtVar) {
        this.zzd = zzbhtVar;
        return this;
    }

    public final zzdkt zzf(zzbhw zzbhwVar) {
        this.zzc = zzbhwVar;
        return this;
    }

    public final zzdkv zzg() {
        return new zzdkv(this);
    }
}
