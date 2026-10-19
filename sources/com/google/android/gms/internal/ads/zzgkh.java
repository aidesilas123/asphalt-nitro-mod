package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgkh extends zzgdd {
    private final zzglp zza;

    public zzgkh(zzglp zzglpVar) {
        this.zza = zzglpVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgkh)) {
            return false;
        }
        zzglp zzglpVar = ((zzgkh) obj).zza;
        return this.zza.zzc().zzf().equals(zzglpVar.zzc().zzf()) && this.zza.zzc().zzh().equals(zzglpVar.zzc().zzh()) && this.zza.zzc().zzg().equals(zzglpVar.zzc().zzg());
    }

    public final int hashCode() {
        zzglp zzglpVar = this.zza;
        return Arrays.hashCode(new Object[]{zzglpVar.zzc(), zzglpVar.zzd()});
    }

    public final String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = this.zza.zzc().zzh();
        zzgss zzgssVarZzf = this.zza.zzc().zzf();
        zzgss zzgssVar = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVarZzf.ordinal();
        objArr[1] = iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK";
        return String.format("(typeUrl=%s, outputPrefixType=%s)", objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgdd
    public final boolean zza() {
        throw null;
    }

    public final zzglp zzb() {
        return this.zza;
    }
}
