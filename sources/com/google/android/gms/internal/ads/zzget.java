package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzget extends zzgkd {
    final /* synthetic */ zzgeu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzget(zzgeu zzgeuVar, Class cls) {
        super(cls);
        this.zza = zzgeuVar;
    }

    public static final zzgpp zze(zzgps zzgpsVar) throws GeneralSecurityException {
        zzgpo zzgpoVarZzc = zzgpp.zzc();
        zzgpoVarZzc.zzb(zzgpsVar.zzg());
        byte[] bArrZzb = zzglr.zzb(zzgpsVar.zza());
        zzgpoVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        zzgpoVarZzc.zzc(0);
        return (zzgpp) zzgpoVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        return zze((zzgps) zzgxwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgps.zzf(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final void zzc(zzgps zzgpsVar) throws GeneralSecurityException {
        zzgui.zza(zzgpsVar.zza());
        zzgeu zzgeuVar = this.zza;
        zzgeu.zzm(zzgpsVar.zzg());
    }
}
