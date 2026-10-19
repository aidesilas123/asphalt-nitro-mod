package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjj implements Runnable {
    final /* synthetic */ zziu zza;
    final /* synthetic */ zzkb zzb;

    zzjj(zzkb zzkbVar, zziu zziuVar) {
        this.zzb = zzkbVar;
        this.zza = zziuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.zzb;
        zzeo zzeoVar = zzkbVar.zzb;
        if (zzeoVar == null) {
            zzkbVar.zzs.zzaz().zzd().zza("Failed to send current screen to service");
            return;
        }
        try {
            zziu zziuVar = this.zza;
            if (zziuVar == null) {
                zzeoVar.zzq(0L, null, null, zzkbVar.zzs.zzav().getPackageName());
            } else {
                zzeoVar.zzq(zziuVar.zzc, zziuVar.zza, zziuVar.zzb, zzkbVar.zzs.zzav().getPackageName());
            }
            this.zzb.zzQ();
        } catch (RemoteException e2) {
            this.zzb.zzs.zzaz().zzd().zzb("Failed to send current screen to the service", e2);
        }
    }
}
