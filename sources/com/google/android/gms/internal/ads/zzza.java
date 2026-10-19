package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzza {
    public static final zzyu zza = new zzyu(0, C.TIME_UNSET, null);
    public static final zzyu zzb = new zzyu(1, C.TIME_UNSET, null);
    public static final zzyu zzc = new zzyu(2, C.TIME_UNSET, null);
    public static final zzyu zzd = new zzyu(3, C.TIME_UNSET, null);
    private final ExecutorService zze = zzfs.zzD("ExoPlayer:Loader:ProgressiveMediaPeriod");

    @Nullable
    private zzyv zzf;

    @Nullable
    private IOException zzg;

    public zzza(String str) {
    }

    public static zzyu zzb(boolean z, long j) {
        return new zzyu(z ? 1 : 0, j, null);
    }

    public final long zza(zzyw zzywVar, zzys zzysVar, int i) {
        Looper looperMyLooper = Looper.myLooper();
        zzef.zzb(looperMyLooper);
        this.zzg = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new zzyv(this, looperMyLooper, zzywVar, zzysVar, i, jElapsedRealtime).zzc(0L);
        return jElapsedRealtime;
    }

    public final void zzg() {
        zzyv zzyvVar = this.zzf;
        zzef.zzb(zzyvVar);
        zzyvVar.zza(false);
    }

    public final void zzh() {
        this.zzg = null;
    }

    public final void zzi(int i) throws IOException {
        IOException iOException = this.zzg;
        if (iOException != null) {
            throw iOException;
        }
        zzyv zzyvVar = this.zzf;
        if (zzyvVar != null) {
            zzyvVar.zzb(i);
        }
    }

    public final void zzj(@Nullable zzyx zzyxVar) {
        zzyv zzyvVar = this.zzf;
        if (zzyvVar != null) {
            zzyvVar.zza(true);
        }
        this.zze.execute(new zzyy(zzyxVar));
        this.zze.shutdown();
    }

    public final boolean zzk() {
        return this.zzg != null;
    }

    public final boolean zzl() {
        return this.zzf != null;
    }
}
