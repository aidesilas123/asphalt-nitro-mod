package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdl extends zzavg implements zzdn {
    zzdl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final Bundle zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        Bundle bundle = (Bundle) zzavi.zza(parcelZzbh, Bundle.CREATOR);
        parcelZzbh.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final zzu zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        zzu zzuVar = (zzu) zzavi.zza(parcelZzbh, zzu.CREATOR);
        parcelZzbh.recycle();
        return zzuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(1, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(6, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzi() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final List zzj() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZzbh.createTypedArrayList(zzu.CREATOR);
        parcelZzbh.recycle();
        return arrayListCreateTypedArrayList;
    }
}
