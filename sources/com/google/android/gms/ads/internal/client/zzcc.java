package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbgl;
import com.google.android.gms.internal.ads.zzbgm;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgs;
import com.google.android.gms.internal.ads.zzblb;
import com.google.android.gms.internal.ads.zzbld;
import com.google.android.gms.internal.ads.zzble;
import com.google.android.gms.internal.ads.zzbpr;
import com.google.android.gms.internal.ads.zzbth;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzbto;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbxi;
import com.google.android.gms.internal.ads.zzbxj;
import com.google.android.gms.internal.ads.zzcad;
import com.google.android.gms.internal.ads.zzcae;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcc extends zzavg implements zzce {
    zzcc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbq zzb(IObjectWrapper iObjectWrapper, String str, zzbpr zzbprVar, int i) throws RemoteException {
        zzbq zzboVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(3, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzboVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzboVar = iInterfaceQueryLocalInterface instanceof zzbq ? (zzbq) iInterfaceQueryLocalInterface : new zzbo(strongBinder);
        }
        parcelZzbh.recycle();
        return zzboVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzc(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbpr zzbprVar, int i) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(13, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzd(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbpr zzbprVar, int i) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zze(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbpr zzbprVar, int i) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzf(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, int i) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(10, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzco zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzco zzcmVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(9, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzcmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzcmVar = iInterfaceQueryLocalInterface instanceof zzco ? (zzco) iInterfaceQueryLocalInterface : new zzcm(strongBinder);
        }
        parcelZzbh.recycle();
        return zzcmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzdj zzh(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        zzdj zzdhVar;
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(17, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzdhVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            zzdhVar = iInterfaceQueryLocalInterface instanceof zzdj ? (zzdj) iInterfaceQueryLocalInterface : new zzdh(strongBinder);
        }
        parcelZzbh.recycle();
        return zzdhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbgm zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, iObjectWrapper2);
        Parcel parcelZzbh = zzbh(5, parcelZza);
        zzbgm zzbgmVarZzbF = zzbgl.zzbF(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgmVarZzbF;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbgs zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, iObjectWrapper2);
        zzavi.zzf(parcelZza, iObjectWrapper3);
        Parcel parcelZzbh = zzbh(11, parcelZza);
        zzbgs zzbgsVarZze = zzbgr.zze(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgsVarZze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzble zzk(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i, zzblb zzblbVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        zzavi.zzf(parcelZza, zzblbVar);
        Parcel parcelZzbh = zzbh(16, parcelZza);
        zzble zzbleVarZzb = zzbld.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbleVarZzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbti zzl(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(15, parcelZza);
        zzbti zzbtiVarZzb = zzbth.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbtiVarZzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbtp zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(8, parcelZza);
        zzbtp zzbtpVarZzI = zzbto.zzI(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbtpVarZzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbwt zzn(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbxj zzo(IObjectWrapper iObjectWrapper, String str, zzbpr zzbprVar, int i) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(12, parcelZza);
        zzbxj zzbxjVarZzq = zzbxi.zzq(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbxjVarZzq;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzcae zzp(IObjectWrapper iObjectWrapper, zzbpr zzbprVar, int i) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbprVar);
        parcelZza.writeInt(234310000);
        Parcel parcelZzbh = zzbh(14, parcelZza);
        zzcae zzcaeVarZzb = zzcad.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzcaeVarZzb;
    }
}
