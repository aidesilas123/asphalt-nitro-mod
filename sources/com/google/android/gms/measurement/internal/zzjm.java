package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjm implements Runnable {
    final /* synthetic */ zzav zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf zzc;
    final /* synthetic */ zzkb zzd;

    zzjm(zzkb zzkbVar, zzav zzavVar, String str, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.zzd = zzkbVar;
        this.zza = zzavVar;
        this.zzb = str;
        this.zzc = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi zzgiVar;
        byte[] bArrZzu = null;
        try {
            try {
                zzkb zzkbVar = this.zzd;
                zzeo zzeoVar = zzkbVar.zzb;
                if (zzeoVar == null) {
                    zzkbVar.zzs.zzaz().zzd().zza("Discarding data. Failed to send event to service to bundle");
                    zzgiVar = this.zzd.zzs;
                } else {
                    bArrZzu = zzeoVar.zzu(this.zza, this.zzb);
                    this.zzd.zzQ();
                    zzgiVar = this.zzd.zzs;
                }
            } catch (RemoteException e2) {
                this.zzd.zzs.zzaz().zzd().zzb("Failed to send event to the service to bundle", e2);
                zzgiVar = this.zzd.zzs;
            }
            zzgiVar.zzv().zzS(this.zzc, bArrZzu);
        } catch (Throwable th) {
            this.zzd.zzs.zzv().zzS(this.zzc, bArrZzu);
            throw th;
        }
    }
}
