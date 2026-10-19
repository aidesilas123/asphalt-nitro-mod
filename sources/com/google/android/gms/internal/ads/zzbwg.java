package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbwg implements Callable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbwi zzb;

    zzbwg(zzbwi zzbwiVar, Context context) {
        this.zzb = zzbwiVar;
        this.zza = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003a  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* bridge */ /* synthetic */ java.lang.Object call() throws java.lang.Exception {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzbwi r0 = r6.zzb
            java.util.WeakHashMap r0 = com.google.android.gms.internal.ads.zzbwi.zza(r0)
            android.content.Context r1 = r6.zza
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.ads.zzbwh r0 = (com.google.android.gms.internal.ads.zzbwh) r0
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzbeh r1 = com.google.android.gms.internal.ads.zzbel.zza
            java.lang.Object r1 = r1.zze()
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            long r3 = r0.zza
            long r3 = r3 + r1
            com.google.android.gms.common.util.Clock r1 = com.google.android.gms.ads.internal.zzt.zzB()
            long r1 = r1.currentTimeMillis()
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 >= 0) goto L2c
            goto L3a
        L2c:
            android.content.Context r1 = r6.zza
            com.google.android.gms.internal.ads.zzbwf r0 = r0.zzb
            com.google.android.gms.internal.ads.zzbwe r2 = new com.google.android.gms.internal.ads.zzbwe
            r2.<init>(r1, r0)
            com.google.android.gms.internal.ads.zzbwf r0 = r2.zza()
            goto L45
        L3a:
            android.content.Context r0 = r6.zza
            com.google.android.gms.internal.ads.zzbwe r1 = new com.google.android.gms.internal.ads.zzbwe
            r1.<init>(r0)
            com.google.android.gms.internal.ads.zzbwf r0 = r1.zza()
        L45:
            com.google.android.gms.internal.ads.zzbwi r1 = r6.zzb
            android.content.Context r2 = r6.zza
            java.util.WeakHashMap r3 = com.google.android.gms.internal.ads.zzbwi.zza(r1)
            com.google.android.gms.internal.ads.zzbwh r4 = new com.google.android.gms.internal.ads.zzbwh
            r4.<init>(r1, r0)
            r3.put(r2, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbwg.call():java.lang.Object");
    }
}
