package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzctt implements zzctu {
    private final Map zza;

    zzctt(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzctu
    @Nullable
    public final zzefv zza(int i, String str) {
        return (zzefv) this.zza.get(str);
    }
}
