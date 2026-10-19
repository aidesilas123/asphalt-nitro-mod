package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzedj implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzedj(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzedi zzb() {
        return new zzedi(((zzedf) this.zza).zzb(), (zzgbl) this.zzb.zzb());
    }
}
