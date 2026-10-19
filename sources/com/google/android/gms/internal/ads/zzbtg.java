package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbtg extends zzavg implements zzbti {
    zzbtg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zze(Intent intent) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, intent);
        zzbi(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeStringArray(strArr);
        parcelZza.writeIntArray(iArr);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(4, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzh() throws RemoteException {
        zzbi(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbi(2, parcelZza);
    }
}
