package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgw implements Runnable {
    final /* synthetic */ zzll zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzha zzc;

    zzgw(zzha zzhaVar, zzll zzllVar, zzp zzpVar) {
        this.zzc = zzhaVar;
        this.zza = zzllVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzA();
        if (this.zza.zza() == null) {
            this.zzc.zza.zzO(this.zza, this.zzb);
        } else {
            this.zzc.zza.zzV(this.zza, this.zzb);
        }
    }
}
