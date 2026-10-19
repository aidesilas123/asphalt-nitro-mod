package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgif {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgib
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgia zzgiaVar = (zzgia) zzgddVar;
                int i = zzgif.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
                try {
                    zzgrr zzgrrVarZze = zzgrr.zze(((zzglp) zzgku.zzc().zzd(zzgiaVar.zzb(), zzglp.class)).zzc().zzax(), zzgvy.zza());
                    zzgsp zzgspVarZzc = zzgsq.zzc();
                    zzgspVarZzc.zzb(zzgiaVar.zzc());
                    zzgspVarZzc.zza(zzgrrVarZze);
                    zzgrqVarZza.zzc(((zzgsq) zzgspVarZzc.zzal()).zzau());
                    zzgrqVarZza.zza(zzgss.RAW);
                    return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
                } catch (zzgwy e2) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
                }
            }
        }, zzgia.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgic
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzgif.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzgid
        }, zzghv.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzgie
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzgif.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzghv zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
        }
        try {
            zzgsn zzgsnVarZze = zzgsn.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgloVar.zzc() != zzgss.RAW) {
                throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with OutputPrefixType RAW, got " + String.valueOf(zzgsnVarZze));
            }
            if (zzgsnVarZze.zza() == 0) {
                return zzghv.zza(zzd(zzgsnVarZze.zzf()));
            }
            throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got " + String.valueOf(zzgsnVarZze));
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e2);
        }
    }

    public static /* synthetic */ zzgia zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            return zzd(zzgsq.zzf(zzglpVar.zzc().zzg(), zzgvy.zza()));
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgia zzd(zzgsq zzgsqVar) throws GeneralSecurityException {
        zzghy zzghyVar;
        zzgrq zzgrqVarZza = zzgrr.zza();
        zzgrqVarZza.zzb(zzgsqVar.zza().zzh());
        zzgrqVarZza.zzc(zzgsqVar.zza().zzg());
        zzgrqVarZza.zza(zzgss.RAW);
        zzgdd zzgddVarZza = zzgdr.zza(((zzgrr) zzgrqVarZza.zzal()).zzax());
        if (zzgddVarZza instanceof zzgfy) {
            zzghyVar = zzghy.zza;
        } else if (zzgddVarZza instanceof zzghb) {
            zzghyVar = zzghy.zzc;
        } else if (zzgddVarZza instanceof zzgit) {
            zzghyVar = zzghy.zzb;
        } else if (zzgddVarZza instanceof zzgem) {
            zzghyVar = zzghy.zzd;
        } else if (zzgddVarZza instanceof zzgfg) {
            zzghyVar = zzghy.zze;
        } else {
            if (!(zzgddVarZza instanceof zzggq)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(zzgddVarZza.toString()));
            }
            zzghyVar = zzghy.zzf;
        }
        zzghx zzghxVar = new zzghx(null);
        zzghxVar.zzc(zzgsqVar.zzg());
        zzghxVar.zza((zzgdv) zzgddVarZza);
        zzghxVar.zzb(zzghyVar);
        return zzghxVar.zzd();
    }
}
