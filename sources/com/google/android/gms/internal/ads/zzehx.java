package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzehx implements zzdig {
    private final Context zza;
    private final zzcbt zzb;
    private final h0 zzc;
    private final zzfdu zzd;
    private final zzcgv zze;
    private final zzfeq zzf;
    private final zzbkf zzg;
    private final boolean zzh;
    private final zzefa zzi;

    zzehx(Context context, zzcbt zzcbtVar, h0 h0Var, zzfdu zzfduVar, zzcgv zzcgvVar, zzfeq zzfeqVar, boolean z, zzbkf zzbkfVar, zzefa zzefaVar) {
        this.zza = context;
        this.zzb = zzcbtVar;
        this.zzc = h0Var;
        this.zzd = zzfduVar;
        this.zze = zzcgvVar;
        this.zzf = zzfeqVar;
        this.zzg = zzbkfVar;
        this.zzh = z;
        this.zzi = zzefaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdig
    public final void zza(boolean z, Context context, zzcyu zzcyuVar) {
        zzdgy zzdgyVar = (zzdgy) zzgbb.zzq(this.zzc);
        this.zze.zzan(true);
        boolean zZze = this.zzh ? this.zzg.zze(false) : false;
        com.google.android.gms.ads.internal.zzt.zzp();
        Context context2 = this.zza;
        boolean z2 = this.zzh;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zZze, com.google.android.gms.ads.internal.util.zzt.zzH(context2), z2 ? this.zzg.zzd() : false, this.zzh ? this.zzg.zza() : 0.0f, -1, z, this.zzd.zzP, false);
        if (zzcyuVar != null) {
            zzcyuVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdhv zzdhvVarZzh = zzdgyVar.zzh();
        zzcgv zzcgvVar = this.zze;
        zzfdu zzfduVar = this.zzd;
        zzcbt zzcbtVar = this.zzb;
        int i = zzfduVar.zzR;
        String str = zzfduVar.zzC;
        zzfea zzfeaVar = zzfduVar.zzt;
        com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzdhvVarZzh, (com.google.android.gms.ads.internal.overlay.zzz) null, zzcgvVar, i, zzcbtVar, str, zzjVar, zzfeaVar.zzb, zzfeaVar.zza, this.zzf.zzf, zzcyuVar, zzfduVar.zzaj ? this.zzi : null), true);
    }
}
