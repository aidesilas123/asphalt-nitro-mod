package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbxi extends zzavh implements zzbxj {
    public zzbxi() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbxj zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return iInterfaceQueryLocalInterface instanceof zzbxj ? (zzbxj) iInterfaceQueryLocalInterface : new zzbxh(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbxq zzbxoVar = null;
        zzbxq zzbxoVar2 = null;
        zzbxr zzbxrVar = null;
        zzbxm zzbxkVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzavi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbxoVar = iInterfaceQueryLocalInterface instanceof zzbxq ? (zzbxq) iInterfaceQueryLocalInterface : new zzbxo(strongBinder);
                }
                zzavi.zzc(parcel);
                zzf(zzlVar, zzbxoVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbxkVar = iInterfaceQueryLocalInterface2 instanceof zzbxm ? (zzbxm) iInterfaceQueryLocalInterface2 : new zzbxk(strongBinder2);
                }
                zzavi.zzc(parcel);
                zzk(zzbxkVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zZzo = zzo();
                parcel2.writeNoException();
                int i3 = zzavi.zza;
                parcel2.writeInt(zZzo ? 1 : 0);
                return true;
            case 4:
                String strZze = zze();
                parcel2.writeNoException();
                parcel2.writeString(strZze);
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzm(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbxrVar = iInterfaceQueryLocalInterface3 instanceof zzbxr ? (zzbxr) iInterfaceQueryLocalInterface3 : new zzbxr(strongBinder3);
                }
                zzavi.zzc(parcel);
                zzp(zzbxrVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbxx zzbxxVar = (zzbxx) zzavi.zza(parcel, zzbxx.CREATOR);
                zzavi.zzc(parcel);
                zzl(zzbxxVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdd zzddVarZzb = com.google.android.gms.ads.internal.client.zzdc.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzi(zzddVarZzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundleZzb = zzb();
                parcel2.writeNoException();
                zzavi.zze(parcel2, bundleZzb);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zZzg = zzavi.zzg(parcel);
                zzavi.zzc(parcel);
                zzn(iObjectWrapperAsInterface2, zZzg);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbxg zzbxgVarZzd = zzd();
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbxgVarZzd);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzdn zzdnVarZzc = zzc();
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzdnVarZzc);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdg zzdgVarZzb = com.google.android.gms.ads.internal.client.zzdf.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzj(zzdgVarZzb);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzavi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbxoVar2 = iInterfaceQueryLocalInterface4 instanceof zzbxq ? (zzbxq) iInterfaceQueryLocalInterface4 : new zzbxo(strongBinder4);
                }
                zzavi.zzc(parcel);
                zzg(zzlVar2, zzbxoVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zZzg2 = zzavi.zzg(parcel);
                zzavi.zzc(parcel);
                zzh(zZzg2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
