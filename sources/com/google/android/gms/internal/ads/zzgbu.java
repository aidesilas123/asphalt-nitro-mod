package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgbu implements Runnable {
    zzgbx zza;

    zzgbu(zzgbx zzgbxVar) {
        this.zza = zzgbxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h0 h0Var;
        zzgbx zzgbxVar = this.zza;
        if (zzgbxVar == null || (h0Var = zzgbxVar.zza) == null) {
            return;
        }
        this.zza = null;
        if (h0Var.isDone()) {
            zzgbxVar.zzs(h0Var);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = zzgbxVar.zzb;
            zzgbxVar.zzb = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    zzgbxVar.zzd(new zzgbw(str, null));
                    throw th;
                }
            }
            zzgbxVar.zzd(new zzgbw(str + ": " + h0Var.toString(), null));
        } finally {
            h0Var.cancel(true);
        }
    }
}
