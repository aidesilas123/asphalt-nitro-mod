package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbju implements zzbkd {
    zzbju() {
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        if (zzcgvVar.zzJ() != null) {
            zzcgvVar.zzJ().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlVarZzL = zzcgvVar.zzL();
        if (zzlVarZzL != null) {
            zzlVarZzL.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlVarZzM = zzcgvVar.zzM();
        if (zzlVarZzM != null) {
            zzlVarZzM.zzb();
        } else {
            zzcbn.zzj("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
