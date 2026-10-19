package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgkp {
    private static final zzgkp zza = new zzgkp();
    private static final zzgko zzb = new zzgko(null);
    private final AtomicReference zzc = new AtomicReference();

    public static zzgkp zza() {
        return zza;
    }

    public final zzgor zzb() {
        zzgor zzgorVar = (zzgor) this.zzc.get();
        return zzgorVar == null ? zzb : zzgorVar;
    }
}
