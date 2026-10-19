package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjh implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf zzb;
    final /* synthetic */ zzkb zzc;

    zzjh(zzkb zzkbVar, zzp zzpVar, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.zzc = zzkbVar;
        this.zza = zzpVar;
        this.zzb = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi zzgiVar;
        String strZzd = null;
        try {
            try {
                if (this.zzc.zzs.zzm().zzc().zzi(zzag.ANALYTICS_STORAGE)) {
                    zzkb zzkbVar = this.zzc;
                    zzeo zzeoVar = zzkbVar.zzb;
                    if (zzeoVar == null) {
                        zzkbVar.zzs.zzaz().zzd().zza("Failed to get app instance id");
                        zzgiVar = this.zzc.zzs;
                    } else {
                        Preconditions.checkNotNull(this.zza);
                        strZzd = zzeoVar.zzd(this.zza);
                        if (strZzd != null) {
                            this.zzc.zzs.zzq().zzP(strZzd);
                            this.zzc.zzs.zzm().zze.zzb(strZzd);
                        }
                        this.zzc.zzQ();
                        zzgiVar = this.zzc.zzs;
                    }
                } else {
                    this.zzc.zzs.zzaz().zzl().zza("Analytics storage consent denied; will not get app instance id");
                    this.zzc.zzs.zzq().zzP(null);
                    this.zzc.zzs.zzm().zze.zzb(null);
                    zzgiVar = this.zzc.zzs;
                }
            } catch (RemoteException e2) {
                this.zzc.zzs.zzaz().zzd().zzb("Failed to get app instance id", e2);
                zzgiVar = this.zzc.zzs;
            }
            zzgiVar.zzv().zzV(this.zzb, strZzd);
        } catch (Throwable th) {
            this.zzc.zzs.zzv().zzV(this.zzb, null);
            throw th;
        }
    }
}
