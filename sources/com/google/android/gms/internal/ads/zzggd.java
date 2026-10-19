package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzggd {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgfz
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgss zzgssVar;
                zzgfy zzgfyVar = (zzgfy) zzgddVar;
                int i = zzggd.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
                zzgqj zzgqjVarZzd = zzgqk.zzd();
                zzgqjVarZzd.zza(zzgfyVar.zzb());
                zzgrqVarZza.zzc(((zzgqk) zzgqjVarZzd.zzal()).zzau());
                zzgfw zzgfwVarZzc = zzgfyVar.zzc();
                if (zzgfw.zza.equals(zzgfwVarZzc)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzgfw.zzb.equals(zzgfwVarZzc)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else {
                    if (!zzgfw.zzc.equals(zzgfwVarZzc)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgfwVarZzc)));
                    }
                    zzgssVar = zzgss.RAW;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzgfy.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgga
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzggd.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzggb
        }, zzgfp.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzggc
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzggd.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzgfp zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
        }
        try {
            zzgqh zzgqhVarZze = zzgqh.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgqhVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgfv zzgfvVar = new zzgfv(null);
            zzgfvVar.zzb(zzgqhVarZze.zzf().zzd());
            zzgfvVar.zza(12);
            zzgfvVar.zzc(16);
            zzgfvVar.zzd(zzd(zzgloVar.zzc()));
            zzgfy zzgfyVarZze = zzgfvVar.zze();
            zzgfn zzgfnVar = new zzgfn(null);
            zzgfnVar.zzc(zzgfyVarZze);
            zzgfnVar.zzb(zzgul.zzb(zzgqhVarZze.zzf().zzA(), zzgdpVar));
            zzgfnVar.zza(zzgloVar.zzf());
            return zzgfnVar.zzd();
        } catch (zzgwy unused) {
            throw new GeneralSecurityException("Parsing AesGcmKey failed");
        }
    }

    public static /* synthetic */ zzgfy zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgqk zzgqkVarZzf = zzgqk.zzf(zzglpVar.zzc().zzg(), zzgvy.zza());
            if (zzgqkVarZzf.zzc() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzgfv zzgfvVar = new zzgfv(null);
            zzgfvVar.zzb(zzgqkVarZzf.zza());
            zzgfvVar.zza(12);
            zzgfvVar.zzc(16);
            zzgfvVar.zzd(zzd(zzglpVar.zzc().zzf()));
            return zzgfvVar.zze();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgfw zzd(zzgss zzgssVar) throws GeneralSecurityException {
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzgfw.zza;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zzgfw.zzc;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
            }
        }
        return zzgfw.zzb;
    }
}
