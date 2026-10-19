package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbvp extends zzavh implements zzbvq {
    public zzbvp() {
        super("com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbvt zzbvrVar = null;
        if (i == 1) {
            zzbve zzbveVar = (zzbve) zzavi.zza(parcel, zzbve.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzbvrVar = iInterfaceQueryLocalInterface instanceof zzbvt ? (zzbvt) iInterfaceQueryLocalInterface : new zzbvr(strongBinder);
            }
            zzavi.zzc(parcel);
            zzf(zzbveVar, zzbvrVar);
        } else if (i == 2) {
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                if (iInterfaceQueryLocalInterface2 instanceof zzbvt) {
                }
            }
            zzavi.zzc(parcel);
        } else {
            if (i != 3) {
                return false;
            }
            zzbvi zzbviVar = (zzbvi) zzavi.zza(parcel, zzbvi.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzbvrVar = iInterfaceQueryLocalInterface3 instanceof zzbvt ? (zzbvt) iInterfaceQueryLocalInterface3 : new zzbvr(strongBinder3);
            }
            zzavi.zzc(parcel);
            zze(zzbviVar, zzbvrVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
