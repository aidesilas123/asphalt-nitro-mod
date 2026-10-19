package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzwl {
    public final int zzc;
    private final zzfwu zze;
    private int zzf;
    public static final zzwl zza = new zzwl(new zzdc[0]);
    private static final String zzd = Integer.toString(0, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzwk
    };

    /* JADX WARN: Multi-variable type inference failed */
    public zzwl(zzdc... zzdcVarArr) {
        this.zze = zzfwu.zzk(zzdcVarArr);
        this.zzc = zzdcVarArr.length;
        int i = 0;
        while (i < this.zze.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.zze.size(); i3++) {
                if (((zzdc) this.zze.get(i)).equals(this.zze.get(i3))) {
                    zzez.zzd("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzwl.class == obj.getClass()) {
            zzwl zzwlVar = (zzwl) obj;
            if (this.zzc == zzwlVar.zzc && this.zze.equals(zzwlVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzf;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.zze.hashCode();
        this.zzf = iHashCode;
        return iHashCode;
    }

    public final int zza(zzdc zzdcVar) {
        int iIndexOf = this.zze.indexOf(zzdcVar);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzdc zzb(int i) {
        return (zzdc) this.zze.get(i);
    }
}
