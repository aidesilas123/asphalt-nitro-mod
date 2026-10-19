package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzetg implements zzeuy {
    private final zzeuy zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzetg(zzeuy zzeuyVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzeuyVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        h0 h0VarZzb = this.zza.zzb();
        long j = this.zzb;
        if (j > 0) {
            h0VarZzb = zzgbb.zzo(h0VarZzb, j, TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgbb.zzf(h0VarZzb, Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzetf
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(null);
            }
        }, zzcca.zzf);
    }
}
