package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfl implements zzeg {
    protected zzfl() {
    }

    @Override // com.google.android.gms.internal.ads.zzeg
    public final long zza() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzeg
    public final zzeq zzb(Looper looper, @Nullable Handler.Callback callback) {
        return new zzfo(new Handler(looper, callback));
    }
}
