package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgg extends zzavg implements zzbgi {
    zzbgg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final double zzb() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        double d2 = parcelZzbh.readDouble();
        parcelZzbh.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final int zzc() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        int i = parcelZzbh.readInt();
        parcelZzbh.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final int zzd() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        int i = parcelZzbh.readInt();
        parcelZzbh.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final Uri zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        Uri uri = (Uri) zzavi.zza(parcelZzbh, Uri.CREATOR);
        parcelZzbh.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final IObjectWrapper zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }
}
