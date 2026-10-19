package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjy implements Runnable {
    final /* synthetic */ zzka zza;

    zzjy(zzka zzkaVar) {
        this.zza = zzkaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.zza.zza;
        Context contextZzav = zzkbVar.zzs.zzav();
        this.zza.zza.zzs.zzax();
        zzkb.zzo(zzkbVar, new ComponentName(contextZzav, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
