package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzepb implements zzeuy {
    private final h0 zza;
    private final Executor zzb;

    public zzepb(h0 h0Var, Executor executor) {
        this.zza = h0Var;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return zzgbb.zzn(this.zza, new zzgai() { // from class: com.google.android.gms.internal.ads.zzepa
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                final String str = (String) obj;
                return zzgbb.zzh(new zzeux() { // from class: com.google.android.gms.internal.ads.zzeoz
                    @Override // com.google.android.gms.internal.ads.zzeux
                    public final void zzj(Object obj2) {
                        ((Bundle) obj2).putString("ms", str);
                    }
                });
            }
        }, this.zzb);
    }
}
