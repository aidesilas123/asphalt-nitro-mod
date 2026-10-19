package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbo {

    @Nullable
    public final Uri zzc = null;

    @Nullable
    public final String zzd = null;
    public static final zzbo zza = new zzbo(new zzbn());
    private static final String zze = Integer.toString(0, 36);
    private static final String zzf = Integer.toString(1, 36);
    private static final String zzg = Integer.toString(2, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzbm
    };

    private zzbo(zzbn zzbnVar) {
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbo)) {
            return false;
        }
        Uri uri = ((zzbo) obj).zzc;
        return zzfs.zzF(null, null) && zzfs.zzF(null, null);
    }

    public final int hashCode() {
        return 0;
    }
}
