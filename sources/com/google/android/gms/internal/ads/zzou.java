package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(31)
final class zzou {
    public static final zzou zza = new zzou(LogSessionId.LOG_SESSION_ID_NONE);
    public final LogSessionId zzb;

    public zzou(LogSessionId logSessionId) {
        this.zzb = logSessionId;
    }
}
