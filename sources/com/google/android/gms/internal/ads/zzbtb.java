package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbtb extends zzbho {
    final /* synthetic */ zzbtc zza;

    /* synthetic */ zzbtb(zzbtc zzbtcVar, zzbta zzbtaVar) {
        this.zza = zzbtcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void zze(zzbhc zzbhcVar) {
        zzbtc zzbtcVar = this.zza;
        zzbtcVar.zza.onCustomFormatAdLoaded(zzbtcVar.zzf(zzbhcVar));
    }
}
