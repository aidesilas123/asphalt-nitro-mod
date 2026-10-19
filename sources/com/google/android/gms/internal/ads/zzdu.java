package com.google.android.gms.internal.ads;

import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdu {

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int zzc;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int zzd;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 359)
    public final int zze;

    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float zzf;
    public static final zzdu zza = new zzdu(0, 0, 0, 1.0f);
    private static final String zzg = Integer.toString(0, 36);
    private static final String zzh = Integer.toString(1, 36);
    private static final String zzi = Integer.toString(2, 36);
    private static final String zzj = Integer.toString(3, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzdt
    };

    public zzdu(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i2, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 359) int i3, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = f2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdu) {
            zzdu zzduVar = (zzdu) obj;
            if (this.zzc == zzduVar.zzc && this.zzd == zzduVar.zzd && this.zze == zzduVar.zze && this.zzf == zzduVar.zzf) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zzc + 217) * 31) + this.zzd) * 31) + this.zze) * 31) + Float.floatToRawIntBits(this.zzf);
    }
}
