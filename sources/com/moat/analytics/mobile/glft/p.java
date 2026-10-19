package com.moat.analytics.mobile.glft;

import android.content.Context;
import android.media.AudioManager;
import android.os.AsyncTask;
import androidx.annotation.FloatRange;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* JADX INFO: loaded from: classes4.dex */
class p {
    private static String a;

    p() {
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    static double a() {
        try {
            AudioManager audioManager = (AudioManager) a.a().getSystemService("audio");
            return ((double) d()) / ((double) audioManager.getStreamMaxVolume(3));
        } catch (Exception e2) {
            l.a(e2);
            return 0.0d;
        }
    }

    static void a(final Context context) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.glft.p.1
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                            str = "User has limited ad tracking";
                        } else {
                            String unused = p.a = advertisingIdInfo.getId();
                            str = "Retrieved Advertising ID = " + p.a;
                        }
                        n.a(3, "MoatUtil", this, str);
                    } catch (Exception e2) {
                        l.a(e2);
                    }
                }
            });
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    static String b() {
        return a;
    }

    private static int d() {
        try {
            return ((AudioManager) a.a().getSystemService("audio")).getStreamVolume(3);
        } catch (Exception e2) {
            l.a(e2);
            return 0;
        }
    }
}
