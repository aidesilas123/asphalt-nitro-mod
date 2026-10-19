package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbvl extends zzavh implements zzbvm {
    public zzbvl() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbvw zzbvuVar = null;
        if (i == 1) {
            zzavi.zzc(parcel);
            parcel2.writeNoException();
            zzavi.zze(parcel2, null);
        } else if (i == 2) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (iInterfaceQueryLocalInterface instanceof zzbvn) {
                }
            }
            zzavi.zzc(parcel);
            parcel2.writeNoException();
        } else if (i == 4) {
            zzbwa zzbwaVar = (zzbwa) zzavi.zza(parcel, zzbwa.CREATOR);
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbvuVar = iInterfaceQueryLocalInterface2 instanceof zzbvw ? (zzbvw) iInterfaceQueryLocalInterface2 : new zzbvu(strongBinder2);
            }
            zzavi.zzc(parcel);
            zzg(zzbwaVar, zzbvuVar);
            parcel2.writeNoException();
        } else if (i == 5) {
            zzbwa zzbwaVar2 = (zzbwa) zzavi.zza(parcel, zzbwa.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbvuVar = iInterfaceQueryLocalInterface3 instanceof zzbvw ? (zzbvw) iInterfaceQueryLocalInterface3 : new zzbvu(strongBinder3);
            }
            zzavi.zzc(parcel);
            zzf(zzbwaVar2, zzbvuVar);
            parcel2.writeNoException();
        } else if (i == 6) {
            zzbwa zzbwaVar3 = (zzbwa) zzavi.zza(parcel, zzbwa.CREATOR);
            IBinder strongBinder4 = parcel.readStrongBinder();
            if (strongBinder4 != null) {
                IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbvuVar = iInterfaceQueryLocalInterface4 instanceof zzbvw ? (zzbvw) iInterfaceQueryLocalInterface4 : new zzbvu(strongBinder4);
            }
            zzavi.zzc(parcel);
            zze(zzbwaVar3, zzbvuVar);
            parcel2.writeNoException();
        } else {
            if (i != 7) {
                return false;
            }
            String string = parcel.readString();
            IBinder strongBinder5 = parcel.readStrongBinder();
            if (strongBinder5 != null) {
                IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbvuVar = iInterfaceQueryLocalInterface5 instanceof zzbvw ? (zzbvw) iInterfaceQueryLocalInterface5 : new zzbvu(strongBinder5);
            }
            zzavi.zzc(parcel);
            zzh(string, zzbvuVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
