package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(31)
final class zzsp {
    @DoNotInline
    public static void zza(zzsi zzsiVar, zzov zzovVar) {
        LogSessionId logSessionIdZza = zzovVar.zza();
        if (logSessionIdZza.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        zzsiVar.zzb.setString("log-session-id", logSessionIdZza.getStringId());
    }
}
