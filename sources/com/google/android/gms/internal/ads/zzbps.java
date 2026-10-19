package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbps extends zzavg implements zzbpu {
    zzbps(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(28, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzB(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(32, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzD(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(21, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzE() throws RemoteException {
        zzbi(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzF() throws RemoteException {
        zzbi(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzG(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = zzavi.zza;
        parcelZza.writeInt(z ? 1 : 0);
        zzbi(25, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(39, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzI() throws RemoteException {
        zzbi(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzJ(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(37, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzK(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzbi(30, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzL() throws RemoteException {
        zzbi(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final boolean zzM() throws RemoteException {
        Parcel parcelZzbh = zzbh(22, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final boolean zzN() throws RemoteException {
        Parcel parcelZzbh = zzbh(13, zza());
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbqc zzO() throws RemoteException {
        zzbqc zzbqcVar;
        Parcel parcelZzbh = zzbh(15, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbqcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbqcVar = iInterfaceQueryLocalInterface instanceof zzbqc ? (zzbqc) iInterfaceQueryLocalInterface : new zzbqc(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbqd zzP() throws RemoteException {
        zzbqd zzbqdVar;
        Parcel parcelZzbh = zzbh(16, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbqdVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbqdVar = iInterfaceQueryLocalInterface instanceof zzbqd ? (zzbqd) iInterfaceQueryLocalInterface : new zzbqd(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final Bundle zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final Bundle zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final Bundle zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        Parcel parcelZzbh = zzbh(26, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbhc zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbqa zzj() throws RemoteException {
        zzbqa zzbpyVar;
        Parcel parcelZzbh = zzbh(36, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbpyVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbpyVar = iInterfaceQueryLocalInterface instanceof zzbqa ? (zzbqa) iInterfaceQueryLocalInterface : new zzbpy(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbpyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbqg zzk() throws RemoteException {
        zzbqg zzbqeVar;
        Parcel parcelZzbh = zzbh(27, zza());
        IBinder strongBinder = parcelZzbh.readStrongBinder();
        if (strongBinder == null) {
            zzbqeVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbqeVar = iInterfaceQueryLocalInterface instanceof zzbqg ? (zzbqg) iInterfaceQueryLocalInterface : new zzbqe(strongBinder);
        }
        parcelZzbh.recycle();
        return zzbqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbsd zzl() throws RemoteException {
        Parcel parcelZzbh = zzbh(33, zza());
        zzbsd zzbsdVar = (zzbsd) zzavi.zza(parcelZzbh, zzbsd.CREATOR);
        parcelZzbh.recycle();
        return zzbsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final zzbsd zzm() throws RemoteException {
        Parcel parcelZzbh = zzbh(34, zza());
        zzbsd zzbsdVar = (zzbsd) zzavi.zza(parcelZzbh, zzbsd.CREATOR);
        parcelZzbh.recycle();
        return zzbsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzo() throws RemoteException {
        zzbi(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbxb zzbxbVar, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(null);
        zzavi.zzf(parcelZza, zzbxbVar);
        parcelZza.writeString(str2);
        zzbi(10, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzq(IObjectWrapper iObjectWrapper, zzbme zzbmeVar, List list) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbmeVar);
        parcelZza.writeTypedList(list);
        zzbi(31, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzr(IObjectWrapper iObjectWrapper, zzbxb zzbxbVar, List list) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbxbVar);
        parcelZza.writeStringList(list);
        zzbi(23, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzs(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        zzbi(11, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(38, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbpx zzbpxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzqVar);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(35, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbpx zzbpxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbpx zzbpxVar, zzbfw zzbfwVar, List list) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzd(parcelZza, zzlVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzavi.zzd(parcelZza, zzbfwVar);
        parcelZza.writeStringList(list);
        zzbi(14, parcelZza);
    }
}
