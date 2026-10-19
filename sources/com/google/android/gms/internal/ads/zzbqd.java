package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbqd extends zzavg implements IInterface {
    zzbqd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    public final Bundle zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(13, zza());
        Bundle bundle = (Bundle) zzavi.zza(parcelZzbh, Bundle.CREATOR);
        parcelZzbh.recycle();
        return bundle;
    }

    public final com.google.android.gms.ads.internal.client.zzdq zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(16, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    public final zzbga zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(19, zza());
        zzbga zzbgaVarZzj = zzbfz.zzj(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgaVarZzj;
    }

    public final zzbgi zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        zzbgi zzbgiVarZzg = zzbgh.zzg(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgiVarZzg;
    }

    public final IObjectWrapper zzi() throws RemoteException {
        Parcel parcelZzbh = zzbh(15, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzj() throws RemoteException {
        Parcel parcelZzbh = zzbh(20, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzk() throws RemoteException {
        Parcel parcelZzbh = zzbh(21, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    public final String zzl() throws RemoteException {
        Parcel parcelZzbh = zzbh(7, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    public final String zzm() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    public final String zzn() throws RemoteException {
        Parcel parcelZzbh = zzbh(6, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    public final String zzo() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    public final List zzp() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList arrayListZzb = zzavi.zzb(parcelZzbh);
        parcelZzbh.recycle();
        return arrayListZzb;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(9, parcelZza);
    }

    public final void zzr() throws RemoteException {
        zzbi(8, zza());
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(10, parcelZza);
    }

    public final void zzt(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, iObjectWrapper2);
        zzavi.zzf(parcelZza, iObjectWrapper3);
        zzbi(22, parcelZza);
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(14, parcelZza);
    }

    public final boolean zzv() throws RemoteException {
        Parcel parcelZzbh = zzbh(12, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    public final boolean zzw() throws RemoteException {
        Parcel parcelZzbh = zzbh(11, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }
}
