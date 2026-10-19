package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgfa extends zzgkd {
    final /* synthetic */ zzgfb zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgfa(zzgfb zzgfbVar, Class cls) {
        super(cls);
        this.zza = zzgfbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ zzgxw zza(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgqb zzgqbVar = (zzgqb) zzgxwVar;
        zzgpx zzgpxVarZzc = zzgpy.zzc();
        byte[] bArrZzb = zzglr.zzb(zzgqbVar.zza());
        zzgpxVarZzc.zza(zzgve.zzv(bArrZzb, 0, bArrZzb.length));
        zzgpxVarZzc.zzb(zzgqbVar.zzf());
        zzgpxVarZzc.zzc(0);
        return (zzgpy) zzgpxVarZzc.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* synthetic */ zzgxw zzb(zzgve zzgveVar) throws zzgwy {
        return zzgqb.zze(zzgveVar, zzgvy.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgkd
    public final /* bridge */ /* synthetic */ void zzc(zzgxw zzgxwVar) throws GeneralSecurityException {
        zzgqb zzgqbVar = (zzgqb) zzgxwVar;
        zzgui.zza(zzgqbVar.zza());
        if (zzgqbVar.zzf().zza() != 12 && zzgqbVar.zzf().zza() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
