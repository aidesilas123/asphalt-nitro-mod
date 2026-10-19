package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjd implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzll zzc;
    final /* synthetic */ zzkb zzd;

    zzjd(zzkb zzkbVar, zzp zzpVar, boolean z, zzll zzllVar) {
        this.zzd = zzkbVar;
        this.zza = zzpVar;
        this.zzb = z;
        this.zzc = zzllVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.zzd;
        zzeo zzeoVar = zzkbVar.zzb;
        if (zzeoVar == null) {
            zzkbVar.zzs.zzaz().zzd().zza("Discarding data. Failed to set user property");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zzd.zzD(zzeoVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.zzQ();
    }
}
