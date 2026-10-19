package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzebe implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzebe(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzebd zzb() {
        return new zzebd(((zzciw) this.zza).zza(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
