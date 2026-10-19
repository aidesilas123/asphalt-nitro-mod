package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgth implements zzgcf {
    private final zzgjb zza;
    private final byte[] zzb;

    public zzgth(byte[] bArr) throws GeneralSecurityException {
        zzguk zzgukVarZzb = zzguk.zzb(new byte[0]);
        if (!zzgjl.zza(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.zza = new zzgjb(bArr, true);
        this.zzb = zzgukVarZzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        int length = bArr3.length;
        if (length == 0) {
            return this.zza.zza(Arrays.copyOf(bArr, 12), bArr, bArr2);
        }
        Charset charset = zzgmd.zza;
        if (bArr.length >= length) {
            for (int i = 0; i < bArr3.length; i++) {
                if (bArr[i] == bArr3[i]) {
                }
            }
            byte[] bArr4 = this.zzb;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, bArr4.length, bArr.length);
            return this.zza.zza(Arrays.copyOf(bArrCopyOfRange, 12), bArrCopyOfRange, bArr2);
        }
        throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
    }
}
