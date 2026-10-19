package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfbe implements zzftn {
    final /* synthetic */ zzfbh zza;

    zzfbe(zzfbh zzfbhVar) {
        this.zza = zzfbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzbwa zzbwaVar = (zzbwa) obj;
        this.zza.zzd = new zzfbg(zzbwaVar, new zzfgp(zzbwaVar.zzj), null);
        return this.zza.zzd;
    }
}
