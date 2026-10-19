package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgni extends zzglh {
    zzgni(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ Object zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgrb zzgrbVar = (zzgrb) zzgxwVar;
        zzgqy zzgqyVarZzc = zzgrbVar.zzg().zzc();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzgrbVar.zzh().zzA(), "HMAC");
        int iZza = zzgrbVar.zzg().zza();
        zzgqy zzgqyVar = zzgqy.UNKNOWN_HASH;
        int iOrdinal = zzgqyVarZzc.ordinal();
        if (iOrdinal == 1) {
            return new zzgug(new zzguf("HMACSHA1", secretKeySpec), iZza);
        }
        if (iOrdinal == 2) {
            return new zzgug(new zzguf("HMACSHA384", secretKeySpec), iZza);
        }
        if (iOrdinal == 3) {
            return new zzgug(new zzguf("HMACSHA256", secretKeySpec), iZza);
        }
        if (iOrdinal == 4) {
            return new zzgug(new zzguf("HMACSHA512", secretKeySpec), iZza);
        }
        if (iOrdinal == 5) {
            return new zzgug(new zzguf("HMACSHA224", secretKeySpec), iZza);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
