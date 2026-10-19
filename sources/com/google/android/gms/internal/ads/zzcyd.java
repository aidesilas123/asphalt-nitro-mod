package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcyd implements zzhdp {
    private final zzcyc zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;

    public zzcyd(zzcyc zzcycVar, zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4) {
        this.zza = zzcycVar;
        this.zzb = zzhecVar;
        this.zzc = zzhecVar2;
        this.zzd = zzhecVar3;
        this.zze = zzhecVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    @Nullable
    public final /* synthetic */ Object zzb() {
        Context context = (Context) this.zzb.zzb();
        zzcbt zzcbtVarZza = ((zzcji) this.zzc).zza();
        zzfdu zzfduVarZza = ((zzcui) this.zzd).zza();
        zzbyk zzbykVar = new zzbyk();
        zzbyl zzbylVar = zzfduVarZza.zzB;
        if (zzbylVar == null) {
            return null;
        }
        zzfea zzfeaVar = zzfduVarZza.zzt;
        return new zzbyj(context, zzcbtVarZza, zzbylVar, zzfeaVar == null ? null : zzfeaVar.zzb, zzbykVar);
    }
}
