package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgba {
    private final boolean zza;
    private final zzfwu zzb;

    /* synthetic */ zzgba(boolean z, zzfwu zzfwuVar, zzgaz zzgazVar) {
        this.zza = z;
        this.zzb = zzfwuVar;
    }

    public final h0 zza(Callable callable, Executor executor) {
        return new zzgao(this.zzb, this.zza, executor, callable);
    }
}
