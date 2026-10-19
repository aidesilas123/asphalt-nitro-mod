package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzglp implements zzglt {
    private final zzguk zza;
    private final zzgrr zzb;

    private zzglp(zzgrr zzgrrVar, zzguk zzgukVar) {
        this.zzb = zzgrrVar;
        this.zza = zzgukVar;
    }

    public static zzglp zza(zzgrr zzgrrVar) throws GeneralSecurityException {
        String strZzh = zzgrrVar.zzh();
        Charset charset = zzgmd.zza;
        byte[] bArr = new byte[strZzh.length()];
        for (int i = 0; i < strZzh.length(); i++) {
            char cCharAt = strZzh.charAt(i);
            if (cCharAt < '!' || cCharAt > '~') {
                throw new GeneralSecurityException("Not a printable ASCII character: " + cCharAt);
            }
            bArr[i] = (byte) cCharAt;
        }
        return new zzglp(zzgrrVar, zzguk.zzb(bArr));
    }

    public static zzglp zzb(zzgrr zzgrrVar) {
        return new zzglp(zzgrrVar, zzgmd.zza(zzgrrVar.zzh()));
    }

    public final zzgrr zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzglt
    public final zzguk zzd() {
        return this.zza;
    }
}
