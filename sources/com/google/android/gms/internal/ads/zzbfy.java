package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbfy extends zzavg implements zzbga {
    zzbfy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final String zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final List zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList arrayListZzb = zzavi.zzb(parcelZzbh);
        parcelZzbh.recycle();
        return arrayListZzb;
    }
}
