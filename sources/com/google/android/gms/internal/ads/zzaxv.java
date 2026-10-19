package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaxv implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzaxx zza;

    zzaxv(zzaxx zzaxxVar) {
        this.zza = zzaxxVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzaxx zzaxxVar;
        synchronized (this.zza.zzc) {
            try {
                zzaxxVar = this.zza;
            } catch (DeadObjectException e2) {
                zzcbn.zzh("Unable to obtain a cache service instance.", e2);
                zzaxx.zzh(this.zza);
            }
            if (zzaxxVar.zzd != null) {
                zzaxxVar.zzf = zzaxxVar.zzd.zzq();
                this.zza.zzc.notifyAll();
            } else {
                this.zza.zzc.notifyAll();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        synchronized (this.zza.zzc) {
            this.zza.zzf = null;
            this.zza.zzc.notifyAll();
        }
    }
}
