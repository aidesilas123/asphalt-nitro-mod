package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzob implements zzoa {
    public static final zzhy zza;
    public static final zzhy zzb;
    public static final zzhy zzc;

    static {
        zzhv zzhvVarZza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhvVarZza.zzf("measurement.collection.event_safelist", true);
        zzb = zzhvVarZza.zzf("measurement.service.store_null_safelist", true);
        zzc = zzhvVarZza.zzf("measurement.service.store_safelist", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzb() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzc() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }
}
