package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbha extends zzavg implements zzbhc {
    zzbha(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final com.google.android.gms.ads.internal.client.zzdq zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(7, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final zzbgf zzf() throws RemoteException {
        zzbgf zzbgdVar;
        Parcel parcelZzbh = zzbh(16, zza());
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

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final zzbgi zzg(String str) throws RemoteException {
        zzbgi zzbggVar;
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(2, parcelZza);
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

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final IObjectWrapper zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(9, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final String zzi() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final String zzj(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final List zzk() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList<String> arrayListCreateStringArrayList = parcelZzbh.createStringArrayList();
        parcelZzbh.recycle();
        return arrayListCreateStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzl() throws RemoteException {
        zzbi(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzm() throws RemoteException {
        zzbi(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzn(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzbi(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzo() throws RemoteException {
        zzbi(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(14, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzq() throws RemoteException {
        Parcel parcelZzbh = zzbh(12, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(17, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(10, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzt() throws RemoteException {
        Parcel parcelZzbh = zzbh(13, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }
}
