package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgbx extends zzgar {
    private h0 zza;
    private ScheduledFuture zzb;

    private zzgbx(h0 h0Var) {
        Objects.requireNonNull(h0Var);
        this.zza = h0Var;
    }

    static h0 zzf(h0 h0Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgbx zzgbxVar = new zzgbx(h0Var);
        zzgbu zzgbuVar = new zzgbu(zzgbxVar);
        zzgbxVar.zzb = scheduledExecutorService.schedule(zzgbuVar, j, timeUnit);
        h0Var.addListener(zzgbuVar, zzgap.INSTANCE);
        return zzgbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final String zza() {
        h0 h0Var = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (h0Var == null) {
            return null;
        }
        String str = "inputFuture=[" + h0Var.toString() + o2.i.f6491e;
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final void zzb() {
        zzr(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
