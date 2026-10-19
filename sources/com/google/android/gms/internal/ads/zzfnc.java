package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfnc implements Runnable {
    zzfnc() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzfnf.zzc != null) {
            zzfnf.zzc.post(zzfnf.zzd);
            zzfnf.zzc.postDelayed(zzfnf.zze, 200L);
        }
    }
}
