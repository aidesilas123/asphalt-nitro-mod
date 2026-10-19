package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdvb implements zzdup {
    private final long zza;
    private final zzenu zzb;

    zzdvb(long j, Context context, zzduu zzduuVar, zzciq zzciqVar, String str) {
        this.zza = j;
        zzfbz zzfbzVarZzu = zzciqVar.zzu();
        zzfbzVarZzu.zzc(context);
        zzfbzVarZzu.zza(new com.google.android.gms.ads.internal.client.zzq());
        zzfbzVarZzu.zzb(str);
        zzenu zzenuVarZza = zzfbzVarZzu.zzd().zza();
        this.zzb = zzenuVarZza;
        zzenuVarZza.zzD(new zzdva(this, zzduuVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdup
    public final void zza() {
        this.zzb.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzdup
    public final void zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.zzb.zzaa(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdup
    public final void zzc() {
        this.zzb.zzW(ObjectWrapper.wrap(null));
    }
}
