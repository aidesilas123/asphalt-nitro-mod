package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbim extends zzbho {
    final /* synthetic */ zzbin zza;

    /* synthetic */ zzbim(zzbin zzbinVar, zzbil zzbilVar) {
        this.zza = zzbinVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void zze(zzbhc zzbhcVar) {
        zzbin zzbinVar = this.zza;
        zzbinVar.zza.onCustomTemplateAdLoaded(zzbinVar.zzf(zzbhcVar));
    }
}
