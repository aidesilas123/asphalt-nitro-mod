package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbvo extends zzavg implements zzbvq {
    zzbvo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zze(zzbvi zzbviVar, zzbvt zzbvtVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbviVar);
        zzavi.zzf(parcelZza, zzbvtVar);
        zzbi(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzf(zzbve zzbveVar, zzbvt zzbvtVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbveVar);
        zzavi.zzf(parcelZza, zzbvtVar);
        zzbi(1, parcelZza);
    }
}
