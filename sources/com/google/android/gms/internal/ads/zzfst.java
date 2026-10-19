package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfst extends zzfsp {
    final /* synthetic */ zzfsz zza;

    zzfst(zzfsz zzfszVar) {
        this.zza = zzfszVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsp
    public final void zza() {
        synchronized (this.zza.zzg) {
            if (this.zza.zzl.get() > 0 && this.zza.zzl.decrementAndGet() > 0) {
                this.zza.zzc.zzc("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            zzfsz zzfszVar = this.zza;
            if (zzfszVar.zzn != null) {
                zzfszVar.zzc.zzc("Unbind from service.", new Object[0]);
                zzfsz zzfszVar2 = this.zza;
                zzfszVar2.zzb.unbindService(zzfszVar2.zzm);
                this.zza.zzh = false;
                this.zza.zzn = null;
                this.zza.zzm = null;
            }
            this.zza.zzw();
        }
    }
}
