package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgay implements Runnable {
    final Future zza;
    final zzgax zzb;

    zzgay(Future future, zzgax zzgaxVar) {
        this.zza = future;
        this.zzb = zzgaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable thZza;
        Object obj = this.zza;
        if ((obj instanceof zzgcd) && (thZza = zzgce.zza((zzgcd) obj)) != null) {
            this.zzb.zza(thZza);
            return;
        }
        try {
            this.zzb.zzb(zzgbb.zzp(this.zza));
        } catch (Error e2) {
            e = e2;
            this.zzb.zza(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.zzb.zza(e);
        } catch (ExecutionException e4) {
            this.zzb.zza(e4.getCause());
        }
    }

    public final String toString() {
        zzftr zzftrVarZza = zzfts.zza(this);
        zzftrVarZza.zza(this.zzb);
        return zzftrVarZza.toString();
    }
}
