package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzggk extends zzgkd {
    final /* synthetic */ zzggl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzggk(zzggl zzgglVar, Class cls) {
        super(cls);
        this.zza = zzgglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgqm zzgqmVarZzc = zzgqn.zzc();
        byte[] bArrZzb = zzglr.zzb(((zzgqq) zzgxwVar).zza());
        zzgqmVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        zzgqmVarZzc.zzb(0);
        return (zzgqn) zzgqmVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgqq.zzf(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgui.zza(((zzgqq) zzgxwVar).zza());
    }
}
