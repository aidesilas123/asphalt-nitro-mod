package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzavh;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbfw;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbhl;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhp;
import com.google.android.gms.internal.ads.zzbhs;
import com.google.android.gms.internal.ads.zzbht;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbmm;
import com.google.android.gms.internal.ads.zzbmu;
import com.google.android.gms.internal.ads.zzbmv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbp extends zzavh implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbh zzbfVar = null;
        zzcf zzcfVar = null;
        switch (i) {
            case 1:
                zzbn zzbnVarZze = zze();
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbnVarZze);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbfVar = iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbf(strongBinder);
                }
                zzavi.zzc(parcel);
                zzl(zzbfVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbhg zzbhgVarZzb = zzbhf.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzf(zzbhgVarZzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbhj zzbhjVarZzb = zzbhi.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzg(zzbhjVarZzb);
                parcel2.writeNoException();
                return true;
            case 5:
                String string = parcel.readString();
                zzbhp zzbhpVarZzb = zzbho.zzb(parcel.readStrongBinder());
                zzbhm zzbhmVarZzb = zzbhl.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzh(string, zzbhpVarZzb, zzbhmVarZzb);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbfw zzbfwVar = (zzbfw) zzavi.zza(parcel, zzbfw.CREATOR);
                zzavi.zzc(parcel);
                zzo(zzbfwVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcfVar = iInterfaceQueryLocalInterface2 instanceof zzcf ? (zzcf) iInterfaceQueryLocalInterface2 : new zzcf(strongBinder2);
                }
                zzavi.zzc(parcel);
                zzq(zzcfVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbht zzbhtVarZzb = zzbhs.zzb(parcel.readStrongBinder());
                zzq zzqVar = (zzq) zzavi.zza(parcel, zzq.CREATOR);
                zzavi.zzc(parcel);
                zzj(zzbhtVarZzb, zzqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzavi.zza(parcel, PublisherAdViewOptions.CREATOR);
                zzavi.zzc(parcel);
                zzp(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbhw zzbhwVarZzb = zzbhv.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzk(zzbhwVarZzb);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzbmm zzbmmVar = (zzbmm) zzavi.zza(parcel, zzbmm.CREATOR);
                zzavi.zzc(parcel);
                zzn(zzbmmVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbmv zzbmvVarZzb = zzbmu.zzb(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzi(zzbmvVarZzb);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzavi.zza(parcel, AdManagerAdViewOptions.CREATOR);
                zzavi.zzc(parcel);
                zzm(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
