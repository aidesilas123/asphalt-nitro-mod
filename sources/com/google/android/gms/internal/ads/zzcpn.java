package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcpn implements zzgax {
    final /* synthetic */ zzfla zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcpo zzc;

    zzcpn(zzcpo zzcpoVar, zzfla zzflaVar, String str) {
        this.zzc = zzcpoVar;
        this.zza = zzflaVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(final Throwable th) {
        zzgbl zzgblVar = this.zzc.zze;
        final zzfla zzflaVar = this.zza;
        final String str = this.zzb;
        zzgblVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpl
            @Override // java.lang.Runnable
            public final void run() {
                zzcpn zzcpnVar = this.zza;
                zzcpo zzcpoVar = zzcpnVar.zzc;
                zzcpoVar.zzh = zzbus.zza(zzcpoVar.zza);
                zzcpnVar.zzc.zzh.zzf(th, "AttributionReporting.registerSourceAndPingClickUrl");
                zzflaVar.zzc(str, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcpo zzcpoVar = this.zzc;
        final zzfla zzflaVar = this.zza;
        final String str = (String) obj;
        zzcpoVar.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpm
            @Override // java.lang.Runnable
            public final void run() {
                zzflaVar.zzc(str, null);
            }
        });
    }
}
