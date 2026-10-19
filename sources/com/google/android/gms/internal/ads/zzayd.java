package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzayd extends zzavg implements IInterface {
    zzayd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzayb zzaybVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzaybVar);
        Parcel parcelZzbh = zzbh(3, parcelZza);
        long j = parcelZzbh.readLong();
        parcelZzbh.recycle();
        return j;
    }

    public final zzaxy zzf(zzayb zzaybVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzaybVar);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        zzaxy zzaxyVar = (zzaxy) zzavi.zza(parcelZzbh, zzaxy.CREATOR);
        parcelZzbh.recycle();
        return zzaxyVar;
    }

    public final zzaxy zzg(zzayb zzaybVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzaybVar);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        zzaxy zzaxyVar = (zzaxy) zzavi.zza(parcelZzbh, zzaxy.CREATOR);
        parcelZzbh.recycle();
        return zzaxyVar;
    }
}
