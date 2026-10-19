package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zziy implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzjb zzb;

    zziy(zzjb zzjbVar, long j) {
        this.zzb = zzjbVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs.zzd().zzf(this.zza);
        this.zzb.zza = null;
    }
}
