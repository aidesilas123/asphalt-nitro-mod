package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgfs extends zzgkd {
    final /* synthetic */ zzgft zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgfs(zzgft zzgftVar, Class cls) {
        super(cls);
        this.zza = zzgftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgqg zzgqgVarZzc = zzgqh.zzc();
        byte[] bArrZzb = zzglr.zzb(((zzgqk) zzgxwVar).zza());
        zzgqgVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        zzgqgVarZzc.zzb(0);
        return (zzgqh) zzgqgVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgqk.zzf(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgui.zza(((zzgqk) zzgxwVar).zza());
    }
}
