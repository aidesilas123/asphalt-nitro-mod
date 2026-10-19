package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgnr {

    @Deprecated
    static final zzgsv zza;

    @Deprecated
    static final zzgsv zzb;

    @Deprecated
    static final zzgsv zzc;

    static {
        new zzgnk();
        zzgsv zzgsvVarZzc = zzgsv.zzc();
        zza = zzgsvVarZzc;
        zzb = zzgsvVarZzc;
        zzc = zzgsvVarZzc;
        try {
            zza();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzgnx.zzd();
        zzgna.zzd();
        zzgnk.zzh(true);
        if (zzgjm.zzb()) {
            return;
        }
        zzgmm.zzm(true);
    }
}
