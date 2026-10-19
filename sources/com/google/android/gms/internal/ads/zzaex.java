package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaex extends zzacs {
    private final long zza;

    public zzaex(zzacf zzacfVar, long j) {
        super(zzacfVar);
        zzef.zzd(zzacfVar.zzf() >= j);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzacs, com.google.android.gms.internal.ads.zzacf
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacs, com.google.android.gms.internal.ads.zzacf
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacs, com.google.android.gms.internal.ads.zzacf
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}
