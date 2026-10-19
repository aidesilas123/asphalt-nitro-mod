package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdzc extends zzdza {
    zzdzc(Context context) {
        this.zzf = new zzbva(context, com.google.android.gms.ads.internal.zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    this.zzf.zzp().zzf(this.zze, new zzdyz(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.zza.zzd(new zzdzp(1));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "RemoteSignalsClientTask.onConnected");
                    this.zza.zzd(new zzdzp(1));
                }
            }
        }
    }

    public final h0 zzb(zzbwa zzbwaVar) {
        synchronized (this.zzb) {
            if (this.zzc) {
                return this.zza;
            }
            this.zzc = true;
            this.zze = zzbwaVar;
            this.zzf.checkAvailabilityAndConnect();
            this.zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzb
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza();
                }
            }, zzcca.zzf);
            return this.zza;
        }
    }
}
