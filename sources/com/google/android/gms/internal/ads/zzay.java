package com.google.android.gms.internal.ads;

import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzay {

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final long zzc = 0;
    public final long zzd = Long.MIN_VALUE;
    public final boolean zze = false;
    public final boolean zzf = false;
    public final boolean zzg = false;
    public static final zzay zza = new zzba(new zzaw(), null);
    private static final String zzh = Integer.toString(0, 36);
    private static final String zzi = Integer.toString(1, 36);
    private static final String zzj = Integer.toString(2, 36);
    private static final String zzk = Integer.toString(3, 36);
    private static final String zzl = Integer.toString(4, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzav
    };

    /* synthetic */ zzay(zzaw zzawVar, zzax zzaxVar) {
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzay)) {
            return false;
        }
        long j = ((zzay) obj).zzc;
        return true;
    }

    public final int hashCode() {
        return ((int) (-9223372034707292160L)) * 29791;
    }
}
