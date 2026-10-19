package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzky implements Runnable {
    final /* synthetic */ zzlj zza;
    final /* synthetic */ zzli zzb;

    zzky(zzli zzliVar, zzlj zzljVar) {
        this.zzb = zzliVar;
        this.zza = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzli.zzy(this.zzb, this.zza);
        this.zzb.zzR();
    }
}
