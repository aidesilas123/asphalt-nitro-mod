package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcdy implements Runnable {
    private final zzcdk zza;
    private boolean zzb = false;

    zzcdy(zzcdk zzcdkVar) {
        this.zza = zzcdkVar;
    }

    private final void zzc() {
        zzfqv zzfqvVar = com.google.android.gms.ads.internal.util.zzt.zza;
        zzfqvVar.removeCallbacks(this);
        zzfqvVar.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzb) {
            return;
        }
        this.zza.zzt();
        zzc();
    }

    public final void zza() {
        this.zzb = true;
        this.zza.zzt();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
