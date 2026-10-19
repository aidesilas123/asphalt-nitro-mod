package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzadu implements zzade {
    final /* synthetic */ zzadx zza;
    private final long zzb;

    public zzadu(zzadx zzadxVar, long j) {
        this.zza = zzadxVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        zzadc zzadcVarZza = this.zza.zzg[0].zza(j);
        int i = 1;
        while (true) {
            zzadx zzadxVar = this.zza;
            if (i >= zzadxVar.zzg.length) {
                return zzadcVarZza;
            }
            zzadc zzadcVarZza2 = zzadxVar.zzg[i].zza(j);
            if (zzadcVarZza2.zza.zzc < zzadcVarZza.zza.zzc) {
                zzadcVarZza = zzadcVarZza2;
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
