package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzalw implements zzade {
    private final zzalt zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzalw(zzalt zzaltVar, int i, long j, long j2) {
        this.zza = zzaltVar;
        this.zzb = i;
        this.zzc = j;
        long j3 = (j2 - j) / ((long) zzaltVar.zzd);
        this.zzd = j3;
        this.zze = zzb(j3);
    }

    private final long zzb(long j) {
        return zzfs.zzs(j * ((long) this.zzb), 1000000L, this.zza.zzc, RoundingMode.FLOOR);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        long jMax = Math.max(0L, Math.min((((long) this.zza.zzc) * j) / (((long) this.zzb) * 1000000), this.zzd - 1));
        long j2 = ((long) this.zza.zzd) * jMax;
        long jZzb = zzb(jMax);
        zzadf zzadfVar = new zzadf(jZzb, this.zzc + j2);
        if (jZzb >= j || jMax == this.zzd - 1) {
            return new zzadc(zzadfVar, zzadfVar);
        }
        long j3 = jMax + 1;
        return new zzadc(zzadfVar, new zzadf(zzb(j3), this.zzc + (j3 * ((long) this.zza.zzd))));
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
