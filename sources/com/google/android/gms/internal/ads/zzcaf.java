package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcaf extends zzavg implements zzcah {
    zzcaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzcah
    public final zzcae zze(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        zzcae zzcacVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzcacVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzcacVar = iInterfaceQueryLocalInterface instanceof zzcae ? (zzcae) iInterfaceQueryLocalInterface : new zzcac(strongBinder);
        }
        parcelZzbh.recycle();
        return zzcacVar;
    }
}
