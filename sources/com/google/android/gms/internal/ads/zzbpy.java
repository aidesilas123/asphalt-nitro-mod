package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbpy extends zzavg implements zzbqa {
    zzbpy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final IObjectWrapper zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final boolean zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }
}
