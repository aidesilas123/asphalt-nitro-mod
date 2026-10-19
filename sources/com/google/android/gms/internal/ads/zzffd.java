package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzffd {
    @VisibleForTesting
    public zzffd() {
        try {
            zzgdt.zza();
        } catch (GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to Configure Aead. ".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CryptoUtils.registerAead");
        }
    }

    public static final String zza() {
        zzgvb zzgvbVarZzt = zzgve.zzt();
        try {
            zzgci.zzb(zzgcz.zzc(zzgcs.zza(zzgkq.zzb().zza("AES128_GCM"))), zzgch.zzb(zzgvbVarZzt));
        } catch (IOException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to generate key".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CryptoUtils.generateKey");
        }
        String strEncodeToString = Base64.encodeToString(zzgvbVarZzt.zzb().zzA(), 11);
        zzgvbVarZzt.zzc();
        return strEncodeToString;
    }

    public static final String zzb(byte[] bArr, byte[] bArr2, String str, zzdtk zzdtkVar) {
        zzgcz zzgczVarZzc = zzc(str);
        if (zzgczVarZzc == null) {
            return null;
        }
        try {
            byte[] bArrZza = ((zzgcf) zzgczVarZzc.zze(zzgls.zza(), zzgcf.class)).zza(bArr, bArr2);
            zzdtkVar.zza().put("ds", "1");
            return new String(bArrZza, C.UTF8_NAME);
        } catch (UnsupportedEncodingException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to decrypt ".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CryptoUtils.decrypt");
            zzdtkVar.zza().put("dsf", e2.toString());
            return null;
        }
    }

    private static final zzgcz zzc(String str) {
        try {
            return zzgci.zza(zzgcg.zzb(Base64.decode(str, 11)));
        } catch (IOException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to get keysethandle".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CryptoUtils.getHandle");
            return null;
        }
    }
}
