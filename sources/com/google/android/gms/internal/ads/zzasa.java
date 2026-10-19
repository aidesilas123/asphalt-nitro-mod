package com.google.android.gms.internal.ads;

import com.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzasa implements Runnable {
    final /* synthetic */ zzasb zza;

    zzasa(zzasb zzasbVar) {
        this.zza = zzasbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza.zzo) {
            if (this.zza.zzp) {
                return;
            }
            this.zza.zzp = true;
            try {
                zzasb.zzj(this.zza);
            } catch (Exception e2) {
                this.zza.zzh.zzc(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_TIMED_OUT, -1L, e2);
            }
            synchronized (this.zza.zzo) {
                this.zza.zzp = false;
            }
        }
    }
}
