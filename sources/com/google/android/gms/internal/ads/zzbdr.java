package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzbdr {
    private final long zza;

    @Nullable
    private final String zzb;

    @Nullable
    private final zzbdr zzc;

    public zzbdr(long j, @Nullable String str, @Nullable zzbdr zzbdrVar) {
        this.zza = j;
        this.zzb = str;
        this.zzc = zzbdrVar;
    }

    public final long zza() {
        return this.zza;
    }

    @Nullable
    public final zzbdr zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zzb;
    }
}
