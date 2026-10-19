package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzbds {
    private final Map zza = new HashMap();
    private final zzbdu zzb;

    public zzbds(zzbdu zzbduVar) {
        this.zzb = zzbduVar;
    }

    public final zzbdu zza() {
        return this.zzb;
    }

    public final void zzb(String str, @Nullable zzbdr zzbdrVar) {
        this.zza.put(str, zzbdrVar);
    }

    public final void zzc(String str, String str2, long j) {
        zzbdr zzbdrVar = (zzbdr) this.zza.get(str2);
        String[] strArr = {str};
        if (zzbdrVar != null) {
            this.zzb.zze(zzbdrVar, j, strArr);
        }
        this.zza.put(str, new zzbdr(j, null, null));
    }
}
