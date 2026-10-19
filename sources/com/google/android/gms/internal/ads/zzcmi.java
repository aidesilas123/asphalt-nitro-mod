package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcmi implements zzfdo {
    private final zzckm zza;
    private final zzcmi zzb = this;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;
    private final zzhec zzj;

    /* synthetic */ zzcmi(zzckm zzckmVar, Context context, String str, zzcmh zzcmhVar) {
        this.zza = zzckmVar;
        zzhdp zzhdpVarZza = zzhdq.zza(context);
        this.zzc = zzhdpVarZza;
        zzfbo zzfboVar = new zzfbo(zzhdpVarZza, zzckmVar.zzaG, zzckmVar.zzaH);
        this.zzd = zzfboVar;
        zzhec zzhecVarZzc = zzhdo.zzc(new zzfcy(zzckmVar.zzaG));
        this.zze = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(zzfen.zza());
        this.zzf = zzhecVarZzc2;
        zzhec zzhecVarZzc3 = zzhdo.zzc(new zzfdi(zzhdpVarZza, zzckmVar.zzo, zzckmVar.zzU, zzfboVar, zzhecVarZzc, zzfes.zza(), zzhecVarZzc2));
        this.zzg = zzhecVarZzc3;
        this.zzh = zzhdo.zzc(new zzfds(zzhecVarZzc3, zzhecVarZzc, zzhecVarZzc2));
        zzhdp zzhdpVarZzc = zzhdq.zzc(str);
        this.zzi = zzhdpVarZzc;
        this.zzj = zzhdo.zzc(new zzfdm(zzhdpVarZzc, zzhecVarZzc3, zzhdpVarZza, zzhecVarZzc, zzhecVarZzc2, zzckmVar.zzh, zzckmVar.zzV, zzckmVar.zzZ));
    }

    @Override // com.google.android.gms.internal.ads.zzfdo
    public final zzfdl zza() {
        return (zzfdl) this.zzj.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfdo
    public final zzfdr zzb() {
        return (zzfdr) this.zzh.zzb();
    }
}
