package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcam implements Runnable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzccf zzb;

    zzcam(zzcan zzcanVar, Context context, zzccf zzccfVar) {
        this.zza = context;
        this.zzb = zzccfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzc(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            this.zzb.zzd(e2);
            zzcbn.zzh("Exception while getting advertising Id info", e2);
        }
    }
}
