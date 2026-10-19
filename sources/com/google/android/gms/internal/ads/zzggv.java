package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzggv {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzggr
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) throws GeneralSecurityException {
                zzgss zzgssVar;
                zzggq zzggqVar = (zzggq) zzgddVar;
                int i = zzggv.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
                zzgqp zzgqpVarZzd = zzgqq.zzd();
                zzgqpVarZzd.zza(zzggqVar.zzb());
                zzgrqVarZza.zzc(((zzgqq) zzgqpVarZzd.zzal()).zzau());
                zzggo zzggoVarZzc = zzggqVar.zzc();
                if (zzggo.zza.equals(zzggoVarZzc)) {
                    zzgssVar = zzgss.TINK;
                } else if (zzggo.zzb.equals(zzggoVarZzc)) {
                    zzgssVar = zzgss.CRUNCHY;
                } else {
                    if (!zzggo.zzc.equals(zzggoVarZzc)) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggoVarZzc)));
                    }
                    zzgssVar = zzgss.RAW;
                }
                zzgrqVarZza.zza(zzgssVar);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzggq.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzggs
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzggv.zzb((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzggt
        }, zzggh.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzggu
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzggv.zza((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzggh zza(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
        }
        try {
            zzgqn zzgqnVarZze = zzgqn.zze(zzgloVar.zze(), zzgvy.zza());
            if (zzgqnVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzggn zzggnVar = new zzggn(null);
            zzggnVar.zza(zzgqnVarZze.zzf().zzd());
            zzggnVar.zzb(zzd(zzgloVar.zzc()));
            zzggq zzggqVarZzc = zzggnVar.zzc();
            zzggf zzggfVar = new zzggf(null);
            zzggfVar.zzc(zzggqVarZzc);
            zzggfVar.zzb(zzgul.zzb(zzgqnVarZze.zzf().zzA(), zzgdpVar));
            zzggfVar.zza(zzgloVar.zzf());
            return zzggfVar.zzd();
        } catch (zzgwy unused) {
            throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
        }
    }

    public static /* synthetic */ zzggq zzb(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgqq zzgqqVarZzf = zzgqq.zzf(zzglpVar.zzc().zzg(), zzgvy.zza());
            if (zzgqqVarZzf.zzc() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzggn zzggnVar = new zzggn(null);
            zzggnVar.zza(zzgqqVarZzf.zza());
            zzggnVar.zzb(zzd(zzglpVar.zzc().zzf()));
            return zzggnVar.zzc();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e2);
        }
    }

    public static void zzc(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }

    private static zzggo zzd(zzgss zzgssVar) throws GeneralSecurityException {
        zzgss zzgssVar2 = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVar.ordinal();
        if (iOrdinal == 1) {
            return zzggo.zza;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zzggo.zzc;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgssVar.zza());
            }
        }
        return zzggo.zzb;
    }
}
