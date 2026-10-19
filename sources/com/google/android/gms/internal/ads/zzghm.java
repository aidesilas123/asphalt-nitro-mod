package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzghm extends zzgkd {
    final /* synthetic */ zzghn zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzghm(zzghn zzghnVar, Class cls) {
        super(cls);
        this.zza = zzghnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgsm zzgsmVarZzc = zzgsn.zzc();
        zzgsmVarZzc.zza((zzgsq) zzgxwVar);
        zzgsmVarZzc.zzb(0);
        return (zzgsn) zzgsmVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgsq.zzf(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgsq zzgsqVar = (zzgsq) zzgxwVar;
        if (zzghk.zzb(zzgsqVar.zza().zzh())) {
            if (zzgsqVar.zzg().isEmpty() || !zzgsqVar.zzj()) {
                throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
            }
        } else {
            throw new GeneralSecurityException("Unsupported DEK key type: " + zzgsqVar.zza().zzh() + ". Only Tink AEAD key types are supported.");
        }
    }
}
