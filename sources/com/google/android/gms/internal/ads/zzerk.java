package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzerk implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzerk(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfwz zzfwzVarZzm;
        zzera zzeraVarZza = zzerc.zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zzb.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdS)).booleanValue()) {
            zzfwzVarZzm = zzfwz.zzn(new zzetg(zzeraVarZza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdT)).intValue(), scheduledExecutorService));
        } else {
            zzfwzVarZzm = zzfwz.zzm();
        }
        zzhdx.zzb(zzfwzVarZzm);
        return zzfwzVarZzm;
    }
}
