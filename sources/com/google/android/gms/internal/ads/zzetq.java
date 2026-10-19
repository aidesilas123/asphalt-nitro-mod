package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzetq implements zzeuy {
    private final String zza;
    private final String zzb;

    zzetq(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 31;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return zzgbb.zzh(new zzetr(this.zza, this.zzb));
    }
}
