package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
public final class zzek {
    private static final Object zza = new Object();
    private final String zzb;
    private final zzeh zzc;
    private final Object zzd;
    private final Object zze;
    private final Object zzf = new Object();

    @GuardedBy("overrideLock")
    private volatile Object zzg = null;

    @GuardedBy("cachingLock")
    private volatile Object zzh = null;

    /* synthetic */ zzek(String str, Object obj, Object obj2, zzeh zzehVar, zzej zzejVar) {
        this.zzb = str;
        this.zzd = obj;
        this.zze = obj2;
        this.zzc = zzehVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object zza(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.zzf
            monitor-enter(r0)
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
            if (r4 == 0) goto L7
            return r4
        L7:
            com.google.android.gms.measurement.internal.zzaa r4 = com.google.android.gms.measurement.internal.zzei.zza
            if (r4 != 0) goto Le
            java.lang.Object r4 = r3.zzd
            return r4
        Le:
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzek.zza
            monitor-enter(r4)
            boolean r0 = com.google.android.gms.measurement.internal.zzaa.zza()     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L22
            java.lang.Object r0 = r3.zzh     // Catch: java.lang.Throwable -> L6b
            if (r0 != 0) goto L1e
            java.lang.Object r0 = r3.zzd     // Catch: java.lang.Throwable -> L6b
            goto L20
        L1e:
            java.lang.Object r0 = r3.zzh     // Catch: java.lang.Throwable -> L6b
        L20:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            return r0
        L22:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            java.util.List r4 = com.google.android.gms.measurement.internal.zzel.zzb()     // Catch: java.lang.SecurityException -> L58
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.SecurityException -> L58
        L2b:
            boolean r0 = r4.hasNext()     // Catch: java.lang.SecurityException -> L58
            if (r0 == 0) goto L59
            java.lang.Object r0 = r4.next()     // Catch: java.lang.SecurityException -> L58
            com.google.android.gms.measurement.internal.zzek r0 = (com.google.android.gms.measurement.internal.zzek) r0     // Catch: java.lang.SecurityException -> L58
            boolean r1 = com.google.android.gms.measurement.internal.zzaa.zza()     // Catch: java.lang.SecurityException -> L58
            if (r1 != 0) goto L50
            r1 = 0
            com.google.android.gms.measurement.internal.zzeh r2 = r0.zzc     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
            if (r2 == 0) goto L46
            java.lang.Object r1 = r2.zza()     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
        L46:
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzek.zza     // Catch: java.lang.SecurityException -> L58
            monitor-enter(r2)     // Catch: java.lang.SecurityException -> L58
            r0.zzh = r1     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            goto L2b
        L4d:
            r4 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            throw r4     // Catch: java.lang.SecurityException -> L58
        L50:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.SecurityException -> L58
            java.lang.String r0 = "Refreshing flag cache must be done on a worker thread."
            r4.<init>(r0)     // Catch: java.lang.SecurityException -> L58
            throw r4     // Catch: java.lang.SecurityException -> L58
        L58:
        L59:
            com.google.android.gms.measurement.internal.zzeh r4 = r3.zzc
            if (r4 != 0) goto L60
            java.lang.Object r4 = r3.zzd
            return r4
        L60:
            java.lang.Object r4 = r4.zza()     // Catch: java.lang.IllegalStateException -> L65 java.lang.SecurityException -> L68
            return r4
        L65:
            java.lang.Object r4 = r3.zzd
            return r4
        L68:
            java.lang.Object r4 = r3.zzd
            return r4
        L6b:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            throw r0
        L6e:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzek.zza(java.lang.Object):java.lang.Object");
    }

    public final String zzb() {
        return this.zzb;
    }
}
