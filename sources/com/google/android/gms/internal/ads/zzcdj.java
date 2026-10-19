package com.google.android.gms.internal.ads;

import com.json.z5;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcdj implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcdk zzb;

    zzcdj(zzcdk zzcdkVar, boolean z) {
        this.zzb = zzcdkVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK("windowVisibilityChanged", z5.k, String.valueOf(this.zza));
    }
}
