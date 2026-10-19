package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzan {
    private final int zza;
    private final int zzb;
    private float zzc = 1.0f;

    public zzan(int i, int i2) {
        this.zza = i;
        this.zzb = i2;
    }

    public final zzan zza(float f2) {
        this.zzc = f2;
        return this;
    }

    public final zzap zzb() {
        return new zzap(this.zza, this.zzb, this.zzc, 0L, null);
    }
}
