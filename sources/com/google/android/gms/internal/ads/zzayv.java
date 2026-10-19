package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzayv {

    @VisibleForTesting
    zzavl zza;

    @VisibleForTesting
    boolean zzb;
    private final ExecutorService zzc;

    public zzayv() {
        this.zzc = zzcbc.zzb;
    }

    public zzayv(final Context context) {
        ExecutorService executorService = zzcbc.zzb;
        this.zzc = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzayq
            @Override // java.lang.Runnable
            public final void run() {
                boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeN)).booleanValue();
                zzayv zzayvVar = this.zza;
                Context context2 = context;
                if (zBooleanValue) {
                    try {
                        zzayvVar.zza = (zzavl) zzcbr.zzb(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new zzcbp() { // from class: com.google.android.gms.internal.ads.zzayr
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.google.android.gms.internal.ads.zzcbp
                            public final Object zza(Object obj) {
                                return zzavk.zzb(obj);
                            }
                        });
                        zzayvVar.zza.zze(ObjectWrapper.wrap(context2), "GMA_SDK");
                        zzayvVar.zzb = true;
                    } catch (RemoteException | zzcbq | NullPointerException unused) {
                        zzcbn.zze("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
