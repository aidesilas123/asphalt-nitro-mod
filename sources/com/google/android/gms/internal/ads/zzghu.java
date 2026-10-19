package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzghu {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzglc zzc;
    private static final zzgky zzd;
    private static final zzgkc zze;
    private static final zzgjy zzf;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzb = zzgukVarZza;
        zzc = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzghq
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) {
                int i = zzghu.zza;
                zzgrq zzgrqVarZza = zzgrr.zza();
                zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
                zzgsj zzgsjVarZza = zzgsk.zza();
                zzgsjVarZza.zza(((zzghp) zzgddVar).zzc());
                zzgrqVarZza.zzc(((zzgsk) zzgsjVarZza.zzal()).zzau());
                zzgrqVarZza.zza(zzgss.RAW);
                return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
            }
        }, zzghp.class, zzglp.class);
        zzd = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzghr
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) throws GeneralSecurityException {
                int i = zzghu.zza;
                zzglp zzglpVar = (zzglp) zzgltVar;
                if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
                }
                try {
                    zzgsk zzgskVarZze = zzgsk.zze(((zzglp) zzgltVar).zzc().zzg(), zzgvy.zza());
                    if (zzglpVar.zzc().zzf() == zzgss.RAW) {
                        return zzghp.zzb(zzgskVarZze.zzf());
                    }
                    throw new GeneralSecurityException("Only key templates with RAW are accepted, but got " + String.valueOf(zzglpVar.zzc().zzf()) + " with format " + String.valueOf(zzgskVarZze));
                } catch (zzgwy e2) {
                    throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e2);
                }
            }
        }, zzgukVarZza, zzglp.class);
        zze = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzghs
        }, zzgho.class, zzglo.class);
        zzf = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzght
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) throws GeneralSecurityException {
                int i = zzghu.zza;
                zzglo zzgloVar = (zzglo) zzgltVar;
                if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
                }
                if (zzgloVar.zzc() != zzgss.RAW) {
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with RAW, got ".concat(String.valueOf(zzgloVar.zzc())));
                }
                try {
                    zzgsh zzgshVarZze = zzgsh.zze(((zzglo) zzgltVar).zze(), zzgvy.zza());
                    if (zzgshVarZze.zza() == 0) {
                        return zzgho.zza(zzghp.zzb(zzgshVarZze.zzf().zzf()));
                    }
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got " + String.valueOf(zzgshVarZze));
                } catch (zzgwy e2) {
                    throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e2);
                }
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static void zza(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zzc);
        zzgkuVar.zzg(zzd);
        zzgkuVar.zzf(zze);
        zzgkuVar.zze(zzf);
    }
}
