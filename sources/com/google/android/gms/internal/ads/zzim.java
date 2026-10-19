package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzim {
    public final String zza;
    public final zzam zzb;
    public final zzam zzc;
    public final int zzd;
    public final int zze;

    public zzim(String str, zzam zzamVar, zzam zzamVar2, int i, int i2) {
        boolean z = false;
        if (i == 0) {
            z = true;
        } else if (i2 == 0) {
            i2 = 0;
            z = true;
        }
        zzef.zzd(z);
        zzef.zzc(str);
        this.zza = str;
        this.zzb = zzamVar;
        Objects.requireNonNull(zzamVar2);
        this.zzc = zzamVar2;
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzim.class == obj.getClass()) {
            zzim zzimVar = (zzim) obj;
            if (this.zzd == zzimVar.zzd && this.zze == zzimVar.zze && this.zza.equals(zzimVar.zza) && this.zzb.equals(zzimVar.zzb) && this.zzc.equals(zzimVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zzd + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zze) * 31) + this.zza.hashCode()) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode();
    }
}
