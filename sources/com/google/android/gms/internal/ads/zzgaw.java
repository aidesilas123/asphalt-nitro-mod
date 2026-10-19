package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgaw extends zzgau implements h0 {
    protected zzgaw() {
    }

    @Override // com.google.common.util.concurrent.h0
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgau
    protected /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    protected abstract h0 zzc();
}
