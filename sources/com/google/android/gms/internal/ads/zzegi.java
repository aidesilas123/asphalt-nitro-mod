package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzegi implements zzdig {
    private final zzcbt zza;
    private final h0 zzb;
    private final zzfdu zzc;
    private final zzcgv zzd;
    private final zzfeq zze;
    private final zzbkf zzf;
    private final boolean zzg;
    private final zzefa zzh;

    zzegi(zzcbt zzcbtVar, h0 h0Var, zzfdu zzfduVar, zzcgv zzcgvVar, zzfeq zzfeqVar, boolean z, zzbkf zzbkfVar, zzefa zzefaVar) {
        this.zza = zzcbtVar;
        this.zzb = h0Var;
        this.zzc = zzfduVar;
        this.zzd = zzcgvVar;
        this.zze = zzfeqVar;
        this.zzg = z;
        this.zzf = zzbkfVar;
        this.zzh = zzefaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdig
    public final void zza(boolean z, Context context, zzcyu zzcyuVar) {
        int i;
        zzcra zzcraVar = (zzcra) zzgbb.zzq(this.zzb);
        this.zzd.zzan(true);
        boolean zZze = this.zzg ? this.zzf.zze(true) : true;
        boolean z2 = this.zzg;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zZze, true, z2 ? this.zzf.zzd() : false, z2 ? this.zzf.zza() : 0.0f, -1, z, this.zzc.zzP, false);
        if (zzcyuVar != null) {
            zzcyuVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdhv zzdhvVarZzg = zzcraVar.zzg();
        zzcgv zzcgvVar = this.zzd;
        int i2 = this.zzc.zzR;
        if (i2 == -1) {
            com.google.android.gms.ads.internal.client.zzw zzwVar = this.zze.zzj;
            if (zzwVar != null) {
                int i3 = zzwVar.zza;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                }
            }
            zzcbn.zze("Error setting app open orientation; no targeting orientation available.");
            i2 = this.zzc.zzR;
            i = i2;
        } else {
            i = i2;
        }
        zzcbt zzcbtVar = this.zza;
        zzfdu zzfduVar = this.zzc;
        String str = zzfduVar.zzC;
        zzfea zzfeaVar = zzfduVar.zzt;
        com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzdhvVarZzg, (com.google.android.gms.ads.internal.overlay.zzz) null, zzcgvVar, i, zzcbtVar, str, zzjVar, zzfeaVar.zzb, zzfeaVar.zza, this.zze.zzf, zzcyuVar, zzfduVar.zzaj ? this.zzh : null), true);
    }
}
