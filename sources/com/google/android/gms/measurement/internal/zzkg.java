package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkg implements Runnable {
    final /* synthetic */ zzli zza;
    final /* synthetic */ Runnable zzb;

    zzkg(zzki zzkiVar, zzli zzliVar, Runnable runnable) {
        this.zza = zzliVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzA();
        this.zza.zzz(this.zzb);
        this.zza.zzW();
    }
}
