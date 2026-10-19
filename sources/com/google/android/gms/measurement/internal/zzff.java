package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzff implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzfg zzb;

    zzff(zzfg zzfgVar, boolean z) {
        this.zzb = zzfgVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb.zzI(this.zza);
    }
}
