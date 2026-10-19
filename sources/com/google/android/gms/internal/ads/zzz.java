package com.google.android.gms.internal.ads;

import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzz {
    public final int zzc = 0;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int zzd = 0;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int zze = 0;

    @Nullable
    public final String zzf = null;
    public static final zzz zza = new zzz(new zzx(0), null);
    private static final String zzg = Integer.toString(0, 36);
    private static final String zzh = Integer.toString(1, 36);
    private static final String zzi = Integer.toString(2, 36);
    private static final String zzj = Integer.toString(3, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzw
    };

    /* synthetic */ zzz(zzx zzxVar, zzy zzyVar) {
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzz)) {
            return false;
        }
        int i = ((zzz) obj).zzc;
        return zzfs.zzF(null, null);
    }

    public final int hashCode() {
        return 15699857;
    }
}
