package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdja implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;

    public zzdja(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3, zzhec zzhecVar4, zzhec zzhecVar5, zzhec zzhecVar6) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
        this.zzc = zzhecVar3;
        this.zzd = zzhecVar4;
        this.zze = zzhecVar5;
        this.zzf = zzhecVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzciq zzciqVar = (zzciq) this.zza.zzb();
        zzcxp zzcxpVarZza = ((zzcxz) this.zzb).zza();
        zzddy zzddyVarZza = ((zzdes) this.zzc).zza();
        zzdip zzdipVarZza = ((zzdir) this.zzd).zza();
        zzdaw zzdawVarZzb = ((zzcro) this.zze).zzb();
        zzejp zzejpVar = (zzejp) this.zzf.zzb();
        zzcsl zzcslVarZze = zzciqVar.zze();
        zzcslVarZze.zzi(zzcxpVarZza.zzj());
        zzcslVarZze.zzf(zzddyVarZza);
        zzcslVarZze.zzd(zzdipVarZza);
        zzcslVarZze.zze(new zzelv(null));
        zzcslVarZze.zzg(new zzctj(zzdawVarZzb, null));
        zzcslVarZze.zzc(new zzcrm(null));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdt)).booleanValue()) {
            zzcslVarZze.zzj(zzejy.zzb(zzejpVar));
        }
        zzctu zzctuVarZzc = zzcslVarZze.zzh().zzc();
        zzhdx.zzb(zzctuVarZzc);
        return zzctuVarZzc;
    }
}
