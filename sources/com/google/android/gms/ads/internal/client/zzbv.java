package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbpr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbv extends zzavg implements IInterface {
    zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbpr zzbprVar, int i, int i2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        parcelZza.writeInt(i2);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        parcelZzbh.recycle();
        return strongBinder;
    }
}
