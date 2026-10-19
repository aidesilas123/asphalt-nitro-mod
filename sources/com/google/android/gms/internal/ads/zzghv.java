package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzghv extends zzgdu {
    private final zzgia zza;

    private zzghv(zzgia zzgiaVar) {
        this.zza = zzgiaVar;
    }

    public static zzghv zza(zzgia zzgiaVar) throws GeneralSecurityException {
        return new zzghv(zzgiaVar);
    }
}
