package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzemr implements zzeob {
    final /* synthetic */ zzems zza;

    zzemr(zzems zzemsVar) {
        this.zza = zzemsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcrp zzcrpVar = (zzcrp) obj;
        synchronized (this.zza) {
            zzems zzemsVar = this.zza;
            if (zzemsVar.zzi != null) {
                zzemsVar.zzi.zzb();
            }
            this.zza.zzi = zzcrpVar;
            this.zza.zzi.zzj();
        }
    }
}
