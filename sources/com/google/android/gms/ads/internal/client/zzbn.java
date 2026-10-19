package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbn extends IInterface {
    @Nullable
    String zze() throws RemoteException;

    @Nullable
    String zzf() throws RemoteException;

    void zzg(zzl zzlVar) throws RemoteException;

    void zzh(zzl zzlVar, int i) throws RemoteException;

    boolean zzi() throws RemoteException;
}
