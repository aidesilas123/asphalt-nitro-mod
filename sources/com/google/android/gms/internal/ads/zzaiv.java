package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaiv implements zzajc {
    private final zzajb zza;
    private final long zzb;
    private final long zzc;
    private final zzajh zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;

    public zzaiv(zzajh zzajhVar, long j, long j2, long j3, long j4, boolean z) {
        zzef.zzd(j >= 0 && j2 > j);
        this.zzd = zzajhVar;
        this.zzb = j;
        this.zzc = j2;
        if (j3 == j2 - j || z) {
            this.zzf = j4;
            this.zze = 4;
        } else {
            this.zze = 0;
        }
        this.zza = new zzajb();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    @Override // com.google.android.gms.internal.ads.zzajc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzd(com.google.android.gms.internal.ads.zzacf r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiv.zzd(com.google.android.gms.internal.ads.zzacf):long");
    }

    @Override // com.google.android.gms.internal.ads.zzajc
    @Nullable
    public final /* bridge */ /* synthetic */ zzade zze() {
        zzait zzaitVar = null;
        if (this.zzf != 0) {
            return new zzaiu(this, zzaitVar);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajc
    public final void zzg(long j) {
        this.zzh = Math.max(0L, Math.min(j, this.zzf - 1));
        this.zze = 2;
        this.zzi = this.zzb;
        this.zzj = this.zzc;
        this.zzk = 0L;
        this.zzl = this.zzf;
    }
}
