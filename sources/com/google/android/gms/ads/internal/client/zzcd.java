package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzavh;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbgm;
import com.google.android.gms.internal.ads.zzbgs;
import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzblb;
import com.google.android.gms.internal.ads.zzble;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbpr;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbxj;
import com.google.android.gms.internal.ads.zzcae;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcd extends zzavh implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzq zzqVar = (zzq) zzavi.zza(parcel, zzq.CREATOR);
                String string = parcel.readString();
                zzbpr zzbprVarZzf = zzbpq.zzf(parcel.readStrongBinder());
                int i3 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbu zzbuVarZzd = zzd(iObjectWrapperAsInterface, zzqVar, string, zzbprVarZzf, i3);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbuVarZzd);
                return true;
            case 2:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzq zzqVar2 = (zzq) zzavi.zza(parcel, zzq.CREATOR);
                String string2 = parcel.readString();
                zzbpr zzbprVarZzf2 = zzbpq.zzf(parcel.readStrongBinder());
                int i4 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbu zzbuVarZze = zze(iObjectWrapperAsInterface2, zzqVar2, string2, zzbprVarZzf2, i4);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbuVarZze);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string3 = parcel.readString();
                zzbpr zzbprVarZzf3 = zzbpq.zzf(parcel.readStrongBinder());
                int i5 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbq zzbqVarZzb = zzb(iObjectWrapperAsInterface3, string3, zzbprVarZzf3, i5);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbqVarZzb);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, null);
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzbgm zzbgmVarZzi = zzi(iObjectWrapperAsInterface4, iObjectWrapperAsInterface5);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbgmVarZzi);
                return true;
            case 6:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpr zzbprVarZzf4 = zzbpq.zzf(parcel.readStrongBinder());
                int i6 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbwt zzbwtVarZzn = zzn(iObjectWrapperAsInterface6, zzbprVarZzf4, i6);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbwtVarZzn);
                return true;
            case 7:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, null);
                return true;
            case 8:
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzbtp zzbtpVarZzm = zzm(iObjectWrapperAsInterface7);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbtpVarZzm);
                return true;
            case 9:
                IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i7 = parcel.readInt();
                zzavi.zzc(parcel);
                zzco zzcoVarZzg = zzg(iObjectWrapperAsInterface8, i7);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzcoVarZzg);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzq zzqVar3 = (zzq) zzavi.zza(parcel, zzq.CREATOR);
                String string4 = parcel.readString();
                int i8 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbu zzbuVarZzf = zzf(iObjectWrapperAsInterface9, zzqVar3, string4, i8);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbuVarZzf);
                return true;
            case 11:
                IObjectWrapper iObjectWrapperAsInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzbgs zzbgsVarZzj = zzj(iObjectWrapperAsInterface10, iObjectWrapperAsInterface11, iObjectWrapperAsInterface12);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbgsVarZzj);
                return true;
            case 12:
                IObjectWrapper iObjectWrapperAsInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string5 = parcel.readString();
                zzbpr zzbprVarZzf5 = zzbpq.zzf(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbxj zzbxjVarZzo = zzo(iObjectWrapperAsInterface13, string5, zzbprVarZzf5, i9);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbxjVarZzo);
                return true;
            case 13:
                IObjectWrapper iObjectWrapperAsInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzq zzqVar4 = (zzq) zzavi.zza(parcel, zzq.CREATOR);
                String string6 = parcel.readString();
                zzbpr zzbprVarZzf6 = zzbpq.zzf(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbu zzbuVarZzc = zzc(iObjectWrapperAsInterface14, zzqVar4, string6, zzbprVarZzf6, i10);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbuVarZzc);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperAsInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpr zzbprVarZzf7 = zzbpq.zzf(parcel.readStrongBinder());
                int i11 = parcel.readInt();
                zzavi.zzc(parcel);
                zzcae zzcaeVarZzp = zzp(iObjectWrapperAsInterface15, zzbprVarZzf7, i11);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzcaeVarZzp);
                return true;
            case 15:
                IObjectWrapper iObjectWrapperAsInterface16 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpr zzbprVarZzf8 = zzbpq.zzf(parcel.readStrongBinder());
                int i12 = parcel.readInt();
                zzavi.zzc(parcel);
                zzbti zzbtiVarZzl = zzl(iObjectWrapperAsInterface16, zzbprVarZzf8, i12);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbtiVarZzl);
                return true;
            case 16:
                IObjectWrapper iObjectWrapperAsInterface17 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpr zzbprVarZzf9 = zzbpq.zzf(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                zzblb zzblbVarZzc = zzbla.zzc(parcel.readStrongBinder());
                zzavi.zzc(parcel);
                zzble zzbleVarZzk = zzk(iObjectWrapperAsInterface17, zzbprVarZzf9, i13, zzblbVarZzc);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzbleVarZzk);
                return true;
            case 17:
                IObjectWrapper iObjectWrapperAsInterface18 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpr zzbprVarZzf10 = zzbpq.zzf(parcel.readStrongBinder());
                int i14 = parcel.readInt();
                zzavi.zzc(parcel);
                zzdj zzdjVarZzh = zzh(iObjectWrapperAsInterface18, zzbprVarZzf10, i14);
                parcel2.writeNoException();
                zzavi.zzf(parcel2, zzdjVarZzh);
                return true;
            default:
                return false;
        }
    }
}
