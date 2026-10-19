package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgmw {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgms
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgss zzgssVar;
                zzgmr zzgmrVar = (zzgmr) zzgddVar;
                int i = zzgmw.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
                zzgpc zzgpcVarZzc = zzgpd.zzc();
                zzgpf zzgpfVarZzc = zzgpg.zzc();
                zzgpfVarZzc.zza(zzgmrVar.zzb());
                zzgpcVarZzc.zzb((zzgpg) zzgpfVarZzc.zzal());
                zzgpcVarZzc.zza(zzgmrVar.zzc());
                zzgrqVarZza.zzc(((zzgpd) zzgpcVarZzc.zzal()).zzau());
                zzgmp zzgmpVarZze = zzgmrVar.zze();
                if (zzgmp.zza.equals(zzgmpVarZze)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzgmp.zzb.equals(zzgmpVarZze)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else if (zzgmp.zzd.equals(zzgmpVarZze)) {
                    zzgssVar = zzgss.RAW;
                } else {
                    if (!zzgmp.zzc.equals(zzgmpVarZze)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgmpVarZze)));
                    }
                    zzgssVar = zzgss.LEGACY;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzgmr.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgmt
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzgmw.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzgmu
        }, zzgmh.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzgmv
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzgmw.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzgmh zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
        }
        try {
            zzgpa zzgpaVarZze = zzgpa.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgpaVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgmo zzgmoVar = new zzgmo(null);
            zzgmoVar.zza(zzgpaVarZze.zzg().zzd());
            zzgmoVar.zzb(zzgpaVarZze.zzf().zza());
            zzgmoVar.zzc(zzd(zzgloVar.zzc()));
            zzgmr zzgmrVarZzd = zzgmoVar.zzd();
            zzgmf zzgmfVar = new zzgmf(null);
            zzgmfVar.zzc(zzgmrVarZzd);
            zzgmfVar.zza(zzgul.zzb(zzgpaVarZze.zzg().zzA(), zzgdpVar));
            zzgmfVar.zzb(zzgloVar.zzf());
            return zzgmfVar.zzd();
        } catch (zzgwy | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }

    public static /* synthetic */ zzgmr zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgpd zzgpdVarZze = zzgpd.zze(zzglpVar.zzc().zzg(), zzgvy.zza());
            zzgmo zzgmoVar = new zzgmo(null);
            zzgmoVar.zza(zzgpdVarZze.zza());
            zzgmoVar.zzb(zzgpdVarZze.zzf().zza());
            zzgmoVar.zzc(zzd(zzglpVar.zzc().zzf()));
            return zzgmoVar.zzd();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgmp zzd(zzgss zzgssVar) throws GeneralSecurityException {
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzgmp.zza;
        }
        if (iOrdinal == 2) {
            return zzgmp.zzc;
        }
        if (iOrdinal == 3) {
            return zzgmp.zzd;
        }
        if (iOrdinal == 4) {
            return zzgmp.zzb;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
    }
}
