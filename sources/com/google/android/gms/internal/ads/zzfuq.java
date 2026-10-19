package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfuq implements zzfuo {
    private static final zzfuo zza = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzfup
        @Override // com.google.android.gms.internal.ads.zzfuo
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private volatile zzfuo zzb;
    private Object zzc;

    zzfuq(zzfuo zzfuoVar) {
        this.zzb = zzfuoVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == zza) {
            obj = "<supplier that returned " + String.valueOf(this.zzc) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfuo
    public final Object zza() {
        zzfuo zzfuoVar = this.zzb;
        zzfuo zzfuoVar2 = zza;
        if (zzfuoVar != zzfuoVar2) {
            synchronized (this) {
                if (this.zzb != zzfuoVar2) {
                    Object objZza = this.zzb.zza();
                    this.zzc = objZza;
                    this.zzb = zzfuoVar2;
                    return objZza;
                }
            }
        }
        return this.zzc;
    }
}
