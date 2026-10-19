package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaml implements Runnable {
    final /* synthetic */ zzana zza;
    final /* synthetic */ zzamm zzb;

    zzaml(zzamm zzammVar, zzana zzanaVar) {
        this.zzb = zzammVar;
        this.zza = zzanaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzc.put(this.zza);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
