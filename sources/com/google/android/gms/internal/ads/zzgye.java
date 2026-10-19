package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgye {
    private static final zzgye zza = new zzgye();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzgyq zzb = new zzgxo();

    private zzgye() {
    }

    public static zzgye zza() {
        return zza;
    }

    public final zzgyp zzb(Class cls) {
        zzgww.zzc(cls, "messageType");
        zzgyp zzgypVarZza = (zzgyp) this.zzc.get(cls);
        if (zzgypVarZza == null) {
            zzgypVarZza = this.zzb.zza(cls);
            zzgww.zzc(cls, "messageType");
            zzgyp zzgypVar = (zzgyp) this.zzc.putIfAbsent(cls, zzgypVarZza);
            if (zzgypVar != null) {
                return zzgypVar;
            }
        }
        return zzgypVarZza;
    }
}
