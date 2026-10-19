package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzny implements zznx {
    public static final zzhy zza;
    public static final zzhy zzb;
    public static final zzhy zzc;
    public static final zzhy zzd;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhvVarZza.zzf("measurement.enhanced_campaign.client", true);
        zzb = zzhvVarZza.zzf("measurement.enhanced_campaign.service", true);
        zzc = zzhvVarZza.zzf("measurement.enhanced_campaign.srsltid.client", false);
        zzd = zzhvVarZza.zzf("measurement.enhanced_campaign.srsltid.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzc() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzd() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zze() {
        return ((Boolean) zzd.zzb()).booleanValue();
    }
}
