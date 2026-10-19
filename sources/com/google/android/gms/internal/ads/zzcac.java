package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcac extends zzavg implements zzcae {
    zzcac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zze(IObjectWrapper iObjectWrapper, zzcai zzcaiVar, zzcab zzcabVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzcaiVar);
        zzavi.zzf(parcelZza, zzcabVar);
        zzbi(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzf(zzbun zzbunVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbunVar);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbueVar);
        zzbi(10, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbueVar);
        zzbi(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbueVar);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbueVar);
        zzbi(5, parcelZza);
    }
}
