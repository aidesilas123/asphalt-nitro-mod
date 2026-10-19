package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zznv implements zznu {
    public static final zzhy zza;
    public static final zzhy zzb;
    public static final zzhy zzc;
    public static final zzhy zzd;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza();
        zza = zzhvVarZza.zzf("measurement.client.consent_state_v1", true);
        zzb = zzhvVarZza.zzf("measurement.client.3p_consent_state_v1", true);
        zzc = zzhvVarZza.zzf("measurement.service.consent_state_v1_W36", true);
        zzd = zzhvVarZza.zzd("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override // com.google.android.gms.internal.measurement.zznu
    public final long zza() {
        return ((Long) zzd.zzb()).longValue();
    }
}
