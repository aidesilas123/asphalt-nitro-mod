package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzayk implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzccf zza;
    final /* synthetic */ zzayl zzb;

    zzayk(zzayl zzaylVar, zzccf zzccfVar) {
        this.zzb = zzaylVar;
        this.zza = zzccfVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        synchronized (this.zzb.zzd) {
            this.zza.zzd(new RuntimeException("Connection failed."));
        }
    }
}
