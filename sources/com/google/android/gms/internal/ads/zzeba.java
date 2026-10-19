package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeba extends zzebg {
    private zzbvi zzh;

    zzeba(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zze = context;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzt().zzb();
        this.zzg = scheduledExecutorService;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final synchronized void onConnected(@Nullable Bundle bundle) {
        if (this.zzc) {
            return;
        }
        this.zzc = true;
        try {
            try {
                this.zzd.zzp().zze(this.zzh, new zzebf(this));
            } catch (RemoteException unused) {
                this.zza.zzd(new zzdzp(1));
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "RemoteAdsServiceProxyClientTask.onConnected");
            this.zza.zzd(th);
        }
    }

    public final synchronized h0 zza(zzbvi zzbviVar, long j) {
        if (this.zzb) {
            return zzgbb.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzbviVar;
        zzb();
        h0 h0VarZzo = zzgbb.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        h0VarZzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeaz
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc();
            }
        }, zzcca.zzf);
        return h0VarZzo;
    }
}
