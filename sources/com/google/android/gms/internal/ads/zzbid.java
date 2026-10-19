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
public final class zzbid extends zzavg implements zzbif {
    zzbid(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzA() throws RemoteException {
        zzbi(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, bundle);
        zzbi(17, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzC() throws RemoteException {
        zzbi(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzD(com.google.android.gms.ads.internal.client.zzcs zzcsVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzcsVar);
        zzbi(26, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzE(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzdgVar);
        zzbi(32, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzF(zzbic zzbicVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzbicVar);
        zzbi(21, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final boolean zzG() throws RemoteException {
        Parcel parcelZzbh = zzbh(30, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final boolean zzH() throws RemoteException {
        Parcel parcelZzbh = zzbh(24, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final boolean zzI(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, bundle);
        Parcel parcelZzbh = zzbh(16, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final double zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(8, zza());
        double d2 = parcelZzbh.readDouble();
        parcelZzbh.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final Bundle zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(20, zza());
        Bundle bundle = (Bundle) zzavi.zza(parcelZzbh, Bundle.CREATOR);
        parcelZzbh.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final com.google.android.gms.ads.internal.client.zzdn zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(31, zza());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarZzb = com.google.android.gms.ads.internal.client.zzdm.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdnVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(11, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final zzbga zzi() throws RemoteException {
        zzbga zzbfyVar;
        Parcel parcelZzbh = zzbh(14, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbfyVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbfyVar = iInterfaceQueryLocalInterface instanceof zzbga ? (zzbga) iInterfaceQueryLocalInterface : new zzbfy(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbfyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final zzbgf zzj() throws RemoteException {
        zzbgf zzbgdVar;
        Parcel parcelZzbh = zzbh(29, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbgdVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbgdVar = iInterfaceQueryLocalInterface instanceof zzbgf ? (zzbgf) iInterfaceQueryLocalInterface : new zzbgd(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final zzbgi zzk() throws RemoteException {
        zzbgi zzbggVar;
        Parcel parcelZzbh = zzbh(5, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbggVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbggVar = iInterfaceQueryLocalInterface instanceof zzbgi ? (zzbgi) iInterfaceQueryLocalInterface : new zzbgg(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final IObjectWrapper zzl() throws RemoteException {
        Parcel parcelZzbh = zzbh(19, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel parcelZzbh = zzbh(18, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzn() throws RemoteException {
        Parcel parcelZzbh = zzbh(7, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzo() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzp() throws RemoteException {
        Parcel parcelZzbh = zzbh(6, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzq() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzr() throws RemoteException {
        Parcel parcelZzbh = zzbh(12, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzs() throws RemoteException {
        Parcel parcelZzbh = zzbh(10, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final String zzt() throws RemoteException {
        Parcel parcelZzbh = zzbh(9, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final List zzu() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList arrayListZzb = zzavi.zzb(parcelZzbh);
        parcelZzbh.recycle();
        return arrayListZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final List zzv() throws RemoteException {
        Parcel parcelZzbh = zzbh(23, zza());
        ArrayList arrayListZzb = zzavi.zzb(parcelZzbh);
        parcelZzbh.recycle();
        return arrayListZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzw() throws RemoteException {
        zzbi(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzx() throws RemoteException {
        zzbi(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzy(com.google.android.gms.ads.internal.client.zzcw zzcwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzcwVar);
        zzbi(25, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, bundle);
        zzbi(15, parcelZza);
    }
}
