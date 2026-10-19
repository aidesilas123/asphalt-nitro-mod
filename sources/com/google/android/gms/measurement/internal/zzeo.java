package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public interface zzeo extends IInterface {
    @Nullable
    String zzd(zzp zzpVar) throws RemoteException;

    @Nullable
    List zze(zzp zzpVar, boolean z) throws RemoteException;

    List zzf(@Nullable String str, @Nullable String str2, zzp zzpVar) throws RemoteException;

    List zzg(String str, @Nullable String str2, @Nullable String str3) throws RemoteException;

    List zzh(@Nullable String str, @Nullable String str2, boolean z, zzp zzpVar) throws RemoteException;

    List zzi(String str, @Nullable String str2, @Nullable String str3, boolean z) throws RemoteException;

    void zzj(zzp zzpVar) throws RemoteException;

    void zzk(zzav zzavVar, zzp zzpVar) throws RemoteException;

    void zzl(zzav zzavVar, String str, @Nullable String str2) throws RemoteException;

    void zzm(zzp zzpVar) throws RemoteException;

    void zzn(zzab zzabVar, zzp zzpVar) throws RemoteException;

    void zzo(zzab zzabVar) throws RemoteException;

    void zzp(zzp zzpVar) throws RemoteException;

    void zzq(long j, @Nullable String str, @Nullable String str2, String str3) throws RemoteException;

    void zzr(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zzs(zzp zzpVar) throws RemoteException;

    void zzt(zzll zzllVar, zzp zzpVar) throws RemoteException;

    @Nullable
    byte[] zzu(zzav zzavVar, String str) throws RemoteException;
}
