package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgho extends zzgdu {
    private final zzghp zza;

    private zzgho(zzghp zzghpVar) {
        this.zza = zzghpVar;
    }

    public static zzgho zza(zzghp zzghpVar) throws GeneralSecurityException {
        return new zzgho(zzghpVar);
    }
}
