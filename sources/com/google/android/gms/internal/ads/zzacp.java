package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacp implements zzade {
    private final zzacr zza;
    private final long zzb;

    public zzacp(zzacr zzacrVar, long j) {
        this.zza = zzacrVar;
        this.zzb = j;
    }

    private final zzadf zzb(long j, long j2) {
        return new zzadf((j * 1000000) / ((long) this.zza.zze), this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        zzef.zzb(this.zza.zzk);
        zzacr zzacrVar = this.zza;
        zzacq zzacqVar = zzacrVar.zzk;
        long[] jArr = zzacqVar.zza;
        long[] jArr2 = zzacqVar.zzb;
        int iZzc = zzfs.zzc(jArr, zzacrVar.zzb(j), true, false);
        zzadf zzadfVarZzb = zzb(iZzc == -1 ? 0L : jArr[iZzc], iZzc != -1 ? jArr2[iZzc] : 0L);
        if (zzadfVarZzb.zzb == j || iZzc == jArr.length - 1) {
            return new zzadc(zzadfVarZzb, zzadfVarZzb);
        }
        int i = iZzc + 1;
        return new zzadc(zzadfVarZzb, zzb(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
