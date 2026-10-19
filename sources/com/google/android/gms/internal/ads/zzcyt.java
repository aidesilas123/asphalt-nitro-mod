package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
public final class zzcyt extends zzddv implements zzcyl {
    @VisibleForTesting
    public zzcyt(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzcys
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzcyx) obj).zzp(zzeVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzb() {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzcyr
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzcyx) obj).zzp(zzffr.zzd(11, null, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzc(final zzdif zzdifVar) {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzcyq
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzcyx) obj).zzp(zzffr.zzd(12, zzdifVar.getMessage(), null));
            }
        });
    }
}
