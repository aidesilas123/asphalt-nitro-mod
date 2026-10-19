package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfss extends zzfsp {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzfsp zzb;
    final /* synthetic */ zzfsz zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfss(zzfsz zzfszVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzfsp zzfspVar) {
        super(taskCompletionSource);
        this.zzc = zzfszVar;
        this.zza = taskCompletionSource2;
        this.zzb = zzfspVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsp
    public final void zza() {
        synchronized (this.zzc.zzg) {
            zzfsz.zzn(this.zzc, this.zza);
            if (this.zzc.zzl.getAndIncrement() > 0) {
                this.zzc.zzc.zzc("Already connected to the service.", new Object[0]);
            }
            zzfsz.zzp(this.zzc, this.zzb);
        }
    }
}
