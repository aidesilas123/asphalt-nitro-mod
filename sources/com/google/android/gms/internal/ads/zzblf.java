package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzblf extends zzavg implements zzblh {
    zzblf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzblh
    public final zzble zze(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i, zzblb zzblbVar) throws RemoteException {
        zzble zzblcVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        zzavi.zzf(parcelZza, zzblbVar);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzblcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzblcVar = iInterfaceQueryLocalInterface instanceof zzble ? (zzble) iInterfaceQueryLocalInterface : new zzblc(strongBinder);
        }
        parcelZzbh.recycle();
        return zzblcVar;
    }
}
