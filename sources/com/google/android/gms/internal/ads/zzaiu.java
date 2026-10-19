package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaiu implements zzade {
    final /* synthetic */ zzaiv zza;

    /* synthetic */ zzaiu(zzaiv zzaivVar, zzait zzaitVar) {
        this.zza = zzaivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        zzaiv zzaivVar = this.zza;
        return zzaivVar.zzd.zzf(zzaivVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        zzaiv zzaivVar = this.zza;
        long jZzg = zzaivVar.zzd.zzg(j);
        long j2 = zzaivVar.zzb;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(jZzg);
        zzaiv zzaivVar2 = this.zza;
        long jLongValue = j2 + bigIntegerValueOf.multiply(BigInteger.valueOf(zzaivVar2.zzc - zzaivVar2.zzb)).divide(BigInteger.valueOf(this.zza.zzf)).longValue();
        zzadf zzadfVar = new zzadf(j, Math.max(this.zza.zzb, Math.min(jLongValue - 30000, r0.zzc - 1)));
        return new zzadc(zzadfVar, zzadfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
