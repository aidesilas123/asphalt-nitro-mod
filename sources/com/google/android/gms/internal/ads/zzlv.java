package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzlv {
    private final zzlu zza;
    private final zzlt zzb;
    private final zzeg zzc;
    private final zzda zzd;
    private int zze;

    @Nullable
    private Object zzf;
    private final Looper zzg;
    private final int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    public zzlv(zzlt zzltVar, zzlu zzluVar, zzda zzdaVar, int i, zzeg zzegVar, Looper looper) {
        this.zzb = zzltVar;
        this.zza = zzluVar;
        this.zzd = zzdaVar;
        this.zzg = looper;
        this.zzc = zzegVar;
        this.zzh = i;
    }

    public final int zza() {
        return this.zze;
    }

    public final Looper zzb() {
        return this.zzg;
    }

    public final zzlu zzc() {
        return this.zza;
    }

    public final zzlv zzd() {
        zzef.zzf(!this.zzi);
        this.zzi = true;
        this.zzb.zzl(this);
        return this;
    }

    public final zzlv zze(@Nullable Object obj) {
        zzef.zzf(!this.zzi);
        this.zzf = obj;
        return this;
    }

    public final zzlv zzf(int i) {
        zzef.zzf(!this.zzi);
        this.zze = i;
        return this;
    }

    @Nullable
    public final Object zzg() {
        return this.zzf;
    }

    public final synchronized void zzh(boolean z) {
        this.zzj = z | this.zzj;
        this.zzk = true;
        notifyAll();
    }

    public final synchronized boolean zzi(long j) throws InterruptedException, TimeoutException {
        zzef.zzf(this.zzi);
        zzef.zzf(this.zzg.getThread() != Thread.currentThread());
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        while (!this.zzk) {
            if (j <= 0) {
                throw new TimeoutException("Message delivery timed out.");
            }
            wait(j);
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        return this.zzj;
    }

    public final synchronized boolean zzj() {
        return false;
    }
}
