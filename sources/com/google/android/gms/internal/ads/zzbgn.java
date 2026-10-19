package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgn extends zzavg implements zzbgp {
    zzbgn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final IBinder zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, iObjectWrapper2);
        zzavi.zzf(parcelZza, iObjectWrapper3);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        parcelZzbh.recycle();
        return strongBinder;
    }
}
