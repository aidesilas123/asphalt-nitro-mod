package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzawh implements Runnable {
    final /* synthetic */ zzawi zza;

    zzawh(zzawi zzawiVar) {
        this.zza = zzawiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza.zzc) {
            zzawi zzawiVar = this.zza;
            if (zzawiVar.zzd && zzawiVar.zze) {
                zzawiVar.zzd = false;
                zzcbn.zze("App went background");
                Iterator it = this.zza.zzf.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzawj) it.next()).zza(false);
                    } catch (Exception e2) {
                        zzcbn.zzh("", e2);
                    }
                }
            } else {
                zzcbn.zze("App is still foreground");
            }
        }
    }
}
