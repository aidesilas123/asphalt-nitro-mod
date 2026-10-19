package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgbq extends zzgbn implements ScheduledExecutorService, zzgbl {
    final ScheduledExecutorService zza;

    zzgbq(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzgca zzgcaVarZze = zzgca.zze(runnable, null);
        return new zzgbo(zzgcaVarZze, scheduledExecutorService.schedule(zzgcaVarZze, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzgca zzgcaVar = new zzgca(callable);
        return new zzgbo(zzgcaVar, this.zza.schedule(zzgcaVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgbp zzgbpVar = new zzgbp(runnable);
        return new zzgbo(zzgbpVar, this.zza.scheduleAtFixedRate(zzgbpVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgbp zzgbpVar = new zzgbp(runnable);
        return new zzgbo(zzgbpVar, this.zza.scheduleWithFixedDelay(zzgbpVar, j, j2, timeUnit));
    }
}
