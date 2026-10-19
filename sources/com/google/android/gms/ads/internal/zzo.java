package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzash;
import com.google.android.gms.internal.ads.zzasi;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzo implements Callable {
    final /* synthetic */ zzs zza;

    zzo(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzs zzsVar = this.zza;
        return new zzasi(zzash.zzt(zzsVar.zza.zza, zzsVar.zzd, false));
    }
}
