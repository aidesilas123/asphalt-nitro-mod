package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeme {
    private final ConcurrentHashMap zza = new ConcurrentHashMap();
    private final zzdrk zzb;

    public zzeme(zzdrk zzdrkVar) {
        this.zzb = zzdrkVar;
    }

    public final zzbrp zza(String str) {
        if (this.zza.containsKey(str)) {
            return (zzbrp) this.zza.get(str);
        }
        return null;
    }

    public final void zzb(String str) {
        try {
            this.zza.put(str, this.zzb.zzb(str));
        } catch (RemoteException e2) {
            zzcbn.zzh("Couldn't create RTB adapter : ", e2);
        }
    }
}
