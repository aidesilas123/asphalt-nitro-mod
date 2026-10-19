package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zziv implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zziu zzb;
    final /* synthetic */ zziu zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzjb zze;

    zziv(zzjb zzjbVar, Bundle bundle, zziu zziuVar, zziu zziuVar2, long j) {
        this.zze = zzjbVar;
        this.zza = bundle;
        this.zzb = zziuVar;
        this.zzc = zziuVar2;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjb.zzp(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
