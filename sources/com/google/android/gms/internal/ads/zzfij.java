package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfij implements zzgax {
    final /* synthetic */ zzfhz zza;
    final /* synthetic */ zzfil zzb;

    zzfij(zzfil zzfilVar, zzfhz zzfhzVar) {
        this.zzb = zzfilVar;
        this.zza = zzfhzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        this.zzb.zza.zzd.zzb(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb(Object obj) {
        this.zzb.zza.zzd.zzd(this.zza);
    }
}
