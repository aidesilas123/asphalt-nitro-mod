package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdkc implements zzavq {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdkf zzb;

    zzdkc(zzdkf zzdkfVar, String str) {
        this.zzb = zzdkfVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzavq
    public final void zzbu(zzavp zzavpVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbH)).booleanValue()) {
            if (zzavpVar.zzj) {
                zzdkf zzdkfVar = this.zzb;
                zzdkfVar.zzy.put(this.zza, Boolean.TRUE);
                zzdkf zzdkfVar2 = this.zzb;
                zzdkfVar2.zzA(zzdkfVar2.zzo.zzf(), this.zzb.zzo.zzl(), this.zzb.zzo.zzm(), true);
                return;
            }
            return;
        }
        synchronized (this) {
            if (zzavpVar.zzj) {
                zzdkf zzdkfVar3 = this.zzb;
                if (zzdkfVar3.zzo == null) {
                    return;
                }
                zzdkfVar3.zzy.put(this.zza, Boolean.TRUE);
                zzdkf zzdkfVar4 = this.zzb;
                zzdkfVar4.zzA(zzdkfVar4.zzo.zzf(), this.zzb.zzo.zzl(), this.zzb.zzo.zzm(), true);
            }
        }
    }
}
