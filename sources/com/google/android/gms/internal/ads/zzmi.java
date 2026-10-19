package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
import com.json.k2;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzmi {

    @Nullable
    private final WifiManager zza;

    public zzmi(Context context) {
        this.zza = (WifiManager) context.getApplicationContext().getSystemService(k2.b);
    }
}
