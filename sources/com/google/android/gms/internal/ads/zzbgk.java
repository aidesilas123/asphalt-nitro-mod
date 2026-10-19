package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgk extends zzavg implements zzbgm {
    zzbgk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final IObjectWrapper zzb(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzbA(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzbB(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzbC(zzbgf zzbgfVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzbgfVar);
        zzbi(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzbD(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzbE(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzc() throws RemoteException {
        zzbi(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeInt(i);
        zzbi(5, parcelZza);
    }
}
