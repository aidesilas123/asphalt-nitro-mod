package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjw implements Runnable {
    final /* synthetic */ ComponentName zza;
    final /* synthetic */ zzka zzb;

    zzjw(zzka zzkaVar, ComponentName componentName) {
        this.zzb = zzkaVar;
        this.zza = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb.zzo(this.zzb.zza, this.zza);
    }
}
