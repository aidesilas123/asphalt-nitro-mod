package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface zzbgm extends IInterface {
    IObjectWrapper zzb(String str) throws RemoteException;

    void zzbA(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzbB(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzbC(@Nullable zzbgf zzbgfVar) throws RemoteException;

    void zzbD(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzbE(@Nullable IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzc() throws RemoteException;

    void zzd(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException;
}
