package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdrt implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;

    public zzdrt(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4, zzhec zzhecVar5) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
        this.zzc = zzhecVar3;
        this.zzd = zzhecVar4;
        this.zze = zzhecVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextZza = ((zzciw) this.zza).zza();
        final String strZzb = ((zzdye) this.zzb).zzb();
        zzcbt zzcbtVarZza = ((zzcji) this.zzc).zza();
        final zzayz zzayzVar = (zzayz) this.zzd.zzb();
        final String str = (String) this.zze.zzb();
        zzayp zzaypVar = new zzayp(new zzayv(contextZza));
        zzbbo zzbboVarZza = zzbbp.zza();
        zzbboVarZza.zza(zzcbtVarZza.zzb);
        zzbboVarZza.zzc(zzcbtVarZza.zzc);
        zzbboVarZza.zzb(true != zzcbtVarZza.zzd ? 2 : 0);
        final zzbbp zzbbpVar = (zzbbp) zzbboVarZza.zzal();
        zzaypVar.zzb(new zzayo() { // from class: com.google.android.gms.internal.ads.zzdrs
            @Override // com.google.android.gms.internal.ads.zzayo
            public final void zza(zzbae zzbaeVar) {
                zzaza zzazaVar = (zzaza) zzbaeVar.zza().zzaB();
                zzazaVar.zza(zzayzVar);
                zzbaeVar.zze(zzazaVar);
                zzazw zzazwVar = (zzazw) zzbaeVar.zzb().zzaB();
                zzazwVar.zza(strZzb);
                zzazwVar.zzb(zzbbpVar);
                zzbaeVar.zzg(zzazwVar);
                zzbaeVar.zzh(str);
            }
        });
        return zzaypVar;
    }
}
