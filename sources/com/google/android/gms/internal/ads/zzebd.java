package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzebd extends zzebg {
    private zzbve zzh;

    zzebd(Context context, ScheduledExecutorService scheduledExecutorService) {
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
                this.zzd.zzp().zzf(this.zzh, new zzebf(this));
            } catch (RemoteException unused) {
                this.zza.zzd(new zzdzp(1));
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "RemoteAdsServiceSignalClientTask.onConnected");
            this.zza.zzd(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebg, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        String str = String.format(Locale.US, "Remote ad service connection suspended, cause: %d.", Integer.valueOf(i));
        zzcbn.zze(str);
        this.zza.zzd(new zzdzp(1, str));
    }

    public final synchronized h0 zza(zzbve zzbveVar, long j) {
        if (this.zzb) {
            return zzgbb.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzbveVar;
        zzb();
        h0 h0VarZzo = zzgbb.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        h0VarZzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebc
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc();
            }
        }, zzcca.zzf);
        return h0VarZzo;
    }
}
