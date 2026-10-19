package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CallSuper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzfqv extends Handler {
    private final Looper zza;

    public zzfqv() {
        this.zza = Looper.getMainLooper();
    }

    public zzfqv(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zza(message);
    }

    @CallSuper
    protected void zza(Message message) {
        super.dispatchMessage(message);
    }
}
