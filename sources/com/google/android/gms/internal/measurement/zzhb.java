package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzhb extends zzhw {
    private final Context zza;
    private final zzif zzb;

    zzhb(Context context, zzif zzifVar) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzifVar;
    }

    public final boolean equals(Object obj) {
        zzif zzifVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhw) {
            zzhw zzhwVar = (zzhw) obj;
            if (this.zza.equals(zzhwVar.zza()) && ((zzifVar = this.zzb) != null ? zzifVar.equals(zzhwVar.zzb()) : zzhwVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        zzif zzifVar = this.zzb;
        return iHashCode ^ (zzifVar == null ? 0 : zzifVar.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + this.zza.toString() + ", hermeticFileOverrides=" + String.valueOf(this.zzb) + "}";
    }

    @Override // com.google.android.gms.internal.measurement.zzhw
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw
    final zzif zzb() {
        return this.zzb;
    }
}
