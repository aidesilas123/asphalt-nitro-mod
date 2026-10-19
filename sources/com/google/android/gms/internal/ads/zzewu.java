package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzewu implements zzeuy {
    private final zzcaw zza;
    private final String zzb;
    private final ScheduledExecutorService zzc;
    private final zzgbl zzd;
    private final zzaxs zze;

    zzewu(String str, zzaxs zzaxsVar, zzcaw zzcawVar, ScheduledExecutorService scheduledExecutorService, zzgbl zzgblVar) {
        this.zzb = str;
        this.zze = zzaxsVar;
        this.zza = zzcawVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcA)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcF)).booleanValue()) {
                h0 h0VarZzn = zzgbb.zzn(zzfrd.zza(Tasks.forResult(null), null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzews
                    @Override // com.google.android.gms.internal.ads.zzgai
                    public final h0 zza(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        return appSetIdInfo == null ? zzgbb.zzh(new zzewv(null, -1)) : zzgbb.zzh(new zzewv(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                }, this.zzd);
                if (((Boolean) zzbek.zza.zze()).booleanValue()) {
                    h0VarZzn = zzgbb.zzo(h0VarZzn, ((Long) zzbek.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgbb.zze(h0VarZzn, Exception.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzewt
                    @Override // com.google.android.gms.internal.ads.zzftn
                    public final Object apply(Object obj) {
                        return this.zza.zzc((Exception) obj);
                    }
                }, this.zzd);
            }
        }
        return zzgbb.zzh(new zzewv(null, -1));
    }

    final /* synthetic */ zzewv zzc(Exception exc) {
        this.zza.zzw(exc, "AppSetIdInfoGmscoreSignal");
        return new zzewv(null, -1);
    }
}
