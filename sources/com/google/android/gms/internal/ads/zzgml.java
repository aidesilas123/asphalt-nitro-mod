package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgml extends zzgkd {
    zzgml(zzgmm zzgmmVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgpd zzgpdVar = (zzgpd) zzgxwVar;
        zzgoz zzgozVarZzc = zzgpa.zzc();
        zzgozVarZzc.zzc(0);
        byte[] bArrZzb = zzglr.zzb(zzgpdVar.zza());
        zzgozVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        zzgozVarZzc.zzb(zzgpdVar.zzf());
        return (zzgpa) zzgozVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgpd.zze(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgpd zzgpdVar = (zzgpd) zzgxwVar;
        zzgmm.zzn(zzgpdVar.zzf());
        zzgmm.zzo(zzgpdVar.zza());
    }
}
