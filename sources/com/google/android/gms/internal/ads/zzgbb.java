package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgbb extends zzgbd {
    /* JADX WARN: Multi-variable type inference failed */
    public static zzgba zza(Iterable iterable) {
        return new zzgba(false, zzfwu.zzj(iterable), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgba zzb(Iterable iterable) {
        int i = zzfwu.zzd;
        Objects.requireNonNull(iterable);
        return new zzgba(true, zzfwu.zzj(iterable), null);
    }

    @SafeVarargs
    public static zzgba zzc(h0... h0VarArr) {
        return new zzgba(true, zzfwu.zzk(h0VarArr), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static h0 zzd(Iterable iterable) {
        return new zzgaj(zzfwu.zzj(iterable), true);
    }

    public static h0 zze(h0 h0Var, Class cls, zzftn zzftnVar, Executor executor) {
        zzfzm zzfzmVar = new zzfzm(h0Var, cls, zzftnVar);
        h0Var.addListener(zzfzmVar, zzgbr.zzc(executor, zzfzmVar));
        return zzfzmVar;
    }

    public static h0 zzf(h0 h0Var, Class cls, zzgai zzgaiVar, Executor executor) {
        zzfzl zzfzlVar = new zzfzl(h0Var, cls, zzgaiVar);
        h0Var.addListener(zzfzlVar, zzgbr.zzc(executor, zzfzlVar));
        return zzfzlVar;
    }

    public static h0 zzg(Throwable th) {
        Objects.requireNonNull(th);
        return new zzgbe(th);
    }

    public static h0 zzh(Object obj) {
        return obj == null ? zzgbf.zza : new zzgbf(obj);
    }

    public static h0 zzi() {
        return zzgbf.zza;
    }

    public static h0 zzj(Callable callable, Executor executor) {
        zzgca zzgcaVar = new zzgca(callable);
        executor.execute(zzgcaVar);
        return zzgcaVar;
    }

    public static h0 zzk(zzgah zzgahVar, Executor executor) {
        zzgca zzgcaVar = new zzgca(zzgahVar);
        executor.execute(zzgcaVar);
        return zzgcaVar;
    }

    @SafeVarargs
    public static h0 zzl(h0... h0VarArr) {
        return new zzgaj(zzfwu.zzk(h0VarArr), false);
    }

    public static h0 zzm(h0 h0Var, zzftn zzftnVar, Executor executor) {
        zzfzw zzfzwVar = new zzfzw(h0Var, zzftnVar);
        h0Var.addListener(zzfzwVar, zzgbr.zzc(executor, zzfzwVar));
        return zzfzwVar;
    }

    public static h0 zzn(h0 h0Var, zzgai zzgaiVar, Executor executor) {
        int i = zzfzx.zzc;
        Objects.requireNonNull(executor);
        zzfzv zzfzvVar = new zzfzv(h0Var, zzgaiVar);
        h0Var.addListener(zzfzvVar, zzgbr.zzc(executor, zzfzvVar));
        return zzfzvVar;
    }

    public static h0 zzo(h0 h0Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return h0Var.isDone() ? h0Var : zzgbx.zzf(h0Var, j, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) throws ExecutionException {
        if (future.isDone()) {
            return zzgcc.zza(future);
        }
        throw new IllegalStateException(zzfun.zzb("Future was expected to be done: %s", future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgcc.zza(future);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new zzgaq((Error) cause);
            }
            throw new zzgcb(cause);
        }
    }

    public static void zzr(h0 h0Var, zzgax zzgaxVar, Executor executor) {
        Objects.requireNonNull(zzgaxVar);
        h0Var.addListener(new zzgay(h0Var, zzgaxVar), executor);
    }
}
