package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgdx implements zzgcf {
    private final zzgdk zza;
    private final zzgoq zzb;
    private final zzgoq zzc;

    /* synthetic */ zzgdx(zzgdk zzgdkVar, zzgdw zzgdwVar) {
        zzgoq zzgoqVarZza;
        this.zza = zzgdkVar;
        if (zzgdkVar.zzf()) {
            zzgor zzgorVarZzb = zzgkp.zza().zzb();
            zzgow zzgowVarZza = zzgkk.zza(zzgdkVar);
            this.zzb = zzgorVarZzb.zza(zzgowVarZza, "aead", "encrypt");
            zzgoqVarZza = zzgorVarZzb.zza(zzgowVarZza, "aead", "decrypt");
        } else {
            zzgoqVarZza = zzgkk.zza;
            this.zzb = zzgoqVarZza;
        }
        this.zzc = zzgoqVarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length > 5) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, length);
            for (zzgdg zzgdgVar : this.zza.zze(bArrCopyOf)) {
                try {
                    byte[] bArrZza = ((zzgcf) zzgdgVar.zze()).zza(bArrCopyOfRange, bArr2);
                    zzgdgVar.zza();
                    int length2 = bArrCopyOfRange.length;
                    return bArrZza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzgdg zzgdgVar2 : this.zza.zze(zzgck.zza)) {
            try {
                byte[] bArrZza2 = ((zzgcf) zzgdgVar2.zze()).zza(bArr, bArr2);
                zzgdgVar2.zza();
                return bArrZza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
