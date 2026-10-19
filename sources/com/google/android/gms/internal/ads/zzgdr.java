package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgdr {
    public static zzgdd zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzgrr zzgrrVarZze = zzgrr.zze(bArr, zzgvy.zza());
            zzgku zzgkuVarZzc = zzgku.zzc();
            zzglp zzglpVarZza = zzglp.zza(zzgrrVarZze);
            return !zzgkuVarZzc.zzi(zzglpVarZza) ? new zzgkh(zzglpVarZza) : zzgkuVarZzc.zzb(zzglpVarZza);
        } catch (IOException e2) {
            throw new GeneralSecurityException("Failed to parse proto", e2);
        }
    }
}
