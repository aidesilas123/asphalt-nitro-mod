package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbqe extends zzavg implements zzbqg {
    zzbqe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final boolean zzA() throws RemoteException {
        Parcel parcelZzbh = zzbh(18, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final boolean zzB() throws RemoteException {
        Parcel parcelZzbh = zzbh(17, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final double zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(8, zza());
        double d2 = parcelZzbh.readDouble();
        parcelZzbh.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final float zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(23, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final float zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(25, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final float zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(24, zza());
        float f2 = parcelZzbh.readFloat();
        parcelZzbh.recycle();
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final Bundle zzi() throws RemoteException {
        Parcel parcelZzbh = zzbh(16, zza());
        Bundle bundle = (Bundle) zzavi.zza(parcelZzbh, Bundle.CREATOR);
        parcelZzbh.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final com.google.android.gms.ads.internal.client.zzdq zzj() throws RemoteException {
        Parcel parcelZzbh = zzbh(11, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final zzbga zzk() throws RemoteException {
        Parcel parcelZzbh = zzbh(12, zza());
        zzbga zzbgaVarZzj = zzbfz.zzj(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgaVarZzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final zzbgi zzl() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        zzbgi zzbgiVarZzg = zzbgh.zzg(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbgiVarZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel parcelZzbh = zzbh(13, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel parcelZzbh = zzbh(14, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final IObjectWrapper zzo() throws RemoteException {
        Parcel parcelZzbh = zzbh(15, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzp() throws RemoteException {
        Parcel parcelZzbh = zzbh(7, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzq() throws RemoteException {
        Parcel parcelZzbh = zzbh(4, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzr() throws RemoteException {
        Parcel parcelZzbh = zzbh(6, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzs() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzt() throws RemoteException {
        Parcel parcelZzbh = zzbh(10, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final String zzu() throws RemoteException {
        Parcel parcelZzbh = zzbh(9, zza());
        String string = parcelZzbh.readString();
        parcelZzbh.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final List zzv() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        ArrayList arrayListZzb = zzavi.zzb(parcelZzbh);
        parcelZzbh.recycle();
        return arrayListZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(20, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzx() throws RemoteException {
        zzbi(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, iObjectWrapper2);
        zzavi.zzf(parcelZza, iObjectWrapper3);
        zzbi(21, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(22, parcelZza);
    }
}
