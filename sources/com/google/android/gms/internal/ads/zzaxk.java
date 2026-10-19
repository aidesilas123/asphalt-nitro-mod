package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaxk extends zzavg implements zzaxm {
    zzaxk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaxm
    public final void zzb(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzbi(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxm
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzeVar);
        zzbi(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxm
    public final void zzd(zzaxj zzaxjVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzaxjVar);
        zzbi(1, parcelZza);
    }
}
