package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbxr extends zzavg implements IInterface {
    zzbxr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbxg zzbxgVar, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, zzbxgVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbi(2, parcelZza);
    }
}
