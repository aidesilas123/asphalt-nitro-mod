package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzaeq {
    protected final zzadk zza;

    protected zzaeq(zzadk zzadkVar) {
        this.zza = zzadkVar;
    }

    protected abstract boolean zza(zzfj zzfjVar) throws zzcf;

    protected abstract boolean zzb(zzfj zzfjVar, long j) throws zzcf;

    public final boolean zzf(zzfj zzfjVar, long j) throws zzcf {
        return zza(zzfjVar) && zzb(zzfjVar, j);
    }
}
