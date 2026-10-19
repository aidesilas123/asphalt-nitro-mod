package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgcs {
    public static final zzgdd zza(zzgdd zzgddVar) throws GeneralSecurityException {
        return zzgddVar != null ? zzgddVar : zzgdr.zza(zzb(null).zzax());
    }

    static final zzgrr zzb(zzgdd zzgddVar) {
        try {
            return ((zzglp) zzgku.zzc().zzd(null, zzglp.class)).zzc();
        } catch (GeneralSecurityException e2) {
            throw new zzgmc("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e2);
        }
    }
}
