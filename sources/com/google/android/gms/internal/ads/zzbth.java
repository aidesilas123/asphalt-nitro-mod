package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbth extends zzavh implements zzbti {
    public zzbth() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    public static zzbti zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return iInterfaceQueryLocalInterface instanceof zzbti ? (zzbti) iInterfaceQueryLocalInterface : new zzbtg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Intent intent = (Intent) zzavi.zza(parcel, Intent.CREATOR);
            zzavi.zzc(parcel);
            zze(intent);
        } else if (i == 2) {
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String string = parcel.readString();
            String string2 = parcel.readString();
            zzavi.zzc(parcel);
            zzi(iObjectWrapperAsInterface, string, string2);
        } else if (i == 3) {
            zzh();
        } else if (i == 4) {
            IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzavi.zzc(parcel);
            zzg(iObjectWrapperAsInterface2);
        } else {
            if (i != 5) {
                return false;
            }
            String[] strArrCreateStringArray = parcel.createStringArray();
            int[] iArrCreateIntArray = parcel.createIntArray();
            IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzavi.zzc(parcel);
            zzf(strArrCreateStringArray, iArrCreateIntArray, iObjectWrapperAsInterface3);
        }
        parcel2.writeNoException();
        return true;
    }
}
