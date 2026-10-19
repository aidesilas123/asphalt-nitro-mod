package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeur implements zzeuy {
    private final boolean zza;

    zzeur(@Nullable zzfbp zzfbpVar) {
        this.zza = zzfbpVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return zzgbb.zzh(this.zza ? new zzeux() { // from class: com.google.android.gms.internal.ads.zzeuq
            @Override // com.google.android.gms.internal.ads.zzeux
            public final void zzj(Object obj) {
                ((Bundle) obj).putBoolean("sdk_prefetch", true);
            }
        } : null);
    }
}
