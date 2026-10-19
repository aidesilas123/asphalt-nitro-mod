package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgnk extends zzgke {
    private static final zzglg zza = zzglg.zzb(new zzgle() { // from class: com.google.android.gms.internal.ads.zzgnf
        @Override // com.google.android.gms.internal.ads.zzgle
        public final Object zza(zzgcp zzgcpVar) {
            return new zzgog((zzgne) zzgcpVar);
        }
    }, zzgne.class, zzgmx.class);
    private static final zzglg zzb = zzglg.zzb(new zzgle() { // from class: com.google.android.gms.internal.ads.zzgng
        @Override // com.google.android.gms.internal.ads.zzgle
        public final Object zza(zzgcp zzgcpVar) {
            return zzgug.zzc((zzgne) zzgcpVar);
        }
    }, zzgne.class, zzgdc.class);
    private static final zzgkl zzc = new zzgkl() { // from class: com.google.android.gms.internal.ads.zzgnh
    };

    public zzgnk() {
        super(zzgrb.class, new zzgni(zzgdc.class));
    }

    public static void zzh(boolean z) throws GeneralSecurityException {
        zzgdo.zze(new zzgnk(), true);
        int i = zzgol.zza;
        zzgol.zzd(zzgku.zzc());
        zzgkr.zza().zze(zza);
        zzgkr.zza().zze(zzb);
        zzgkq zzgkqVarZzb = zzgkq.zzb();
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", zzgod.zza);
        zzgnm zzgnmVar = new zzgnm(null);
        zzgnmVar.zzb(32);
        zzgnmVar.zzc(16);
        zzgno zzgnoVar = zzgno.zzd;
        zzgnmVar.zzd(zzgnoVar);
        zzgnn zzgnnVar = zzgnn.zzc;
        zzgnmVar.zza(zzgnnVar);
        map.put("HMAC_SHA256_128BITTAG_RAW", zzgnmVar.zze());
        zzgnm zzgnmVar2 = new zzgnm(null);
        zzgnmVar2.zzb(32);
        zzgnmVar2.zzc(32);
        zzgno zzgnoVar2 = zzgno.zza;
        zzgnmVar2.zzd(zzgnoVar2);
        zzgnmVar2.zza(zzgnnVar);
        map.put("HMAC_SHA256_256BITTAG", zzgnmVar2.zze());
        zzgnm zzgnmVar3 = new zzgnm(null);
        zzgnmVar3.zzb(32);
        zzgnmVar3.zzc(32);
        zzgnmVar3.zzd(zzgnoVar);
        zzgnmVar3.zza(zzgnnVar);
        map.put("HMAC_SHA256_256BITTAG_RAW", zzgnmVar3.zze());
        zzgnm zzgnmVar4 = new zzgnm(null);
        zzgnmVar4.zzb(64);
        zzgnmVar4.zzc(16);
        zzgnmVar4.zzd(zzgnoVar2);
        zzgnn zzgnnVar2 = zzgnn.zze;
        zzgnmVar4.zza(zzgnnVar2);
        map.put("HMAC_SHA512_128BITTAG", zzgnmVar4.zze());
        zzgnm zzgnmVar5 = new zzgnm(null);
        zzgnmVar5.zzb(64);
        zzgnmVar5.zzc(16);
        zzgnmVar5.zzd(zzgnoVar);
        zzgnmVar5.zza(zzgnnVar2);
        map.put("HMAC_SHA512_128BITTAG_RAW", zzgnmVar5.zze());
        zzgnm zzgnmVar6 = new zzgnm(null);
        zzgnmVar6.zzb(64);
        zzgnmVar6.zzc(32);
        zzgnmVar6.zzd(zzgnoVar2);
        zzgnmVar6.zza(zzgnnVar2);
        map.put("HMAC_SHA512_256BITTAG", zzgnmVar6.zze());
        zzgnm zzgnmVar7 = new zzgnm(null);
        zzgnmVar7.zzb(64);
        zzgnmVar7.zzc(32);
        zzgnmVar7.zzd(zzgnoVar);
        zzgnmVar7.zza(zzgnnVar2);
        map.put("HMAC_SHA512_256BITTAG_RAW", zzgnmVar7.zze());
        map.put("HMAC_SHA512_512BITTAG", zzgod.zzd);
        zzgnm zzgnmVar8 = new zzgnm(null);
        zzgnmVar8.zzb(64);
        zzgnmVar8.zzc(64);
        zzgnmVar8.zzd(zzgnoVar);
        zzgnmVar8.zza(zzgnnVar2);
        map.put("HMAC_SHA512_512BITTAG_RAW", zzgnmVar8.zze());
        zzgkqVarZzb.zzd(Collections.unmodifiableMap(map));
        zzgkm.zza().zzb(zzc, zzgnq.class);
    }

    public static final void zzm(zzgrb zzgrbVar) throws GeneralSecurityException {
        zzgui.zzb(zzgrbVar.zza(), 0);
        if (zzgrbVar.zzh().zzd() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zzn(zzgrbVar.zzg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzn(zzgrh zzgrhVar) throws GeneralSecurityException {
        if (zzgrhVar.zza() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        zzgqy zzgqyVar = zzgqy.UNKNOWN_HASH;
        int iOrdinal = zzgrhVar.zzc().ordinal();
        if (iOrdinal == 1) {
            if (zzgrhVar.zza() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iOrdinal == 2) {
            if (zzgrhVar.zza() > 48) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iOrdinal == 3) {
            if (zzgrhVar.zza() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (iOrdinal == 4) {
            if (zzgrhVar.zza() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (iOrdinal != 5) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (zzgrhVar.zza() > 28) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final zzgkd zza() {
        return new zzgnj(this, zzgre.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final zzgrl zzb() {
        return zzgrl.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final /* synthetic */ zzgxw zzc(zzgve zzgveVar) throws zzgwy {
        return zzgrb.zzf(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final /* bridge */ /* synthetic */ void zzf(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzm((zzgrb) zzgxwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgke
    public final int zzg() {
        return 2;
    }
}
