package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.Nullable;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzefr {

    @Nullable
    private MeasurementManagerFutures zza;
    private final Context zzb;

    zzefr(Context context) {
        this.zzb = context;
    }

    public final h0 zza() {
        MeasurementManagerFutures measurementManagerFuturesFrom = MeasurementManagerFutures.from(this.zzb);
        this.zza = measurementManagerFuturesFrom;
        return measurementManagerFuturesFrom == null ? zzgbb.zzg(new IllegalStateException("MeasurementManagerFutures is null")) : measurementManagerFuturesFrom.getMeasurementApiStatusAsync();
    }

    public final h0 zzb(Uri uri, InputEvent inputEvent) {
        MeasurementManagerFutures measurementManagerFutures = this.zza;
        measurementManagerFutures.getClass();
        return measurementManagerFutures.registerSourceAsync(uri, inputEvent);
    }
}
