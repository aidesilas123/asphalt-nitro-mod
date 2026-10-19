package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcpf implements zzczc {
    private final zzffm zza;

    public zzcpf(zzffm zzffmVar) {
        this.zza = zzffmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbo(@Nullable Context context) {
        try {
            this.zza.zzg();
        } catch (zzfev e2) {
            zzcbn.zzk("Cannot invoke onDestroy for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbq(@Nullable Context context) {
        try {
            this.zza.zzt();
        } catch (zzfev e2) {
            zzcbn.zzk("Cannot invoke onPause for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbr(@Nullable Context context) {
        try {
            this.zza.zzu();
            if (context != null) {
                this.zza.zzs(context);
            }
        } catch (zzfev e2) {
            zzcbn.zzk("Cannot invoke onResume for the mediation adapter.", e2);
        }
    }
}
