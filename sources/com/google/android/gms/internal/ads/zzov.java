package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzov {
    public static final zzov zza;

    @Nullable
    private final zzou zzb;

    static {
        zza = zzfs.zza < 31 ? new zzov() : new zzov(zzou.zza);
    }

    public zzov() {
        zzef.zzf(zzfs.zza < 31);
        this.zzb = null;
    }

    @RequiresApi(31)
    public zzov(LogSessionId logSessionId) {
        this.zzb = new zzou(logSessionId);
    }

    private zzov(zzou zzouVar) {
        this.zzb = zzouVar;
    }

    @RequiresApi(31)
    public final LogSessionId zza() {
        zzou zzouVar = this.zzb;
        Objects.requireNonNull(zzouVar);
        return zzouVar.zzb;
    }
}
