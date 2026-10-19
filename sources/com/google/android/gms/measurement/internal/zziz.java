package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zziz implements Runnable {
    final /* synthetic */ zziu zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzjb zzc;

    zziz(zzjb zzjbVar, zziu zziuVar, long j) {
        this.zzc = zzjbVar;
        this.zza = zziuVar;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzC(this.zza, false, this.zzb);
        zzjb zzjbVar = this.zzc;
        zzjbVar.zza = null;
        zzjbVar.zzs.zzt().zzG(null);
    }
}
