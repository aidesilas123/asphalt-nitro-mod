package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zznj implements zzni {
    public static final zzhy zza;
    public static final zzhy zzb;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza();
        zza = zzhvVarZza.zzf("measurement.androidId.delete_feature", true);
        zzb = zzhvVarZza.zzf("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzni
    public final boolean zza() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
