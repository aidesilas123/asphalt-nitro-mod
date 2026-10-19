package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbpr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcj extends zzavg implements zzcl {
    zzcj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzbpr getAdapterCreator() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        zzbpr zzbprVarZzf = zzbpq.zzf(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbprVarZzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzen getLiteSdkVersion() throws RemoteException {
        Parcel parcelZzbh = zzbh(1, zza());
        zzen zzenVar = (zzen) zzavi.zza(parcelZzbh, zzen.CREATOR);
        parcelZzbh.recycle();
        return zzenVar;
    }
}
