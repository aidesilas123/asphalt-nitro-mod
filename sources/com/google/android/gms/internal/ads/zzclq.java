package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzclq implements zzdur {
    private final Long zza;
    private final String zzb;
    private final zzckm zzc;
    private final zzclu zzd;
    private final zzclq zze = this;

    /* synthetic */ zzclq(zzckm zzckmVar, zzclu zzcluVar, Long l, String str, zzclp zzclpVar) {
        this.zzc = zzckmVar;
        this.zzd = zzcluVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdur
    public final zzdvb zza() {
        zzclu zzcluVar = this.zzd;
        return zzdvc.zza(this.zza.longValue(), zzcluVar.zza, zzduv.zzc(zzcluVar.zzb), this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdur
    public final zzdvf zzb() {
        zzclu zzcluVar = this.zzd;
        return zzdvg.zza(this.zza.longValue(), zzcluVar.zza, zzduv.zzc(zzcluVar.zzb), this.zzc, this.zzb);
    }
}
