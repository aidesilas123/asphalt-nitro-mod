package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzclu implements zzduz {
    private final Context zza;
    private final zzblb zzb;
    private final zzckm zzc;
    private final zzclu zzd = this;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;

    /* synthetic */ zzclu(zzckm zzckmVar, Context context, zzblb zzblbVar, zzclt zzcltVar) {
        this.zzc = zzckmVar;
        this.zza = context;
        this.zzb = zzblbVar;
        zzhdp zzhdpVarZza = zzhdq.zza(this);
        this.zze = zzhdpVarZza;
        zzhdp zzhdpVarZza2 = zzhdq.zza(zzblbVar);
        this.zzf = zzhdpVarZza2;
        zzduv zzduvVar = new zzduv(zzhdpVarZza2);
        this.zzg = zzduvVar;
        this.zzh = zzhdo.zzc(new zzdux(zzhdpVarZza, zzduvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzduz
    public final zzduq zzb() {
        return new zzclo(this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzduz
    public final zzduw zzd() {
        return (zzduw) this.zzh.zzb();
    }
}
