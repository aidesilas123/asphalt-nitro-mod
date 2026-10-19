package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbtj extends zzavg implements zzbtl {
    zzbtj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final zzbti zze(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        zzbti zzbtgVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbtgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbtgVar = iInterfaceQueryLocalInterface instanceof zzbti ? (zzbti) iInterfaceQueryLocalInterface : new zzbtg(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbtgVar;
    }
}
