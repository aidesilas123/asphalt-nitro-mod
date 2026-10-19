package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjc implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzp zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf zze;
    final /* synthetic */ zzkb zzf;

    zzjc(zzkb zzkbVar, String str, String str2, zzp zzpVar, boolean z, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.zzf = zzkbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = z;
        this.zze = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e2;
        Bundle bundle2 = new Bundle();
        try {
            zzkb zzkbVar = this.zzf;
            zzeo zzeoVar = zzkbVar.zzb;
            if (zzeoVar == null) {
                zzkbVar.zzs.zzaz().zzd().zzc("Failed to get user properties; not connected to service", this.zza, this.zzb);
                this.zzf.zzs.zzv().zzR(this.zze, bundle2);
                return;
            }
            Preconditions.checkNotNull(this.zzc);
            List<zzll> listZzh = zzeoVar.zzh(this.zza, this.zzb, this.zzd, this.zzc);
            bundle = new Bundle();
            if (listZzh != null) {
                for (zzll zzllVar : listZzh) {
                    String str = zzllVar.zze;
                    if (str != null) {
                        bundle.putString(zzllVar.zzb, str);
                    } else {
                        Long l = zzllVar.zzd;
                        if (l != null) {
                            bundle.putLong(zzllVar.zzb, l.longValue());
                        } else {
                            Double d2 = zzllVar.zzg;
                            if (d2 != null) {
                                bundle.putDouble(zzllVar.zzb, d2.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.zzf.zzQ();
                    this.zzf.zzs.zzv().zzR(this.zze, bundle);
                } catch (RemoteException e3) {
                    e2 = e3;
                    this.zzf.zzs.zzaz().zzd().zzc("Failed to get user properties; remote exception", this.zza, e2);
                    this.zzf.zzs.zzv().zzR(this.zze, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.zzf.zzs.zzv().zzR(this.zze, bundle2);
                throw th;
            }
        } catch (RemoteException e4) {
            bundle = bundle2;
            e2 = e4;
        } catch (Throwable th2) {
            th = th2;
            this.zzf.zzs.zzv().zzR(this.zze, bundle2);
            throw th;
        }
    }
}
