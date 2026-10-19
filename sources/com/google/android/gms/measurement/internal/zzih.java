package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzih implements Runnable {
    final /* synthetic */ zzah zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ zzah zzf;
    final /* synthetic */ zzin zzg;

    zzih(zzin zzinVar, zzah zzahVar, long j, int i, long j2, boolean z, zzah zzahVar2) {
        this.zzg = zzinVar;
        this.zza = zzahVar;
        this.zzb = j;
        this.zzc = i;
        this.zzd = j2;
        this.zze = z;
        this.zzf = zzahVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzg.zzX(this.zza);
        this.zzg.zzM(this.zzb, false);
        zzin.zzw(this.zzg, this.zza, this.zzc, this.zzd, true, this.zze);
        zzpp.zzc();
        if (this.zzg.zzs.zzf().zzs(null, zzel.zzaI)) {
            zzin.zzv(this.zzg, this.zza, this.zzf);
        }
    }
}
