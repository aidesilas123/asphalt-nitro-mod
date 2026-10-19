package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgjy {
    private final zzguk zza;
    private final Class zzb;

    /* synthetic */ zzgjy(zzguk zzgukVar, Class cls, zzgjx zzgjxVar) {
        this.zza = zzgukVar;
        this.zzb = cls;
    }

    public static zzgjy zzb(zzgjw zzgjwVar, zzguk zzgukVar, Class cls) {
        return new zzgjv(zzgukVar, cls, zzgjwVar);
    }

    public abstract zzgcp zza(zzglt zzgltVar, zzgdp zzgdpVar) throws GeneralSecurityException;

    public final zzguk zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
