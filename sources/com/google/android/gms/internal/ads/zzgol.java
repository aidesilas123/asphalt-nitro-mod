package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgol {
    public static final /* synthetic */ int zza = 0;
    private static final zzguk zzb;
    private static final zzgjq zzc;
    private static final zzgjq zzd;
    private static final zzglc zze;
    private static final zzgky zzf;
    private static final zzgkc zzg;
    private static final zzgjy zzh;

    static {
        zzguk zzgukVarZza = zzgmd.zza("type.googleapis.com/google.crypto.tink.HmacKey");
        zzb = zzgukVarZza;
        zzgjo zzgjoVarZza = zzgjq.zza();
        zzgjoVarZza.zza(zzgss.RAW, zzgno.zzd);
        zzgjoVarZza.zza(zzgss.TINK, zzgno.zza);
        zzgjoVarZza.zza(zzgss.LEGACY, zzgno.zzc);
        zzgjoVarZza.zza(zzgss.CRUNCHY, zzgno.zzb);
        zzc = zzgjoVarZza.zzb();
        zzgjo zzgjoVarZza2 = zzgjq.zza();
        zzgjoVarZza2.zza(zzgqy.SHA1, zzgnn.zza);
        zzgjoVarZza2.zza(zzgqy.SHA224, zzgnn.zzb);
        zzgjoVarZza2.zza(zzgqy.SHA256, zzgnn.zzc);
        zzgjoVarZza2.zza(zzgqy.SHA384, zzgnn.zzd);
        zzgjoVarZza2.zza(zzgqy.SHA512, zzgnn.zze);
        zzd = zzgjoVarZza2.zzb();
        zze = zzglc.zzb(new zzgla() { // from class: com.google.android.gms.internal.ads.zzgoh
            @Override // com.google.android.gms.internal.ads.zzgla
            public final zzglt zza(zzgdd zzgddVar) {
                return zzgol.zza((zzgnq) zzgddVar);
            }
        }, zzgnq.class, zzglp.class);
        zzf = zzgky.zzb(new zzgkw() { // from class: com.google.android.gms.internal.ads.zzgoi
            @Override // com.google.android.gms.internal.ads.zzgkw
            public final zzgdd zza(zzglt zzgltVar) {
                return zzgol.zzc((zzglp) zzgltVar);
            }
        }, zzgukVarZza, zzglp.class);
        zzg = zzgkc.zza(new zzgka() { // from class: com.google.android.gms.internal.ads.zzgoj
        }, zzgne.class, zzglo.class);
        zzh = zzgjy.zzb(new zzgjw() { // from class: com.google.android.gms.internal.ads.zzgok
            @Override // com.google.android.gms.internal.ads.zzgjw
            public final zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) {
                return zzgol.zzb((zzglo) zzgltVar, zzgdpVar);
            }
        }, zzgukVarZza, zzglo.class);
    }

    public static /* synthetic */ zzglp zza(zzgnq zzgnqVar) {
        zzgrq zzgrqVarZza = zzgrr.zza();
        zzgrqVarZza.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzgrd zzgrdVarZzd = zzgre.zzd();
        zzgrg zzgrgVarZzd = zzgrh.zzd();
        zzgrgVarZzd.zzb(zzgnqVar.zzb());
        zzgrgVarZzd.zza((zzgqy) zzd.zzb(zzgnqVar.zzf()));
        zzgrdVarZzd.zzb((zzgrh) zzgrgVarZzd.zzal());
        zzgrdVarZzd.zza(zzgnqVar.zzc());
        zzgrqVarZza.zzc(((zzgre) zzgrdVarZzd.zzal()).zzau());
        zzgrqVarZza.zza((zzgss) zzc.zzb(zzgnqVar.zzg()));
        return zzglp.zzb((zzgrr) zzgrqVarZza.zzal());
    }

    public static /* synthetic */ zzgne zzb(zzglo zzgloVar, zzgdp zzgdpVar) throws GeneralSecurityException {
        if (!zzgloVar.zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
        }
        try {
            zzgrb zzgrbVarZzf = zzgrb.zzf(zzgloVar.zze(), zzgvy.zza());
            if (zzgrbVarZzf.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgnm zzgnmVarZze = zzgnq.zze();
            zzgnmVarZze.zzb(zzgrbVarZzf.zzh().zzd());
            zzgnmVarZze.zzc(zzgrbVarZzf.zzg().zza());
            zzgnmVarZze.zza((zzgnn) zzd.zzc(zzgrbVarZzf.zzg().zzc()));
            zzgnmVarZze.zzd((zzgno) zzc.zzc(zzgloVar.zzc()));
            zzgnq zzgnqVarZze = zzgnmVarZze.zze();
            zzgnc zzgncVarZza = zzgne.zza();
            zzgncVarZza.zzc(zzgnqVarZze);
            zzgncVarZza.zzb(zzgul.zzb(zzgrbVarZzf.zzh().zzA(), zzgdpVar));
            zzgncVarZza.zza(zzgloVar.zzf());
            return zzgncVarZza.zzd();
        } catch (zzgwy | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing HmacKey failed");
        }
    }

    public static /* synthetic */ zzgnq zzc(zzglp zzglpVar) throws GeneralSecurityException {
        if (!zzglpVar.zzc().zzh().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzglpVar.zzc().zzh())));
        }
        try {
            zzgre zzgreVarZzg = zzgre.zzg(zzglpVar.zzc().zzg(), zzgvy.zza());
            if (zzgreVarZzg.zzc() != 0) {
                throw new GeneralSecurityException("Parsing HmacParameters failed: unknown Version " + zzgreVarZzg.zzc());
            }
            zzgnm zzgnmVarZze = zzgnq.zze();
            zzgnmVarZze.zzb(zzgreVarZzg.zza());
            zzgnmVarZze.zzc(zzgreVarZzg.zzh().zza());
            zzgnmVarZze.zza((zzgnn) zzd.zzc(zzgreVarZzg.zzh().zzc()));
            zzgnmVarZze.zzd((zzgno) zzc.zzc(zzglpVar.zzc().zzf()));
            return zzgnmVarZze.zze();
        } catch (zzgwy e2) {
            throw new GeneralSecurityException("Parsing HmacParameters failed: ", e2);
        }
    }

    public static void zzd(zzgku zzgkuVar) throws GeneralSecurityException {
        zzgkuVar.zzh(zze);
        zzgkuVar.zzg(zzf);
        zzgkuVar.zzf(zzg);
        zzgkuVar.zze(zzh);
    }
}
