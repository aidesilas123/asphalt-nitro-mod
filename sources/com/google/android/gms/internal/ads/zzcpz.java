package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcpz implements zzgax {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcqa zzb;

    zzcpz(zzcqa zzcqaVar, String str) {
        this.zzb = zzcqaVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzcqa zzcqaVar = this.zzb;
        zzcqaVar.zzh.zza(zzcqaVar.zzg.zzd(zzcqaVar.zze, zzcqaVar.zzf, false, this.zza, null, zzcqaVar.zzf.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcqa zzcqaVar = this.zzb;
        String str = (String) obj;
        zzcqaVar.zzh.zza(zzcqaVar.zzg.zzd(zzcqaVar.zze, zzcqaVar.zzf, false, this.zza, str, zzcqaVar.zzf.zzd));
    }
}
