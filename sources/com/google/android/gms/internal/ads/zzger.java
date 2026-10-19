package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzger {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgen
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgqy zzgqyVar;
                zzgss zzgssVar;
                zzgem zzgemVar = (zzgem) zzgddVar;
                int i = zzger.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
                zzgpl zzgplVarZza = zzgpm.zza();
                zzgpr zzgprVarZzc = zzgps.zzc();
                zzgpu zzgpuVarZzc = zzgpv.zzc();
                zzgpuVarZzc.zza(zzgemVar.zzd());
                zzgprVarZzc.zzb((zzgpv) zzgpuVarZzc.zzal());
                zzgprVarZzc.zza(zzgemVar.zzb());
                zzgplVarZza.zza((zzgps) zzgprVarZzc.zzal());
                zzgrd zzgrdVarZzd = zzgre.zzd();
                zzgrg zzgrgVarZzd = zzgrh.zzd();
                zzgrgVarZzd.zzb(zzgemVar.zze());
                zzgej zzgejVarZzf = zzgemVar.zzf();
                if (zzgej.zza.equals(zzgejVarZzf)) {
                    zzgqyVar = zzgqy.SHA1;
                } else if (zzgej.zzb.equals(zzgejVarZzf)) {
                    zzgqyVar = zzgqy.SHA224;
                } else if (zzgej.zzc.equals(zzgejVarZzf)) {
                    zzgqyVar = zzgqy.SHA256;
                } else if (zzgej.zzd.equals(zzgejVarZzf)) {
                    zzgqyVar = zzgqy.SHA384;
                } else {
                    if (!zzgej.zze.equals(zzgejVarZzf)) {
                        throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(zzgejVarZzf)));
                    }
                    zzgqyVar = zzgqy.SHA512;
                }
                zzgrgVarZzd.zza(zzgqyVar);
                zzgrdVarZzd.zzb((zzgrh) zzgrgVarZzd.zzal());
                zzgrdVarZzd.zza(zzgemVar.zzc());
                zzgplVarZza.zzb((zzgre) zzgrdVarZzd.zzal());
                zzgrqVarZza.zzc(((zzgpm) zzgplVarZza.zzal()).zzau());
                zzgek zzgekVarZzg = zzgemVar.zzg();
                if (zzgek.zza.equals(zzgekVarZzg)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzgek.zzb.equals(zzgekVarZzg)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else {
                    if (!zzgek.zzc.equals(zzgekVarZzg)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgekVarZzg)));
                    }
                    zzgssVar = zzgss.RAW;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzgem.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgeo
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzger.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzgep
        }, zzgec.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzgeq
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzger.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzgec zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
        }
        try {
            zzgpj zzgpjVarZze = zzgpj.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgpjVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzgpjVarZze.zzf().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (zzgpjVarZze.zzg().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            zzgei zzgeiVar = new zzgei(null);
            zzgeiVar.zza(zzgpjVarZze.zzf().zzh().zzd());
            zzgeiVar.zzc(zzgpjVarZze.zzg().zzh().zzd());
            zzgeiVar.zzd(zzgpjVarZze.zzf().zzg().zza());
            zzgeiVar.zze(zzgpjVarZze.zzg().zzg().zza());
            zzgeiVar.zzb(zzd(zzgpjVarZze.zzg().zzg().zzc()));
            zzgeiVar.zzf(zze(zzgloVar.zzc()));
            zzgem zzgemVarZzg = zzgeiVar.zzg();
            zzgea zzgeaVar = new zzgea(null);
            zzgeaVar.zzd(zzgemVarZzg);
            zzgeaVar.zza(zzgul.zzb(zzgpjVarZze.zzf().zzh().zzA(), zzgdpVar));
            zzgeaVar.zzb(zzgul.zzb(zzgpjVarZze.zzg().zzh().zzA(), zzgdpVar));
            zzgeaVar.zzc(zzgloVar.zzf());
            return zzgeaVar.zze();
        } catch (zzgwy unused) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
        }
    }

    public static /* synthetic */ zzgem zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgpm zzgpmVarZzd = zzgpm.zzd(zzglpVar.zzc().zzg(), zzgvy.zza());
            if (zzgpmVarZzd.zzf().zzc() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgei zzgeiVar = new zzgei(null);
            zzgeiVar.zza(zzgpmVarZzd.zze().zza());
            zzgeiVar.zzc(zzgpmVarZzd.zzf().zza());
            zzgeiVar.zzd(zzgpmVarZzd.zze().zzg().zza());
            zzgeiVar.zze(zzgpmVarZzd.zzf().zzh().zza());
            zzgeiVar.zzb(zzd(zzgpmVarZzd.zzf().zzh().zzc()));
            zzgeiVar.zzf(zze(zzglpVar.zzc().zzf()));
            return zzgeiVar.zzg();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgej zzd(zzgqy zzgqyVar) throws GeneralSecurityException {
        zzgqy zzgqyVar2 = zzgqy.UNKNOWN_HASH;
        zzgss zzgssVar = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgqyVar.ordinal();
        if (iOrdinal == 1) {
            return zzgej.zza;
        }
        if (iOrdinal == 2) {
            return zzgej.zzd;
        }
        if (iOrdinal == 3) {
            return zzgej.zzc;
        }
        if (iOrdinal == 4) {
            return zzgej.zze;
        }
        if (iOrdinal == 5) {
            return zzgej.zzb;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + zzgqyVar.zza());
    }

    private static zzgek zze(zzgss zzgssVar) throws GeneralSecurityException {
        zzgqy zzgqyVar = zzgqy.UNKNOWN_HASH;
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzgek.zza;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zzgek.zzc;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
            }
        }
        return zzgek.zzb;
    }
}
