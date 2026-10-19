package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzent implements zzeob {
    final /* synthetic */ zzenu zza;

    zzent(zzenu zzenuVar) {
        this.zza = zzenuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdgx zzdgxVar = (zzdgx) obj;
        synchronized (this.zza) {
            this.zza.zzj = zzdgxVar;
            this.zza.zzj.zzj();
        }
    }
}
