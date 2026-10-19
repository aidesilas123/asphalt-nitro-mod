package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeqc implements zzeuy {

    @VisibleForTesting
    final zzcaw zza;

    @VisibleForTesting
    AppSetIdClient zzb;
    private final ScheduledExecutorService zzc;
    private final zzgbl zzd;
    private final Context zze;

    zzeqc(Context context, zzcaw zzcawVar, ScheduledExecutorService scheduledExecutorService, zzgbl zzgblVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcE)).booleanValue()) {
            this.zzb = AppSet.getClient(context);
        }
        this.zze = context;
        this.zza = zzcawVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcA)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcF)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcB)).booleanValue()) {
                    return zzgbb.zzm(zzfrd.zza(this.zzb.getAppSetIdInfo(), null), new zzftn() { // from class: com.google.android.gms.internal.ads.zzepz
                        @Override // com.google.android.gms.internal.ads.zzftn
                        public final Object apply(Object obj) {
                            AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                            return new zzeqd(appSetIdInfo.getId(), appSetIdInfo.getScope());
                        }
                    }, zzcca.zzf);
                }
                Task<AppSetIdInfo> taskZza = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcE)).booleanValue() ? zzffu.zza(this.zze) : this.zzb.getAppSetIdInfo();
                if (taskZza == null) {
                    return zzgbb.zzh(new zzeqd(null, -1));
                }
                h0 h0VarZzn = zzgbb.zzn(zzfrd.zza(taskZza, null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzeqa
                    @Override // com.google.android.gms.internal.ads.zzgai
                    public final h0 zza(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        return appSetIdInfo == null ? zzgbb.zzh(new zzeqd(null, -1)) : zzgbb.zzh(new zzeqd(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                }, zzcca.zzf);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcC)).booleanValue()) {
                    h0VarZzn = zzgbb.zzo(h0VarZzn, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcD)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgbb.zze(h0VarZzn, Exception.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzeqb
                    @Override // com.google.android.gms.internal.ads.zzftn
                    public final Object apply(Object obj) {
                        this.zza.zza.zzw((Exception) obj, "AppSetIdInfoSignal");
                        return new zzeqd(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzgbb.zzh(new zzeqd(null, -1));
    }
}
