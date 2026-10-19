package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzen extends com.google.android.gms.internal.measurement.zzbn implements zzeo {
    public zzen() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzav zzavVar = (zzav) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzav.CREATOR);
                zzp zzpVar = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzk(zzavVar, zzpVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzll zzllVar = (zzll) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzll.CREATOR);
                zzp zzpVar2 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzt(zzllVar, zzpVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zzp zzpVar3 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzj(zzpVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzav zzavVar2 = (zzav) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzav.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzl(zzavVar2, string, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzp zzpVar4 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzs(zzpVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzp zzpVar5 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                boolean zZzg = com.google.android.gms.internal.measurement.zzbo.zzg(parcel);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                List listZze = zze(zzpVar5, zZzg);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZze);
                return true;
            case 9:
                zzav zzavVar3 = (zzav) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzav.CREATOR);
                String string3 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                byte[] bArrZzu = zzu(zzavVar3, string3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZzu);
                return true;
            case 10:
                long j = parcel.readLong();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzq(j, string4, string5, string6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzp zzpVar6 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                String strZzd = zzd(zzpVar6);
                parcel2.writeNoException();
                parcel2.writeString(strZzd);
                return true;
            case 12:
                zzab zzabVar = (zzab) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzab.CREATOR);
                zzp zzpVar7 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzn(zzabVar, zzpVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzab zzabVar2 = (zzab) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzab.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzo(zzabVar2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zZzg2 = com.google.android.gms.internal.measurement.zzbo.zzg(parcel);
                zzp zzpVar8 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                List listZzh = zzh(string7, string8, zZzg2, zzpVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzh);
                return true;
            case 15:
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                boolean zZzg3 = com.google.android.gms.internal.measurement.zzbo.zzg(parcel);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                List listZzi = zzi(string9, string10, string11, zZzg3);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzi);
                return true;
            case 16:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzp zzpVar9 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                List listZzf = zzf(string12, string13, zzpVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzf);
                return true;
            case 17:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                List listZzg = zzg(string14, string15, string16);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzg);
                return true;
            case 18:
                zzp zzpVar10 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzm(zzpVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) com.google.android.gms.internal.measurement.zzbo.zza(parcel, Bundle.CREATOR);
                zzp zzpVar11 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzr(bundle, zzpVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzp zzpVar12 = (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.zzc(parcel);
                zzp(zzpVar12);
                parcel2.writeNoException();
                return true;
        }
    }
}
