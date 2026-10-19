package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgdt {

    @Deprecated
    static final zzgsv zza;

    @Deprecated
    static final zzgsv zzb;

    @Deprecated
    static final zzgsv zzc;

    static {
        new zzgeg();
        new zzgft();
        new zzggl();
        new zzgfb();
        new zzghj();
        new zzghn();
        new zzggz();
        new zzgir();
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
        zzgdy.zzd();
        zzgnr.zza();
        zzgeg.zze(true);
        zzgft.zze(true);
        if (zzgjm.zzb()) {
            return;
        }
        zzgdo.zze(new zzgfb(), true);
        int i = zzgfl.zza;
        zzgfl.zzc(zzgku.zzc());
        zzgkq zzgkqVarZzb = zzgkq.zzb();
        HashMap map = new HashMap();
        map.put("AES128_EAX", zzgim.zzc);
        zzgfd zzgfdVar = new zzgfd(null);
        zzgfdVar.zza(16);
        zzgfdVar.zzb(16);
        zzgfdVar.zzc(16);
        zzgfe zzgfeVar = zzgfe.zzc;
        zzgfdVar.zzd(zzgfeVar);
        map.put("AES128_EAX_RAW", zzgfdVar.zze());
        map.put("AES256_EAX", zzgim.zzd);
        zzgfd zzgfdVar2 = new zzgfd(null);
        zzgfdVar2.zza(16);
        zzgfdVar2.zzb(32);
        zzgfdVar2.zzc(16);
        zzgfdVar2.zzd(zzgfeVar);
        map.put("AES256_EAX_RAW", zzgfdVar2.zze());
        zzgkqVarZzb.zzd(Collections.unmodifiableMap(map));
        zzggl.zze(true);
        zzgdo.zze(new zzggz(), true);
        int i2 = zzghg.zza;
        zzghg.zzc(zzgku.zzc());
        zzgkq zzgkqVarZzb2 = zzgkq.zzb();
        HashMap map2 = new HashMap();
        map2.put("CHACHA20_POLY1305", zzghb.zzc(zzgha.zza));
        map2.put("CHACHA20_POLY1305_RAW", zzghb.zzc(zzgha.zzc));
        zzgkqVarZzb2.zzd(Collections.unmodifiableMap(map2));
        zzgdo.zze(new zzghj(), true);
        int i3 = zzghu.zza;
        zzghu.zza(zzgku.zzc());
        zzgdo.zze(new zzghn(), true);
        int i4 = zzgif.zza;
        zzgif.zzc(zzgku.zzc());
        zzgir.zze(true);
    }
}
