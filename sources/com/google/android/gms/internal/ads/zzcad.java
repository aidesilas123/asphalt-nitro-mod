package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzcad extends zzavh implements zzcae {
    public zzcad() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzcae zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return iInterfaceQueryLocalInterface instanceof zzcae ? (zzcae) iInterfaceQueryLocalInterface : new zzcac(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcab zzbzzVar = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzcai zzcaiVar = (zzcai) zzavi.zza(parcel, zzcai.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzbzzVar = iInterfaceQueryLocalInterface instanceof zzcab ? (zzcab) iInterfaceQueryLocalInterface : new zzbzz(strongBinder);
                }
                zzavi.zzc(parcel);
                zze(iObjectWrapperAsInterface, zzcaiVar, zzbzzVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzj(iObjectWrapperAsInterface2);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, null);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, null);
                return true;
            case 5:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbue zzbueVarZzb = zzbud.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzl(arrayListCreateTypedArrayList, iObjectWrapperAsInterface3, zzbueVarZzb);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList arrayListCreateTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbue zzbueVarZzb2 = zzbud.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzk(arrayListCreateTypedArrayList2, iObjectWrapperAsInterface4, zzbueVarZzb2);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbun zzbunVar = (zzbun) zzavi.zza(parcel, zzbun.CREATOR);
                zzavi.zzc(parcel);
                zzf(zzbunVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzi(iObjectWrapperAsInterface5);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList arrayListCreateTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbue zzbueVarZzb3 = zzbud.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzh(arrayListCreateTypedArrayList3, iObjectWrapperAsInterface6, zzbueVarZzb3);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList arrayListCreateTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbue zzbueVarZzb4 = zzbud.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzg(arrayListCreateTypedArrayList4, iObjectWrapperAsInterface7, zzbueVarZzb4);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
