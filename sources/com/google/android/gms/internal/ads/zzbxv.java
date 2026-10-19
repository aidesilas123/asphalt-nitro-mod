package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbxv {
    @Nullable
    public static final zzbxj zza(Context context, String str, zzbpr zzbprVar) {
        try {
            IBinder iBinderZze = ((zzbxn) zzcbr.zzb(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", new zzcbp() { // from class: com.google.android.gms.internal.ads.zzbxu
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcbp
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
                    return iInterfaceQueryLocalInterface instanceof zzbxn ? (zzbxn) iInterfaceQueryLocalInterface : new zzbxn(obj);
                }
            })).zze(ObjectWrapper.wrap(context), str, zzbprVar, 234310000);
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return iInterfaceQueryLocalInterface instanceof zzbxj ? (zzbxj) iInterfaceQueryLocalInterface : new zzbxh(iBinderZze);
        } catch (RemoteException | zzcbq e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            return null;
        }
    }
}
