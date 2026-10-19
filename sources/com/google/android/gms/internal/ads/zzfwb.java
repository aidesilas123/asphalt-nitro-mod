package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfwb extends zzfvo {
    final /* synthetic */ zzfwd zza;
    private final Object zzb;
    private int zzc;

    zzfwb(zzfwd zzfwdVar, int i) {
        this.zza = zzfwdVar;
        Object[] objArr = zzfwdVar.zzb;
        objArr.getClass();
        this.zzb = objArr[i];
        this.zzc = i;
    }

    private final void zza() {
        int i = this.zzc;
        if (i != -1 && i < this.zza.size()) {
            Object obj = this.zzb;
            zzfwd zzfwdVar = this.zza;
            int i2 = this.zzc;
            Object[] objArr = zzfwdVar.zzb;
            objArr.getClass();
            if (zzftt.zza(obj, objArr[i2])) {
                return;
            }
        }
        this.zzc = this.zza.zzq(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfvo, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo, java.util.Map.Entry
    public final Object getValue() {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        Object[] objArr = this.zza.zzc;
        objArr.getClass();
        return objArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzfvo, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            this.zza.put(this.zzb, obj);
            return null;
        }
        Object[] objArr = this.zza.zzc;
        objArr.getClass();
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }
}
