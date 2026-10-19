package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzfim {
    private static final h0 zza = zzgbb.zzh(null);
    private final zzgbl zzb;
    private final ScheduledExecutorService zzc;
    private final zzfin zzd;

    public zzfim(zzgbl zzgblVar, ScheduledExecutorService scheduledExecutorService, zzfin zzfinVar) {
        this.zzb = zzgblVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfinVar;
    }

    public final zzfic zza(Object obj, h0... h0VarArr) {
        return new zzfic(this, obj, Arrays.asList(h0VarArr), null);
    }

    public final zzfil zzb(Object obj, h0 h0Var) {
        return new zzfil(this, obj, h0Var, Collections.singletonList(h0Var), h0Var);
    }

    protected abstract String zzf(Object obj);
}
