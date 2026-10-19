package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzii implements Runnable {
    final /* synthetic */ zzah zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzah zze;
    final /* synthetic */ zzin zzf;

    zzii(zzin zzinVar, zzah zzahVar, int i, long j, boolean z, zzah zzahVar2) {
        this.zzf = zzinVar;
        this.zza = zzahVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
        this.zze = zzahVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zzX(this.zza);
        zzin.zzw(this.zzf, this.zza, this.zzb, this.zzc, false, this.zzd);
        zzpp.zzc();
        if (this.zzf.zzs.zzf().zzs(null, zzel.zzaI)) {
            zzin.zzv(this.zzf, this.zza, this.zze);
        }
    }
}
