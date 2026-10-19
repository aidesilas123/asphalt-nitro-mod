package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdjg implements zzbkd {
    private final WeakReference zza;

    /* synthetic */ zzdjg(zzdjh zzdjhVar, zzdjf zzdjfVar) {
        this.zza = new WeakReference(zzdjhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        zzdjh zzdjhVar = (zzdjh) this.zza.get();
        if (zzdjhVar == null) {
            return;
        }
        zzdjhVar.zzg.zza();
    }
}
