package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeyi {
    public static zzeuy zza(zzexm zzexmVar, zzesy zzesyVar, ScheduledExecutorService scheduledExecutorService, int i) {
        zzeuy zzeuyVar = zzexmVar;
        if (i == 0) {
            zzeuyVar = zzesyVar;
        }
        return new zzetg(zzeuyVar, 0L, scheduledExecutorService);
    }

    public static zzeuy zzb(zzexw zzexwVar, ScheduledExecutorService scheduledExecutorService) {
        return new zzetg(zzexwVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdW)).longValue(), scheduledExecutorService);
    }

    public static zzeuy zzc(zzeyr zzeyrVar, ScheduledExecutorService scheduledExecutorService) {
        return new zzetg(zzeyrVar, 0L, scheduledExecutorService);
    }
}
