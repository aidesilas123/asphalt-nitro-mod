package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzyk {
    private final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public final void zza(Handler handler, zzyl zzylVar) {
        zzc(zzylVar);
        this.zza.add(new zzyj(handler, zzylVar));
    }

    public final void zzb(final int i, final long j, final long j2) {
        for (final zzyj zzyjVar : this.zza) {
            if (!zzyjVar.zzc) {
                zzyjVar.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzyjVar.zzb.zzX(i, j, j2);
                    }
                });
            }
        }
    }

    public final void zzc(zzyl zzylVar) {
        for (zzyj zzyjVar : this.zza) {
            if (zzyjVar.zzb == zzylVar) {
                zzyjVar.zzc();
                this.zza.remove(zzyjVar);
            }
        }
    }
}
