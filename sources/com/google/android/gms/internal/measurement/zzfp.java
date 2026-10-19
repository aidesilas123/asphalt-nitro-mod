package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfp extends zzjy implements zzlk {
    private zzfp() {
        super(zzfq.zza);
    }

    /* synthetic */ zzfp(zzfj zzfjVar) {
        super(zzfq.zza);
    }

    public final zzfp zza(long j) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfq.zzf((zzfq) this.zza, j);
        return this;
    }

    public final zzfp zzb(int i) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfq.zze((zzfq) this.zza, i);
        return this;
    }
}
