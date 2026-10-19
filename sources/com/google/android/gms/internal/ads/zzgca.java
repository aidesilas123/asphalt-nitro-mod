package com.google.android.gms.internal.ads;

import com.json.o2;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgca extends zzgar implements RunnableFuture {
    private volatile zzgbk zza;

    zzgca(zzgah zzgahVar) {
        this.zza = new zzgby(this, zzgahVar);
    }

    zzgca(Callable callable) {
        this.zza = new zzgbz(this, callable);
    }

    static zzgca zze(Runnable runnable, Object obj) {
        return new zzgca(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgbk zzgbkVar = this.zza;
        if (zzgbkVar != null) {
            zzgbkVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final String zza() {
        zzgbk zzgbkVar = this.zza;
        if (zzgbkVar == null) {
            return super.zza();
        }
        return "task=[" + zzgbkVar.toString() + o2.i.f6491e;
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final void zzb() {
        zzgbk zzgbkVar;
        if (zzt() && (zzgbkVar = this.zza) != null) {
            zzgbkVar.zzh();
        }
        this.zza = null;
    }
}
