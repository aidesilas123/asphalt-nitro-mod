package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeia implements zzdig {
    private final zzfdu zza;
    private final zzbrp zzb;
    private final AdFormat zzc;

    @Nullable
    private zzcyz zzd = null;

    zzeia(zzfdu zzfduVar, zzbrp zzbrpVar, AdFormat adFormat) {
        this.zza = zzfduVar;
        this.zzb = zzbrpVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdig
    public final void zza(boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
        boolean zZzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int iOrdinal = this.zzc.ordinal();
            if (iOrdinal == 1) {
                zZzs = this.zzb.zzs(ObjectWrapper.wrap(context));
            } else {
                if (iOrdinal != 2) {
                    if (iOrdinal == 6) {
                        zZzs = this.zzb.zzr(ObjectWrapper.wrap(context));
                    }
                    throw new zzdif("Adapter failed to show.");
                }
                zZzs = this.zzb.zzt(ObjectWrapper.wrap(context));
            }
            if (zZzs) {
                if (this.zzd == null) {
                    return;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbu)).booleanValue() || this.zza.zzZ != 2) {
                    return;
                }
                this.zzd.zza();
                return;
            }
            throw new zzdif("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdif(th);
        }
    }

    public final void zzb(zzcyz zzcyzVar) {
        this.zzd = zzcyzVar;
    }
}
