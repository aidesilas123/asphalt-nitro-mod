package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbxk extends zzavg implements zzbxm {
    zzbxk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zze() throws RemoteException {
        zzbi(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzf() throws RemoteException {
        zzbi(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzg() throws RemoteException {
        zzbi(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzh(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzbi(4, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzi(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzeVar);
        zzbi(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzj() throws RemoteException {
        zzbi(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxm
    public final void zzk(zzbxg zzbxgVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzbxgVar);
        zzbi(3, parcelZza);
    }
}
