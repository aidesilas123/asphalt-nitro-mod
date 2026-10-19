package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfbo implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;

    public zzfbo(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
        this.zzc = zzhecVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzfbl zzb() {
        Context context = (Context) this.zza.zzb();
        zzffz zzffzVar = (zzffz) this.zzb.zzb();
        zzfgr zzfgrVar = (zzfgr) this.zzc.zzb();
        zzcaq zzcaqVarZzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgq)).booleanValue() ? com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh() : com.google.android.gms.ads.internal.zzt.zzo().zzi().zzi();
        boolean z = false;
        if (zzcaqVarZzh != null && zzcaqVarZzh.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgs)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgp)).booleanValue() || z) {
                zzfgq zzfgqVarZza = zzfgrVar.zza(zzfgh.Rewarded, context, zzffzVar, new zzfap(new zzfam()));
                zzfbb zzfbbVar = new zzfbb(new zzfba());
                zzfgd zzfgdVar = zzfgqVarZza.zza;
                zzgbl zzgblVar = zzcca.zza;
                return new zzfar(zzfbbVar, new zzfax(zzfgdVar, zzgblVar), zzfgqVarZza.zzb, zzfgqVarZza.zza.zza().zzf, zzgblVar);
            }
        }
        return new zzfba();
    }
}
