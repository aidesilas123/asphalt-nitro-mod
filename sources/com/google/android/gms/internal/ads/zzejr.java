package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzejr {
    private final zzffg zza;
    private final zzdrh zzb;
    private final zzdtp zzc;
    private final zzfje zzd;

    public zzejr(zzffg zzffgVar, zzdrh zzdrhVar, zzdtp zzdtpVar, zzfje zzfjeVar) {
        this.zza = zzffgVar;
        this.zzb = zzdrhVar;
        this.zzc = zzdtpVar;
        this.zzd = zzfjeVar;
    }

    public final void zza(zzfdy zzfdyVar, zzfdu zzfduVar, int i, zzefz zzefzVar, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziv)).booleanValue()) {
            zzfjd zzfjdVarZzb = zzfjd.zzb("adapter_status");
            zzfjdVarZzb.zzg(zzfdyVar);
            zzfjdVarZzb.zzf(zzfduVar);
            zzfjdVarZzb.zza("adapter_l", String.valueOf(j));
            zzfjdVarZzb.zza("sc", Integer.toString(i));
            if (zzefzVar != null) {
                zzfjdVarZzb.zza("arec", Integer.toString(zzefzVar.zzb().zza));
                String strZza = this.zza.zza(zzefzVar.getMessage());
                if (strZza != null) {
                    zzfjdVarZzb.zza("areec", strZza);
                }
            }
            zzdrg zzdrgVarZzb = this.zzb.zzb(zzfduVar.zzu);
            if (zzdrgVarZzb != null) {
                zzfjdVarZzb.zza("ancn", zzdrgVarZzb.zza);
                zzbsd zzbsdVar = zzdrgVarZzb.zzb;
                if (zzbsdVar != null) {
                    zzfjdVarZzb.zza("adapter_v", zzbsdVar.toString());
                }
                zzbsd zzbsdVar2 = zzdrgVarZzb.zzc;
                if (zzbsdVar2 != null) {
                    zzfjdVarZzb.zza("adapter_sv", zzbsdVar2.toString());
                }
            }
            this.zzd.zzb(zzfjdVarZzb);
            return;
        }
        zzdto zzdtoVarZza = this.zzc.zza();
        zzdtoVarZza.zze(zzfdyVar);
        zzdtoVarZza.zzd(zzfduVar);
        zzdtoVarZza.zzb("action", "adapter_status");
        zzdtoVarZza.zzb("adapter_l", String.valueOf(j));
        zzdtoVarZza.zzb("sc", Integer.toString(i));
        if (zzefzVar != null) {
            zzdtoVarZza.zzb("arec", Integer.toString(zzefzVar.zzb().zza));
            String strZza2 = this.zza.zza(zzefzVar.getMessage());
            if (strZza2 != null) {
                zzdtoVarZza.zzb("areec", strZza2);
            }
        }
        zzdrg zzdrgVarZzb2 = this.zzb.zzb(zzfduVar.zzu);
        if (zzdrgVarZzb2 != null) {
            zzdtoVarZza.zzb("ancn", zzdrgVarZzb2.zza);
            zzbsd zzbsdVar3 = zzdrgVarZzb2.zzb;
            if (zzbsdVar3 != null) {
                zzdtoVarZza.zzb("adapter_v", zzbsdVar3.toString());
            }
            zzbsd zzbsdVar4 = zzdrgVarZzb2.zzc;
            if (zzbsdVar4 != null) {
                zzdtoVarZza.zzb("adapter_sv", zzbsdVar4.toString());
            }
        }
        zzdtoVarZza.zzg();
    }
}
