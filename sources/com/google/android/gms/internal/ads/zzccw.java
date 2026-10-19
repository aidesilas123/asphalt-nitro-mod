package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzccw implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzcda zzc;

    zzccw(zzcda zzcdaVar, int i, int i2) {
        this.zzc = zzcdaVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcda zzcdaVar = this.zzc;
        if (zzcdaVar.zzq != null) {
            zzcdaVar.zzq.zzj(this.zza, this.zzb);
        }
    }
}
