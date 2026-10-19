package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfbd implements zzftn {
    final /* synthetic */ zzfbh zza;

    zzfbd(zzfbh zzfbhVar) {
        this.zza = zzfbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzcbn.zzh("", (zzdzp) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzfbh zzfbhVar = this.zza;
        zzfbhVar.zzd = new zzfbg(null, zzfbhVar.zze(), null);
        return this.zza.zzd;
    }
}
