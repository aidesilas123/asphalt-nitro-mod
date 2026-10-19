package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfpf extends zzavg implements IInterface {
    zzfpf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfpd zze(zzfpb zzfpbVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzfpbVar);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        zzfpd zzfpdVar = (zzfpd) zzavi.zza(parcelZzbh, zzfpd.CREATOR);
        parcelZzbh.recycle();
        return zzfpdVar;
    }

    public final zzfpm zzf(zzfpk zzfpkVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzfpkVar);
        Parcel parcelZzbh = zzbh(3, parcelZza);
        zzfpm zzfpmVar = (zzfpm) zzavi.zza(parcelZzbh, zzfpm.CREATOR);
        parcelZzbh.recycle();
        return zzfpmVar;
    }

    public final void zzg(zzfoy zzfoyVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzfoyVar);
        zzbi(2, parcelZza);
    }
}
