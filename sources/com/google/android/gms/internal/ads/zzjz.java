package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(31)
final class zzjz {
    @DoNotInline
    public static zzov zza(Context context, zzki zzkiVar, boolean z) {
        zzor zzorVarZzb = zzor.zzb(context);
        if (zzorVarZzb == null) {
            zzez.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
            return new zzov(LogSessionId.LOG_SESSION_ID_NONE);
        }
        if (z) {
            zzkiVar.zzz(zzorVarZzb);
        }
        return new zzov(zzorVarZzb.zza());
    }
}
