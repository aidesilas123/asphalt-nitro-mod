package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgd extends FutureTask implements Comparable {
    final boolean zza;
    final /* synthetic */ zzgf zzb;
    private final long zzc;
    private final String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgd(zzgf zzgfVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.zzb = zzgfVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzgf.zza.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzgfVar.zzs.zzaz().zzd().zza("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgd(zzgf zzgfVar, Callable callable, boolean z, String str) {
        super(callable);
        this.zzb = zzgfVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        long andIncrement = zzgf.zza.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzgfVar.zzs.zzaz().zzd().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(@NonNull Object obj) {
        zzgd zzgdVar = (zzgd) obj;
        boolean z = this.zza;
        if (z != zzgdVar.zza) {
            return !z ? 1 : -1;
        }
        long j = this.zzc;
        long j2 = zzgdVar.zzc;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.zzb.zzs.zzaz().zzh().zzb("Two tasks share the same index. index", Long.valueOf(this.zzc));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.zzs.zzaz().zzd().zzb(this.zzd, th);
        if ((th instanceof zzgb) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
