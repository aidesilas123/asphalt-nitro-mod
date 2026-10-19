package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzccy implements Runnable {
    final /* synthetic */ zzcda zza;

    zzccy(zzcda zzcdaVar) {
        this.zza = zzcdaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcda zzcdaVar = this.zza;
        if (zzcdaVar.zzq != null) {
            if (!zzcdaVar.zzr) {
                zzcdaVar.zzq.zzg();
                this.zza.zzr = true;
            }
            this.zza.zzq.zze();
        }
    }
}
