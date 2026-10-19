package com.fyber.inneractive.sdk.config;

import android.content.Context;
import com.fyber.inneractive.sdk.config.l;
import com.fyber.inneractive.sdk.util.IAlog;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* JADX INFO: loaded from: classes2.dex */
public class w {
    public static void a(Context context, v vVar) {
        boolean zIsLimitAdTrackingEnabled;
        String id = null;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            id = advertisingIdInfo.getId();
            zIsLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e2) {
            com.fyber.inneractive.sdk.util.q.b(e2);
            IAlog.c("Advertising ID is not available. Please add Google Play Services library (v 4.0+) to improve your ad targeting. (relevant for devices running Android API 2.3 and above)", new Object[0]);
            zIsLimitAdTrackingEnabled = false;
        }
        l lVar = (l) vVar;
        synchronized (lVar) {
            l.c cVar = lVar.b;
            cVar.a = id;
            cVar.b = zIsLimitAdTrackingEnabled;
            cVar.c = false;
        }
    }
}
