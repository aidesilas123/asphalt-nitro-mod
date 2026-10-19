package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdmi implements zzgax {
    final /* synthetic */ zzdmj zza;

    zzdmi(zzdmj zzdmjVar) {
        this.zza = zzdmjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfa)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "omid native display exp");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final void zzb(List list) {
        try {
            zzcgv zzcgvVar = (zzcgv) list.get(0);
            if (zzcgvVar != null) {
                this.zza.zzb(zzcgvVar);
            }
        } catch (ClassCastException | IndexOutOfBoundsException e2) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfa)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "omid native display exp");
            }
        }
    }
}
