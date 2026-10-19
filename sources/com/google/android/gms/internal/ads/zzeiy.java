package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeiy implements zzgax {
    final /* synthetic */ zzfdu zza;
    final /* synthetic */ zzeiz zzb;

    zzeiy(zzeiz zzeizVar, zzfdu zzfduVar) {
        this.zzb = zzeizVar;
        this.zza = zzfduVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zzh.zzb(th, this.zza);
            if (this.zzb.zzh.zze()) {
                zzeiz zzeizVar = this.zzb;
                zzeizVar.zze(zzeizVar.zzh.zza());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzejq zzejqVar = (zzejq) obj;
        synchronized (this.zzb) {
            this.zzb.zzh.zzc(zzejqVar, this.zza);
            if (this.zzb.zzh.zze()) {
                zzeiz zzeizVar = this.zzb;
                zzeizVar.zze(zzeizVar.zzh.zza());
            }
        }
    }
}
