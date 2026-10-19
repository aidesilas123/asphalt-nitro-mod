package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zziw implements Runnable {
    final /* synthetic */ zziu zza;
    final /* synthetic */ zziu zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzjb zze;

    zziw(zzjb zzjbVar, zziu zziuVar, zziu zziuVar2, long j, boolean z) {
        this.zze = zzjbVar;
        this.zza = zziuVar;
        this.zzb = zziuVar2;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzB(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
