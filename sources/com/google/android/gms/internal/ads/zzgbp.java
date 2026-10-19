package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfzp;
import com.json.o2;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgbp extends zzfzp.zzi implements Runnable {
    private final Runnable zza;

    public zzgbp(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Error | RuntimeException e2) {
            zzd(e2);
            throw e2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final String zza() {
        return "task=[" + this.zza.toString() + o2.i.f6491e;
    }
}
