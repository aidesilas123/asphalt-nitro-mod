package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgjs implements zzgcq {
    private final zzgke zza;
    private final Class zzb;

    public zzgjs(zzgke zzgkeVar, Class cls) {
        if (!zzgkeVar.zzl().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzgkeVar.toString(), cls.getName()));
        }
        this.zza = zzgkeVar;
        this.zzb = cls;
    }

    @Override // com.google.android.gms.internal.ads.zzgcq
    public final zzgrm zza(zzgve zzgveVar) throws GeneralSecurityException {
        try {
            zzgkd zzgkdVarZza = this.zza.zza();
            zzgxw zzgxwVarZzb = zzgkdVarZza.zzb(zzgveVar);
            zzgkdVarZza.zzc(zzgxwVarZzb);
            zzgxw zzgxwVarZza = zzgkdVarZza.zza(zzgxwVarZzb);
            zzgrj zzgrjVarZza = zzgrm.zza();
            zzgrjVarZza.zzb(this.zza.zzd());
            zzgrjVarZza.zzc(zzgxwVarZza.zzau());
            zzgrjVarZza.zza(this.zza.zzb());
            return (zzgrm) zzgrjVarZza.zzal();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Unexpected proto", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcq
    public final Object zzb(zzgve zzgveVar) throws GeneralSecurityException {
        try {
            zzgxw zzgxwVarZzc = this.zza.zzc(zzgveVar);
            if (Void.class.equals(this.zzb)) {
                throw new GeneralSecurityException("Cannot create a primitive for Void");
            }
            this.zza.zzf(zzgxwVarZzc);
            return this.zza.zzk(zzgxwVarZzc, this.zzb);
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(this.zza.zzj().getName()), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcq
    public final String zzc() {
        return this.zza.zzd();
    }
}
