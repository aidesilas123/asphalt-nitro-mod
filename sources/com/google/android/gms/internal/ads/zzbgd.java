package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgd extends zzavg implements zzbgf {
    zzbgd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final float zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final float zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(6, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final float zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(7, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final IObjectWrapper zzi() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final boolean zzk() throws RemoteException {
        Parcel parcelZzbh = zzbh(10, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final boolean zzl() throws RemoteException {
        Parcel parcelZzbh = zzbh(8, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final void zzm(zzbhq zzbhqVar) throws RemoteException {
        throw null;
    }
}
