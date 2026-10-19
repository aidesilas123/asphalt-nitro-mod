package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgnj extends zzgkd {
    final /* synthetic */ zzgnk zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgnj(zzgnk zzgnkVar, Class cls) {
        super(cls);
        this.zza = zzgnkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgre zzgreVar = (zzgre) zzgxwVar;
        zzgra zzgraVarZzc = zzgrb.zzc();
        zzgraVarZzc.zzc(0);
        zzgraVarZzc.zzb(zzgreVar.zzh());
        byte[] bArrZzb = zzglr.zzb(zzgreVar.zza());
        zzgraVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        return (zzgrb) zzgraVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgre.zzg(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgre zzgreVar = (zzgre) zzgxwVar;
        if (zzgreVar.zza() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zzgnk.zzn(zzgreVar.zzh());
    }
}
