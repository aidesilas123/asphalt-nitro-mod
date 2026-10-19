package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbxh extends zzavg implements zzbxj {
    zzbxh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final Bundle zzb() throws RemoteException {
        Parcel parcelZzbh = zzbh(9, zza());
        Bundle bundle = (Bundle) zzavi.zza(parcelZzbh, Bundle.CREATOR);
        parcelZzbh.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final com.google.android.gms.ads.internal.client.zzdn zzc() throws RemoteException {
        Parcel parcelZzbh = zzbh(12, zza());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarZzb = com.google.android.gms.ads.internal.client.zzdm.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdnVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final zzbxg zzd() throws RemoteException {
        zzbxg zzbxeVar;
        Parcel parcelZzbh = zzbh(11, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbxeVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzbxeVar = iInterfaceQueryLocalInterface instanceof zzbxg ? (zzbxg) iInterfaceQueryLocalInterface : new zzbxe(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbxq zzbxqVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, zzbxqVar);
        zzbi(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbxq zzbxqVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, zzbxqVar);
        zzbi(14, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzh(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = zzavi.zza;
        parcelZza.writeInt(z ? 1 : 0);
        zzbi(15, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzi(com.google.android.gms.ads.internal.client.zzdd zzddVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzddVar);
        zzbi(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzj(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzdgVar);
        zzbi(13, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzk(zzbxm zzbxmVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzbxmVar);
        zzbi(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzl(zzbxx zzbxxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbxxVar);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final boolean zzo() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzp(zzbxr zzbxrVar) throws RemoteException {
        throw null;
    }
}
