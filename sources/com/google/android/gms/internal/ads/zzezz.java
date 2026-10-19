package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzezz implements zzeob {
    final /* synthetic */ zzfaa zza;

    zzezz(zzfaa zzfaaVar) {
        this.zza = zzfaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcrj zzcrjVar = (zzcrj) obj;
        synchronized (this.zza) {
            zzcrj zzcrjVar2 = this.zza.zza;
            if (zzcrjVar2 != null) {
                zzcrjVar2.zzb();
            }
            zzfaa zzfaaVar = this.zza;
            zzfaaVar.zza = zzcrjVar;
            zzcrjVar.zzc(zzfaaVar);
            zzfaa zzfaaVar2 = this.zza;
            zzfaaVar2.zzg.zzk(new zzcrk(zzcrjVar, zzfaaVar2, zzfaaVar2.zzg, zzfaaVar2.zzi));
            zzcrjVar.zzj();
        }
    }
}
