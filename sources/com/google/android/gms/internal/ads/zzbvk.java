package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbvk extends zzavg implements zzbvm {
    zzbvk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze(zzbwa zzbwaVar, zzbvw zzbvwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbwaVar);
        zzavi.zzf(parcelZza, zzbvwVar);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf(zzbwa zzbwaVar, zzbvw zzbvwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbwaVar);
        zzavi.zzf(parcelZza, zzbvwVar);
        zzbi(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(zzbwa zzbwaVar, zzbvw zzbvwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzbwaVar);
        zzavi.zzf(parcelZza, zzbvwVar);
        zzbi(4, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh(String str, zzbvw zzbvwVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbvwVar);
        zzbi(7, parcelZza);
    }
}
