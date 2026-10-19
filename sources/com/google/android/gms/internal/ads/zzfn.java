package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfn implements zzep {

    @Nullable
    private Message zza;

    @Nullable
    private zzfo zzb;

    private zzfn() {
    }

    /* synthetic */ zzfn(zzfm zzfmVar) {
    }

    private final void zzd() {
        this.zza = null;
        this.zzb = null;
        zzfo.zzl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzep
    public final void zza() {
        Message message = this.zza;
        Objects.requireNonNull(message);
        message.sendToTarget();
        zzd();
    }

    public final zzfn zzb(Message message, zzfo zzfoVar) {
        this.zza = message;
        this.zzb = zzfoVar;
        return this;
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        Objects.requireNonNull(message);
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        zzd();
        return zSendMessageAtFrontOfQueue;
    }
}
