package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdkh {

    @Nullable
    private zzbgf zza;

    public zzdkh(zzdjt zzdjtVar) {
        this.zza = zzdjtVar;
    }

    @Nullable
    public final synchronized zzbgf zza() {
        return this.zza;
    }

    public final synchronized void zzb(@Nullable zzbgf zzbgfVar) {
        this.zza = zzbgfVar;
    }
}
