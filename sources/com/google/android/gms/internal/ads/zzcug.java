package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcug {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final h0 zzc;
    private volatile boolean zzd = true;

    public zzcug(Executor executor, ScheduledExecutorService scheduledExecutorService, h0 h0Var) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = h0Var;
    }

    static /* bridge */ /* synthetic */ void zzb(final zzcug zzcugVar, List list, final zzgax zzgaxVar) {
        if (list == null || list.isEmpty()) {
            zzcugVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcub
                @Override // java.lang.Runnable
                public final void run() {
                    zzgaxVar.zza(new zzdxn(3));
                }
            });
            return;
        }
        h0 h0VarZzh = zzgbb.zzh(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final h0 h0Var = (h0) it.next();
            h0VarZzh = zzgbb.zzn(zzgbb.zzf(h0VarZzh, Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzcuc
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    zzgaxVar.zza((Throwable) obj);
                    return zzgbb.zzh(null);
                }
            }, zzcugVar.zza), new zzgai() { // from class: com.google.android.gms.internal.ads.zzcud
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zza(zzgaxVar, h0Var, (zzctr) obj);
                }
            }, zzcugVar.zza);
        }
        zzgbb.zzr(h0VarZzh, new zzcuf(zzcugVar, zzgaxVar), zzcugVar.zza);
    }

    final /* synthetic */ h0 zza(zzgax zzgaxVar, h0 h0Var, zzctr zzctrVar) throws Exception {
        if (zzctrVar != null) {
            zzgaxVar.zzb(zzctrVar);
        }
        return zzgbb.zzo(h0Var, ((Long) zzbfi.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }

    final /* synthetic */ void zzd() {
        this.zzd = false;
    }

    public final void zze(zzgax zzgaxVar) {
        zzgbb.zzr(this.zzc, new zzcue(this, zzgaxVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
