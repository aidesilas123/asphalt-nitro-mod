package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzig implements Runnable {
    final /* synthetic */ Boolean zza;
    final /* synthetic */ zzin zzb;

    zzig(zzin zzinVar, Boolean bool) {
        this.zzb = zzinVar;
        this.zza = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzad(this.zza, true);
    }
}
