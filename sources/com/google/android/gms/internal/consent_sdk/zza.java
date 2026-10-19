package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zza {
    private final Application zza;

    public zza(Application application) {
        this.zza = application;
    }

    @Nullable
    public final String zza() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(this.zza).getId();
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e2) {
            Log.d("UserMessagingPlatform", "Failed to get ad id.", e2);
            return null;
        }
    }
}
