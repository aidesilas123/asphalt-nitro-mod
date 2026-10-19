package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzow implements zzov {
    public static final zzhy zza;
    public static final zzhy zzb;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza();
        zza = zzhvVarZza.zzf("measurement.validation.internal_limits_internal_event_params", true);
        zzb = zzhvVarZza.zzd("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final boolean zza() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
