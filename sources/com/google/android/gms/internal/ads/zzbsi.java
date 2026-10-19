package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbsi implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbsk zza;

    zzbsi(zzbsk zzbskVar) {
        this.zza = zzbskVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzbsk zzbskVar = this.zza;
        Intent intentZzb = zzbskVar.zzb();
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzt.zzS(zzbskVar.zzb, intentZzb);
    }
}
