package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzot implements zzos {
    public static final zzhy zza;
    public static final zzhy zzb;
    public static final zzhy zzc;
    public static final zzhy zzd;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza();
        zza = zzhvVarZza.zzd("measurement.id.lifecycle.app_in_background_parameter", 0L);
        zzb = zzhvVarZza.zzf("measurement.lifecycle.app_backgrounded_tracking", true);
        zzc = zzhvVarZza.zzf("measurement.lifecycle.app_in_background_parameter", false);
        zzd = zzhvVarZza.zzd("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final boolean zza() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }
}
