package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfgv implements zzgax {
    final /* synthetic */ zzfgy zza;
    final /* synthetic */ zzfgz zzb;

    zzfgv(zzfgz zzfgzVar, zzfgy zzfgyVar) {
        this.zzb = zzfgzVar;
        this.zza = zzfgyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
            this.zzb.zzd.addFirst(this.zza);
            zzfgz zzfgzVar = this.zzb;
            if (zzfgzVar.zzf == 1) {
                zzfgzVar.zzh();
            }
        }
    }
}
