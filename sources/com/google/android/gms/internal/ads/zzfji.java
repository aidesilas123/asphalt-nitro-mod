package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfji {

    @NonNull
    public final String zza;

    @NonNull
    public final String zzb;

    public zzfji(@NonNull String str, @NonNull String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfji)) {
            return false;
        }
        zzfji zzfjiVar = (zzfji) obj;
        return this.zza.equals(zzfjiVar.zza) && this.zzb.equals(zzfjiVar.zzb);
    }

    public final int hashCode() {
        return String.valueOf(this.zza).concat(String.valueOf(this.zzb)).hashCode();
    }
}
