package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfpw extends zzavg implements zzfpy {
    zzfpw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zze(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeString(null);
        zzbi(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zzf() throws RemoteException {
        zzbi(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zzg(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zzh(int[] iArr) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeIntArray(null);
        zzbi(4, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zzi(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpy
    public final void zzj(byte[] bArr) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeByteArray(bArr);
        zzbi(5, parcelZza);
    }
}
