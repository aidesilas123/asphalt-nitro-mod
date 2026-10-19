package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcan {
    public final h0 zza(Context context, int i) {
        zzccf zzccfVar = new zzccf();
        com.google.android.gms.ads.internal.client.zzay.zzb();
        if (zzcbg.zzt(context)) {
            zzcca.zza.execute(new zzcam(this, context, zzccfVar));
        }
        return zzccfVar;
    }
}
