package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzrl {
    public final int zza;

    @Nullable
    public final zzuk zzb;
    private final CopyOnWriteArrayList zzc;

    public zzrl() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzrl(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable zzuk zzukVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzukVar;
    }

    @CheckResult
    public final zzrl zza(int i, @Nullable zzuk zzukVar) {
        return new zzrl(this.zzc, 0, zzukVar);
    }

    public final void zzb(Handler handler, zzrm zzrmVar) {
        this.zzc.add(new zzrk(handler, zzrmVar));
    }

    public final void zzc(zzrm zzrmVar) {
        for (zzrk zzrkVar : this.zzc) {
            if (zzrkVar.zzb == zzrmVar) {
                this.zzc.remove(zzrkVar);
            }
        }
    }
}
