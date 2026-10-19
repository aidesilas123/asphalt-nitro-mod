package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzang {

    @Nullable
    public final Object zza;

    @Nullable
    public final zzamj zzb;

    @Nullable
    public final zzanj zzc;
    public boolean zzd;

    private zzang(zzanj zzanjVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzanjVar;
    }

    private zzang(@Nullable Object obj, @Nullable zzamj zzamjVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzamjVar;
        this.zzc = null;
    }

    public static zzang zza(zzanj zzanjVar) {
        return new zzang(zzanjVar);
    }

    public static zzang zzb(@Nullable Object obj, @Nullable zzamj zzamjVar) {
        return new zzang(obj, zzamjVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }
}
