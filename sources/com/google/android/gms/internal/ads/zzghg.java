package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzghg {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzghc
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgss zzgssVar;
                int i = zzghg.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
                zzgrqVarZza.zzc(zzgqw.zzc().zzau());
                zzgha zzghaVarZzb = ((zzghb) zzgddVar).zzb();
                if (zzgha.zza.equals(zzghaVarZzb)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzgha.zzb.equals(zzghaVarZzb)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else {
                    if (!zzgha.zzc.equals(zzghaVarZzb)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzghaVarZzb.toString()));
                    }
                    zzgssVar = zzgss.RAW;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzghb.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzghd
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzghg.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzghe
        }, zzggw.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzghf
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzghg.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzggw zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzgqt zzgqtVarZze = zzgqt.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgqtVarZze.zza() == 0) {
                return zzggw.zza(zzd(zzgloVar.zzc()), zzgul.zzb(zzgqtVarZze.zzf().zzA(), zzgdpVar), zzgloVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgwy unused) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
        }
    }

    public static /* synthetic */ zzghb zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgqw.zzd(zzglpVar.zzc().zzg(), zzgvy.zza());
            return zzghb.zzc(zzd(zzglpVar.zzc().zzf()));
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzgha zzd(zzgss zzgssVar) throws GeneralSecurityException {
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzgha.zza;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zzgha.zzc;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
            }
        }
        return zzgha.zzb;
    }
}
