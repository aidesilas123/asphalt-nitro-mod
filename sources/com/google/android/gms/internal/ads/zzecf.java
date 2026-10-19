package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzecf implements zzgax {
    final /* synthetic */ zzbvt zza;

    zzecf(zzecg zzecgVar, zzbvt zzbvtVar) {
        this.zza = zzbvtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        try {
            this.zza.zze(com.google.android.gms.ads.internal.util.zzbb.zzb(th));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Ad service can't call client", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zzf((ParcelFileDescriptor) obj);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Ad service can't call client", e2);
        }
    }
}
