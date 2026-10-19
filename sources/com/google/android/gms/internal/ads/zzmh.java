package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzmh {

    @Nullable
    private final PowerManager zza;

    public zzmh(Context context) {
        this.zza = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
