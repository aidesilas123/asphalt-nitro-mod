package com.gameloft.android.ANMP.GloftAGHM.GoogleFirebase;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleFirebase {
    public static Context a;
    private static FirebaseAnalytics b;

    public static void Init(Context context) {
        a = context;
        b = FirebaseAnalytics.getInstance(context);
    }

    public static void imAliveFirebase() {
    }

    public static void resetAnalyticsDataFirebase() {
        FirebaseAnalytics firebaseAnalytics = b;
        if (firebaseAnalytics == null) {
            return;
        }
        firebaseAnalytics.b();
    }

    public static void sendDummyEventFirebase() {
        if (b == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("Action", "NONE");
        bundle.putString("Label", "NONE");
        bundle.putString("Value", "0");
        b.a("DUMMY_EVENT_TRACK", bundle);
    }

    public static void trackEventFirebase(String str, String str2, String str3, Long l) {
        try {
            if (b == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("Action", str2);
            bundle.putString("Label", str3);
            if (l != null) {
                bundle.putString("Value", String.valueOf(l));
            }
            b.a(str, bundle);
        } catch (Exception unused) {
        }
    }
}
