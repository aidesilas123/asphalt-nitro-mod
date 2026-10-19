package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbsz extends zzbhl {
    final /* synthetic */ zzbtc zza;

    /* synthetic */ zzbsz(zzbtc zzbtcVar, zzbsy zzbsyVar) {
        this.zza = zzbtcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final void zze(zzbhc zzbhcVar, String str) {
        zzbtc zzbtcVar = this.zza;
        if (zzbtcVar.zzb == null) {
            return;
        }
        zzbtcVar.zzb.onCustomClick(zzbtcVar.zzf(zzbhcVar), str);
    }
}
