package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzif {
    private final Context zza;
    private final zzid zzb;

    public zzif(Context context, Handler handler, zzie zzieVar) {
        this.zza = context.getApplicationContext();
        this.zzb = new zzid(this, handler, zzieVar);
    }
}
