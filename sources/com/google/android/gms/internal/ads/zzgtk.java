package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgtk implements zzgcf {
    private final zzguc zza;
    private final zzgdc zzb;
    private final int zzc;

    public zzgtk(zzguc zzgucVar, zzgdc zzgdcVar, int i) {
        this.zza = zzgucVar;
        this.zzb = zzgdcVar;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzc;
        if (length < i) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, length - i);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, length - this.zzc, length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        this.zzb.zza(bArrCopyOfRange2, zzgti.zzb(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8)));
        return this.zza.zza(bArrCopyOfRange);
    }
}
