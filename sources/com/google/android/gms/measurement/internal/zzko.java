package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzko extends zzao {
    final /* synthetic */ zzkp zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzko(zzkp zzkpVar, zzhd zzhdVar) {
        super(zzhdVar);
        this.zza = zzkpVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzao
    @WorkerThread
    public final void zzc() {
        zzkp zzkpVar = this.zza;
        zzkpVar.zzc.zzg();
        zzkpVar.zzd(false, false, zzkpVar.zzc.zzs.zzaw().elapsedRealtime());
        zzkpVar.zzc.zzs.zzd().zzf(zzkpVar.zzc.zzs.zzaw().elapsedRealtime());
    }
}
