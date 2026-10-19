package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkj implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzkr zzb;

    zzkj(zzkr zzkrVar, long j) {
        this.zzb = zzkrVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkr.zzl(this.zzb, this.zza);
    }
}
