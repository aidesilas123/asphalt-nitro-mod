package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgt implements Runnable {
    final /* synthetic */ zzav zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzha zzc;

    zzgt(zzha zzhaVar, zzav zzavVar, zzp zzpVar) {
        this.zzc = zzhaVar;
        this.zza = zzavVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzv(this.zzc.zzb(this.zza, this.zzb), this.zzb);
    }
}
