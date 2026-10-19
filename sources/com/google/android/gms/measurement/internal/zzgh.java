package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgh implements Runnable {
    final /* synthetic */ zzhl zza;
    final /* synthetic */ zzgi zzb;

    zzgh(zzgi zzgiVar, zzhl zzhlVar) {
        this.zzb = zzgiVar;
        this.zza = zzhlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi.zzA(this.zzb, this.zza);
        this.zzb.zzH(this.zza.zzg);
    }
}
