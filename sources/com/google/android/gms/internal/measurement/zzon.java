package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzon implements zzom {
    public static final zzhy zza;
    public static final zzhy zzb;
    public static final zzhy zzc;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza();
        zza = zzhvVarZza.zzf("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzb = zzhvVarZza.zzf("measurement.client.sessions.check_on_startup", true);
        zzc = zzhvVarZza.zzf("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzom
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzom
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
