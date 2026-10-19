package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoc;
import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkq {
    final /* synthetic */ zzkr zza;

    zzkq(zzkr zzkrVar) {
        this.zza = zzkrVar;
    }

    @WorkerThread
    final void zza() {
        this.zza.zzg();
        if (this.zza.zzs.zzm().zzk(this.zza.zzs.zzaw().currentTimeMillis())) {
            this.zza.zzs.zzm().zzg.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.zza.zzs.zzaz().zzj().zza("Detected application was in foreground");
                zzc(this.zza.zzs.zzaw().currentTimeMillis(), false);
            }
        }
    }

    @WorkerThread
    final void zzb(long j, boolean z) {
        this.zza.zzg();
        this.zza.zzm();
        if (this.zza.zzs.zzm().zzk(j)) {
            this.zza.zzs.zzm().zzg.zza(true);
            zzpp.zzc();
            if (this.zza.zzs.zzf().zzs(null, zzel.zzaI)) {
                this.zza.zzs.zzh().zzo();
            }
        }
        this.zza.zzs.zzm().zzj.zzb(j);
        if (this.zza.zzs.zzm().zzg.zzb()) {
            zzc(j, z);
        }
    }

    @VisibleForTesting
    @WorkerThread
    final void zzc(long j, boolean z) {
        this.zza.zzg();
        if (this.zza.zzs.zzJ()) {
            this.zza.zzs.zzm().zzj.zzb(j);
            this.zza.zzs.zzaz().zzj().zzb("Session started, time", Long.valueOf(this.zza.zzs.zzaw().elapsedRealtime()));
            Long lValueOf = Long.valueOf(j / 1000);
            this.zza.zzs.zzq().zzaa("auto", "_sid", lValueOf, j);
            this.zza.zzs.zzm().zzg.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", lValueOf.longValue());
            if (this.zza.zzs.zzf().zzs(null, zzel.zzaa) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.zza.zzs.zzq().zzI("auto", "_s", j, bundle);
            zzoc.zzc();
            if (this.zza.zzs.zzf().zzs(null, zzel.zzad)) {
                String strZza = this.zza.zzs.zzm().zzo.zza();
                if (TextUtils.isEmpty(strZza)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strZza);
                this.zza.zzs.zzq().zzI("auto", "_ssr", j, bundle2);
            }
        }
    }
}
