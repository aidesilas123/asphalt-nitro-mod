package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkr extends zzf {
    protected final zzkq zza;
    protected final zzkp zzb;
    protected final zzkn zzc;
    private Handler zzd;

    zzkr(zzgi zzgiVar) {
        super(zzgiVar);
        this.zza = new zzkq(this);
        this.zzb = new zzkp(this);
        this.zzc = new zzkn(this);
    }

    static /* bridge */ /* synthetic */ void zzj(zzkr zzkrVar, long j) {
        zzkrVar.zzg();
        zzkrVar.zzm();
        zzkrVar.zzs.zzaz().zzj().zzb("Activity paused, time", Long.valueOf(j));
        zzkrVar.zzc.zza(j);
        if (zzkrVar.zzs.zzf().zzu()) {
            zzkrVar.zzb.zzb(j);
        }
    }

    static /* bridge */ /* synthetic */ void zzl(zzkr zzkrVar, long j) {
        zzkrVar.zzg();
        zzkrVar.zzm();
        zzkrVar.zzs.zzaz().zzj().zzb("Activity resumed, time", Long.valueOf(j));
        if (zzkrVar.zzs.zzf().zzu() || zzkrVar.zzs.zzm().zzl.zzb()) {
            zzkrVar.zzb.zzc(j);
        }
        zzkrVar.zzc.zzb();
        zzkq zzkqVar = zzkrVar.zza;
        zzkqVar.zza.zzg();
        if (zzkqVar.zza.zzs.zzJ()) {
            zzkqVar.zzb(zzkqVar.zza.zzs.zzaw().currentTimeMillis(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzm() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new com.google.android.gms.internal.measurement.zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }
}
