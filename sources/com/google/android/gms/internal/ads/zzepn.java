package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzepn {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    @Nullable
    private zzepm zzb;

    @Nullable
    final zzepm zza() {
        return this.zzb;
    }

    final void zzb(zzepm zzepmVar) {
        this.zzb = zzepmVar;
    }

    public final void zzc(boolean z) {
        this.zza.set(true);
    }

    public final boolean zzd() {
        return this.zza.get();
    }
}
