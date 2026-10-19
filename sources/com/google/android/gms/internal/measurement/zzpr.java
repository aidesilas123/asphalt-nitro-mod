package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzpr implements zzpq {
    public static final zzhy zza;
    public static final zzhy zzb;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhvVarZza.zzf("measurement.collection.enable_session_stitching_token.client.dev", false);
        zzb = zzhvVarZza.zzf("measurement.collection.enable_session_stitching_token.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zzc() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }
}
