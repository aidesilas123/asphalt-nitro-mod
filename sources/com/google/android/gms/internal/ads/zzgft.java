package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgft extends zzgke {
    private static final zzgkl zza = new zzgkl() { // from class: com.google.android.gms.internal.ads.zzgfq
    };

    zzgft() {
        super(zzgqh.class, new zzgfr(zzgcf.class));
    }

    public static void zze(boolean z) throws GeneralSecurityException {
        zzgdo.zze(new zzgft(), true);
        int i = zzggd.zza;
        zzggd.zzc(zzgku.zzc());
        zzgkq zzgkqVarZzb = zzgkq.zzb();
        HashMap map = new HashMap();
        map.put("AES128_GCM", zzgim.zza);
        zzgfv zzgfvVar = new zzgfv(null);
        zzgfvVar.zza(12);
        zzgfvVar.zzb(16);
        zzgfvVar.zzc(16);
        zzgfw zzgfwVar = zzgfw.zzc;
        zzgfvVar.zzd(zzgfwVar);
        map.put("AES128_GCM_RAW", zzgfvVar.zze());
        map.put("AES256_GCM", zzgim.zzb);
        zzgfv zzgfvVar2 = new zzgfv(null);
        zzgfvVar2.zza(12);
        zzgfvVar2.zzb(32);
        zzgfvVar2.zzc(16);
        zzgfvVar2.zzd(zzgfwVar);
        map.put("AES256_GCM_RAW", zzgfvVar2.zze());
        zzgkqVarZzb.zzd(Collections.unmodifiableMap(map));
        zzgkm.zza().zzb(zza, zzgfy.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final zzgkd zza() {
        return new zzgfs(this, zzgqk.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final zzgrl zzb() {
        return zzgrl.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final /* synthetic */ zzgxw zzc(zzgve zzgveVar) throws zzgwy {
        return zzgqh.zze(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final /* bridge */ /* synthetic */ void zzf(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgqh zzgqhVar = (zzgqh) zzgxwVar;
        zzgui.zzb(zzgqhVar.zza(), 0);
        zzgui.zza(zzgqhVar.zzf().zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final int zzg() {
        return 2;
    }
}
