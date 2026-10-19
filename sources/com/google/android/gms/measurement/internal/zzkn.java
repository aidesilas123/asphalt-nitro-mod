package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkn {
    final /* synthetic */ zzkr zza;
    private zzkm zzb;

    zzkn(zzkr zzkrVar) {
        this.zza = zzkrVar;
    }

    @WorkerThread
    final void zza(long j) {
        this.zzb = new zzkm(this, this.zza.zzs.zzaw().currentTimeMillis(), j);
        this.zza.zzd.postDelayed(this.zzb, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    @WorkerThread
    final void zzb() {
        this.zza.zzg();
        zzkm zzkmVar = this.zzb;
        if (zzkmVar != null) {
            this.zza.zzd.removeCallbacks(zzkmVar);
        }
        this.zza.zzs.zzm().zzl.zza(false);
    }
}
