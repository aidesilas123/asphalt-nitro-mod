package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzhq implements Runnable {
    final /* synthetic */ zzin zza;

    zzhq(zzin zzinVar) {
        this.zza = zzinVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb.zzb();
    }
}
