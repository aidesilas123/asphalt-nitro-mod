package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbik extends zzbhl {
    final /* synthetic */ zzbin zza;

    /* synthetic */ zzbik(zzbin zzbinVar, zzbij zzbijVar) {
        this.zza = zzbinVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final void zze(zzbhc zzbhcVar, String str) {
        zzbin zzbinVar = this.zza;
        if (zzbinVar.zzb == null) {
            return;
        }
        zzbinVar.zzb.onCustomClick(zzbinVar.zzf(zzbhcVar), str);
    }
}
