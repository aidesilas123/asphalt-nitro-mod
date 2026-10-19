package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzpa {
    public static final zzpa zza = new zzoy().zzd();
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;

    /* synthetic */ zzpa(zzoy zzoyVar, zzoz zzozVar) {
        this.zzb = zzoyVar.zza;
        this.zzc = zzoyVar.zzb;
        this.zzd = zzoyVar.zzc;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzpa.class == obj.getClass()) {
            zzpa zzpaVar = (zzpa) obj;
            if (this.zzb == zzpaVar.zzb && this.zzc == zzpaVar.zzc && this.zzd == zzpaVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.zzb;
        boolean z2 = this.zzc;
        return ((z ? 1 : 0) << 2) + (z2 ? 1 : 0) + (z2 ? 1 : 0) + (this.zzd ? 1 : 0);
    }
}
