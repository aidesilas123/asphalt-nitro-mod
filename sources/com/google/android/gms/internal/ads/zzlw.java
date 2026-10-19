package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzlw extends zzty {
    private final zzcz zzd;

    zzlw(zzlx zzlxVar, zzda zzdaVar) {
        super(zzdaVar);
        this.zzd = new zzcz();
    }

    @Override // com.google.android.gms.internal.ads.zzty, com.google.android.gms.internal.ads.zzda
    public final zzcx zzd(int i, zzcx zzcxVar, boolean z) {
        zzcx zzcxVarZzd = this.zzc.zzd(i, zzcxVar, z);
        if (this.zzc.zze(zzcxVarZzd.zzd, this.zzd, 0L).zzb()) {
            zzcxVarZzd.zzl(zzcxVar.zzb, zzcxVar.zzc, zzcxVar.zzd, zzcxVar.zze, 0L, zzd.zza, true);
        } else {
            zzcxVarZzd.zzg = true;
        }
        return zzcxVarZzd;
    }
}
