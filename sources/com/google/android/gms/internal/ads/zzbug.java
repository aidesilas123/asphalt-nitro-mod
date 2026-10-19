package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbug {
    private static zzcae zza;
    private final Context zzb;
    private final AdFormat zzc;

    @Nullable
    private final com.google.android.gms.ads.internal.client.zzdx zzd;

    @Nullable
    private final String zze;

    public zzbug(Context context, AdFormat adFormat, @Nullable com.google.android.gms.ads.internal.client.zzdx zzdxVar, @Nullable String str) {
        this.zzb = context;
        this.zzc = adFormat;
        this.zzd = zzdxVar;
        this.zze = str;
    }

    @Nullable
    public static zzcae zza(Context context) {
        zzcae zzcaeVar;
        synchronized (zzbug.class) {
            if (zza == null) {
                zza = com.google.android.gms.ads.internal.client.zzay.zza().zzr(context, new zzbpo());
            }
            zzcaeVar = zza;
        }
        return zzcaeVar;
    }

    public final void zzb(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        com.google.android.gms.ads.internal.client.zzl zzlVarZza;
        zzcae zzcaeVarZza = zza(this.zzb);
        if (zzcaeVarZza == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        Context context = this.zzb;
        com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.zzd;
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
        if (zzdxVar == null) {
            zzlVarZza = new com.google.android.gms.ads.internal.client.zzm().zza();
        } else {
            zzlVarZza = com.google.android.gms.ads.internal.client.zzp.zza.zza(this.zzb, zzdxVar);
        }
        try {
            zzcaeVarZza.zze(iObjectWrapperWrap, new zzcai(this.zze, this.zzc.name(), null, zzlVarZza), new zzbuf(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
