package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzdtu extends zzdtx {
    private final zzfjm zzg;

    public zzdtu(Executor executor, zzcbs zzcbsVar, zzfjm zzfjmVar, zzfjo zzfjoVar, Context context) {
        super(executor, zzcbsVar, zzfjoVar, context);
        this.zzg = zzfjmVar;
        zzfjmVar.zza(this.zzb);
    }

    public final Map zza() {
        return new HashMap(this.zzb);
    }
}
