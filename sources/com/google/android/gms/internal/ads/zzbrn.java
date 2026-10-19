package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbrn extends zzavg implements zzbrp {
    zzbrn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final com.google.android.gms.ads.internal.client.zzdq zze() throws RemoteException {
        Parcel parcelZzbh = zzbh(5, zza());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcelZzbh.readStrongBinder());
        parcelZzbh.recycle();
        return zzdqVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final zzbsd zzf() throws RemoteException {
        Parcel parcelZzbh = zzbh(2, zza());
        zzbsd zzbsdVar = (zzbsd) zzavi.zza(parcelZzbh, zzbsd.CREATOR);
        parcelZzbh.recycle();
        return zzbsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final zzbsd zzg() throws RemoteException {
        Parcel parcelZzbh = zzbh(3, zza());
        zzbsd zzbsdVar = (zzbsd) zzavi.zza(parcelZzbh, zzbsd.CREATOR);
        parcelZzbh.recycle();
        return zzbsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzq zzqVar, zzbrs zzbrsVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        zzavi.zzd(parcelZza, bundle);
        zzavi.zzd(parcelZza, bundle2);
        zzavi.zzd(parcelZza, zzqVar);
        zzavi.zzf(parcelZza, zzbrsVar);
        zzbi(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbra zzbraVar, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbraVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(23, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrd zzbrdVar, zzbpx zzbpxVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrdVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzavi.zzd(parcelZza, zzqVar);
        zzbi(13, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrd zzbrdVar, zzbpx zzbpxVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrdVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzavi.zzd(parcelZza, zzqVar);
        zzbi(21, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrg zzbrgVar, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrgVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(14, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrj zzbrjVar, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrjVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(18, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrj zzbrjVar, zzbpx zzbpxVar, zzbfw zzbfwVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrjVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzavi.zzd(parcelZza, zzbfwVar);
        zzbi(22, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrm zzbrmVar, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrmVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(20, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbrm zzbrmVar, zzbpx zzbpxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzavi.zzd(parcelZza, zzlVar);
        zzavi.zzf(parcelZza, iObjectWrapper);
        zzavi.zzf(parcelZza, zzbrmVar);
        zzavi.zzf(parcelZza, zzbpxVar);
        zzbi(16, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final void zzq(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzbi(19, parcelZza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(24, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(15, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrp
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzavi.zzf(parcelZza, iObjectWrapper);
        Parcel parcelZzbh = zzbh(17, parcelZza);
        boolean zZzg = zzavi.zzg(parcelZzbh);
        parcelZzbh.recycle();
        return zZzg;
    }
}
