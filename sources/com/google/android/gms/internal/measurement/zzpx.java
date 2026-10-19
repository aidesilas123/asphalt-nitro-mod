package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzpx implements zzpw {
    public static final zzhy zza = new zzhv(zzho.zza("com.google.android.gms.measurement")).zza().zzf("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.zzpw
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpw
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
