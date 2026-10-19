package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcas extends com.google.android.gms.ads.internal.util.zzb {
    final /* synthetic */ zzcaw zza;

    zzcas(zzcaw zzcawVar) {
        this.zza = zzcawVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        zzcaw zzcawVar = this.zza;
        zzbdi zzbdiVar = new zzbdi(zzcawVar.zze, zzcawVar.zzf.zza);
        synchronized (this.zza.zza) {
            try {
                com.google.android.gms.ads.internal.zzt.zze();
                zzbdl.zza(this.zza.zzh, zzbdiVar);
            } catch (IllegalArgumentException e2) {
                zzcbn.zzk("Cannot config CSI reporter.", e2);
            }
        }
    }
}
