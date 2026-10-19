package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzedr implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzedr(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzedq zzb() {
        return new zzedq(((zzedj) this.zza).zzb(), ((zzciu) this.zzb).zzb());
    }
}
