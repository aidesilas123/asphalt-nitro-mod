package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzlf {
    com.google.android.gms.internal.measurement.zzgc zza;
    List zzb;
    List zzc;
    long zzd;
    final /* synthetic */ zzli zze;

    /* synthetic */ zzlf(zzli zzliVar, zzle zzleVar) {
        this.zze = zzliVar;
    }

    private static final long zzb(com.google.android.gms.internal.measurement.zzfs zzfsVar) {
        return ((zzfsVar.zzd() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, com.google.android.gms.internal.measurement.zzfs zzfsVar) {
        Preconditions.checkNotNull(zzfsVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (this.zzc.size() > 0 && zzb((com.google.android.gms.internal.measurement.zzfs) this.zzc.get(0)) != zzb(zzfsVar)) {
            return false;
        }
        long jZzbz = this.zzd + ((long) zzfsVar.zzbz());
        this.zze.zzg();
        if (jZzbz >= Math.max(0, ((Integer) zzel.zzh.zza(null)).intValue())) {
            return false;
        }
        this.zzd = jZzbz;
        this.zzc.add(zzfsVar);
        this.zzb.add(Long.valueOf(j));
        int size = this.zzc.size();
        this.zze.zzg();
        return size < Math.max(1, ((Integer) zzel.zzi.zza(null)).intValue());
    }
}
