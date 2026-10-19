package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzij implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzin zzb;

    zzij(zzin zzinVar, boolean z) {
        this.zzb = zzinVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zZzJ = this.zzb.zzs.zzJ();
        boolean zZzI = this.zzb.zzs.zzI();
        this.zzb.zzs.zzF(this.zza);
        if (zZzI == this.zza) {
            this.zzb.zzs.zzaz().zzj().zzb("Default data collection state already set to", Boolean.valueOf(this.zza));
        }
        if (this.zzb.zzs.zzJ() == zZzJ || this.zzb.zzs.zzJ() != this.zzb.zzs.zzI()) {
            this.zzb.zzs.zzaz().zzl().zzc("Default data collection is different than actual status", Boolean.valueOf(this.zza), Boolean.valueOf(zZzJ));
        }
        this.zzb.zzae();
    }
}
