package com.google.android.gms.internal.ads;

import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzhdk {
    final LinkedHashMap zza;

    zzhdk(int i) {
        this.zza = zzhdm.zzb(i);
    }

    final zzhdk zza(Object obj, zzhec zzhecVar) {
        zzhdx.zza(obj, "key");
        zzhdx.zza(zzhecVar, IronSourceConstants.EVENTS_PROVIDER);
        this.zza.put(obj, zzhecVar);
        return this;
    }
}
