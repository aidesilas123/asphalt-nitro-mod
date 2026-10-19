package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.h0;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdyl {
    private final ScheduledExecutorService zza;
    private final zzgbl zzb;
    private final zzgbl zzc;
    private final zzdzc zzd;
    private final zzhdj zze;

    public zzdyl(ScheduledExecutorService scheduledExecutorService, zzgbl zzgblVar, zzgbl zzgblVar2, zzdzc zzdzcVar, zzhdj zzhdjVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzgblVar;
        this.zzc = zzgblVar2;
        this.zzd = zzdzcVar;
        this.zze = zzhdjVar;
    }

    final /* synthetic */ h0 zza(zzbwa zzbwaVar, int i, Throwable th) throws Exception {
        return ((zzebw) this.zze.zzb()).zzd(zzbwaVar, i);
    }

    public final h0 zzb(final zzbwa zzbwaVar) {
        h0 h0VarZzb;
        String str = zzbwaVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            h0VarZzb = zzgbb.zzg(new zzdzp(1));
        } else {
            h0VarZzb = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhA)).booleanValue() ? this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdyj
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzc(zzbwaVar);
                }
            }) : this.zzd.zzb(zzbwaVar);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgbb.zzf((zzgas) zzgbb.zzo(zzgas.zzu(h0VarZzb), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfw)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdyk
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zza(zzbwaVar, callingUid, (Throwable) obj);
            }
        }, this.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream zzc(zzbwa zzbwaVar) throws Exception {
        return (InputStream) this.zzd.zzb(zzbwaVar).get(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfw)).intValue(), TimeUnit.SECONDS);
    }
}
