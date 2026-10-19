package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzffn {
    private final Deque zza = new LinkedBlockingDeque();
    private final Callable zzb;
    private final zzgbl zzc;

    public zzffn(Callable callable, zzgbl zzgblVar) {
        this.zzb = callable;
        this.zzc = zzgblVar;
    }

    public final synchronized h0 zza() {
        zzc(1);
        return (h0) this.zza.poll();
    }

    public final synchronized void zzb(h0 h0Var) {
        this.zza.addFirst(h0Var);
    }

    public final synchronized void zzc(int i) {
        int size = i - this.zza.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.zza.add(this.zzc.zzb(this.zzb));
        }
    }
}
