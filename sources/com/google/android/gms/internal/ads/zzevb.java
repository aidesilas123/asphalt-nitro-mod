package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.GuardedBy;
import com.google.common.util.concurrent.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzevb {
    private final Context zza;
    private final Set zzb;
    private final Executor zzc;
    private final zzfkh zzd;
    private final zzdtp zze;
    private long zzf = 0;

    @GuardedBy("this")
    private int zzg = 0;

    public zzevb(Context context, Executor executor, Set set, zzfkh zzfkhVar, zzdtp zzdtpVar) {
        this.zza = context;
        this.zzc = executor;
        this.zzb = set;
        this.zzd = zzfkhVar;
        this.zze = zzdtpVar;
    }

    public final h0 zza(final Object obj) {
        zzfjw zzfjwVarZza = zzfjv.zza(this.zza, 8);
        zzfjwVarZza.zzh();
        final ArrayList arrayList = new ArrayList(this.zzb.size());
        List arrayList2 = new ArrayList();
        zzbcu zzbcuVar = zzbdc.zzkT;
        if (!((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).split(","));
        }
        this.zzf = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        for (final zzeuy zzeuyVar : this.zzb) {
            if (!arrayList2.contains(String.valueOf(zzeuyVar.zza()))) {
                final long jElapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                h0 h0VarZzb = zzeuyVar.zzb();
                h0VarZzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeuz
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzb(jElapsedRealtime, zzeuyVar);
                    }
                }, zzcca.zzf);
                arrayList.add(h0VarZzb);
            }
        }
        h0 h0VarZza = zzgbb.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeva
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Iterator it = arrayList.iterator();
                while (true) {
                    Object obj2 = obj;
                    if (!it.hasNext()) {
                        return obj2;
                    }
                    zzeux zzeuxVar = (zzeux) ((h0) it.next()).get();
                    if (zzeuxVar != null) {
                        zzeuxVar.zzj(obj2);
                    }
                }
            }
        }, this.zzc);
        if (zzfkk.zza()) {
            zzfkg.zza(h0VarZza, this.zzd, zzfjwVarZza);
        }
        return h0VarZza;
    }

    public final void zzb(long j, zzeuy zzeuyVar) {
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j;
        if (((Boolean) zzbey.zza.zze()).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal runtime (ms) : " + zzfun.zzc(zzeuyVar.getClass().getCanonicalName()) + " = " + jElapsedRealtime);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbY)).booleanValue()) {
            zzdto zzdtoVarZza = this.zze.zza();
            zzdtoVarZza.zzb("action", "lat_ms");
            zzdtoVarZza.zzb("lat_grp", "sig_lat_grp");
            zzdtoVarZza.zzb("lat_id", String.valueOf(zzeuyVar.zza()));
            zzdtoVarZza.zzb("clat_ms", String.valueOf(jElapsedRealtime));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbZ)).booleanValue()) {
                synchronized (this) {
                    this.zzg++;
                }
                zzdtoVarZza.zzb("seq_num", com.google.android.gms.ads.internal.zzt.zzo().zzh().zzd());
                synchronized (this) {
                    if (this.zzg == this.zzb.size() && this.zzf != 0) {
                        this.zzg = 0;
                        String strValueOf = String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzf);
                        if (zzeuyVar.zza() <= 39 || zzeuyVar.zza() >= 52) {
                            zzdtoVarZza.zzb("lat_clsg", strValueOf);
                        } else {
                            zzdtoVarZza.zzb("lat_gmssg", strValueOf);
                        }
                    }
                }
            }
            zzdtoVarZza.zzh();
        }
    }
}
