package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgfl {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgfh
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgss zzgssVar;
                zzgfg zzgfgVar = (zzgfg) zzgddVar;
                int i = zzgfl.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
                zzgqa zzgqaVarZzc = zzgqb.zzc();
                zzgqd zzgqdVarZzc = zzgqe.zzc();
                zzgqdVarZzc.zza(zzgfgVar.zzb());
                zzgqaVarZzc.zzb((zzgqe) zzgqdVarZzc.zzal());
                zzgqaVarZzc.zza(zzgfgVar.zzc());
                zzgrqVarZza.zzc(((zzgqb) zzgqaVarZzc.zzal()).zzau());
                zzgfe zzgfeVarZzd = zzgfgVar.zzd();
                if (zzgfe.zza.equals(zzgfeVarZzd)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzgfe.zzb.equals(zzgfeVarZzd)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else {
                    if (!zzgfe.zzc.equals(zzgfeVarZzd)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgfeVarZzd)));
                    }
                    zzgssVar = zzgss.RAW;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzgfg.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgfi
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzgfl.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzgfj
        }, zzgey.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzgfk
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzgfl.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzgey zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
        }
        try {
            zzgpy zzgpyVarZze = zzgpy.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgpyVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgfd zzgfdVar = new zzgfd(null);
            zzgfdVar.zzb(zzgpyVarZze.zzg().zzd());
            zzgfdVar.zza(zzgpyVarZze.zzf().zza());
            zzgfdVar.zzc(16);
            zzgfdVar.zzd(zzd(zzgloVar.zzc()));
            zzgfg zzgfgVarZze = zzgfdVar.zze();
            zzgew zzgewVar = new zzgew(null);
            zzgewVar.zzc(zzgfgVarZze);
            zzgewVar.zzb(zzgul.zzb(zzgpyVarZze.zzg().zzA(), zzgdpVar));
            zzgewVar.zza(zzgloVar.zzf());
            return zzgewVar.zzd();
        } catch (zzgwy unused) {
            throw new GeneralSecurityException("Parsing AesEaxcKey failed");
        }
    }

    public static /* synthetic */ zzgfg zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgqb zzgqbVarZze = zzgqb.zze(zzglpVar.zzc().zzg(), zzgvy.zza());
            zzgfd zzgfdVar = new zzgfd(null);
            zzgfdVar.zzb(zzgqbVarZze.zza());
            zzgfdVar.zza(zzgqbVarZze.zzf().zza());
            zzgfdVar.zzc(16);
            zzgfdVar.zzd(zzd(zzglpVar.zzc().zzf()));
            return zzgfdVar.zze();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgfe zzd(zzgss zzgssVar) throws GeneralSecurityException {
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzgfe.zza;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zzgfe.zzc;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
            }
        }
        return zzgfe.zzb;
    }
}
