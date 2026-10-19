package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzemc {
    private final zzdhy zza;

    public zzemc(zzdhy zzdhyVar) {
        this.zza = zzdhyVar;
    }

    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, View view, zzely zzelyVar) {
        zzema zzemaVar = new zzema(this, new zzdig() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzdig
            public final void zza(boolean z, Context context, zzcyu zzcyuVar) {
            }
        });
        zzdgy zzdgyVarZze = this.zza.zze(new zzcuh(zzfehVar, zzfduVar, null), zzemaVar);
        zzelyVar.zzd(new zzemb(this, zzdgyVarZze));
        return zzdgyVarZze.zzg();
    }
}
