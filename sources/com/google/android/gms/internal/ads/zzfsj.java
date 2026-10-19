package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfsj extends zzavg implements zzfsl {
    zzfsj(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final void zze(Bundle bundle, zzfsn zzfsnVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, bundle);
        zzavi.zzf(parcelZza, zzfsnVar);
        zzbj(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final void zzf(String str, Bundle bundle, zzfsn zzfsnVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzavi.zzd(parcelZza, bundle);
        zzavi.zzf(parcelZza, zzfsnVar);
        zzbj(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final void zzg(Bundle bundle, zzfsn zzfsnVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, bundle);
        zzavi.zzf(parcelZza, zzfsnVar);
        zzbj(3, parcelZza);
    }
}
