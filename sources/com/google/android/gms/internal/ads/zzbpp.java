package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbpp extends zzavg implements zzbpr {
    zzbpp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final zzbpu zzb(String str) throws RemoteException {
        zzbpu zzbpsVar;
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(1, parcelZza);
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbpsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbpsVar = iInterfaceQueryLocalInterface instanceof zzbpu ? (zzbpu) iInterfaceQueryLocalInterface : new zzbps(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final zzbrp zzc(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(3, parcelZza);
        zzbrp zzbrpVarZzb = zzbro.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzbrpVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final boolean zzd(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(4, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final boolean zze(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzbh = zzbh(2, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }
}
