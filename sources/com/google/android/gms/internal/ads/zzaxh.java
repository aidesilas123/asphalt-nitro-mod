package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaxh extends zzavg implements zzaxj {
    zzaxh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaxj
    public final com.google.android.gms.ads.internal.client.zzbu zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxj
    public final com.google.android.gms.ads.internal.client.zzdn zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarZzb = com.google.android.gms.ads.internal.client.zzdm.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdnVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaxj
    public final void zzg(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = zzavi.zza;
        parcelZza.writeInt(z ? 1 : 0);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxj
    public final void zzh(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzdgVar);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxj
    public final void zzi(IObjectWrapper iObjectWrapper, zzaxq zzaxqVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzaxqVar);
        zzbi(4, parcelZza);
    }
}
