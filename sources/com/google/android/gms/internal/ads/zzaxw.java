package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaxw implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzaxx zza;

    zzaxw(zzaxx zzaxxVar) {
        this.zza = zzaxxVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        synchronized (this.zza.zzc) {
            this.zza.zzf = null;
            zzaxx zzaxxVar = this.zza;
            if (zzaxxVar.zzd != null) {
                zzaxxVar.zzd = null;
            }
            this.zza.zzc.notifyAll();
        }
    }
}
