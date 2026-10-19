package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzels implements com.google.android.gms.ads.internal.zzf {
    final /* synthetic */ zzccf zza;
    final /* synthetic */ zzfeh zzb;
    final /* synthetic */ zzfdu zzc;
    final /* synthetic */ zzely zzd;
    final /* synthetic */ zzelt zze;

    zzels(zzelt zzeltVar, zzccf zzccfVar, zzfeh zzfehVar, zzfdu zzfduVar, zzely zzelyVar) {
        this.zze = zzeltVar;
        this.zza = zzccfVar;
        this.zzb = zzfehVar;
        this.zzc = zzfduVar;
        this.zzd = zzelyVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        this.zza.zzc(this.zze.zzd.zza(this.zzb, this.zzc, view, this.zzd));
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
    }
}
