package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareConstants;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes3.dex */
public class MessagingAnalytics {
    static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            FirebaseApp.getInstance();
            Context contextI = FirebaseApp.getInstance().i();
            SharedPreferences sharedPreferences = contextI.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = contextI.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextI.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    static MessagingClientEvent b(MessagingClientEvent.Event event, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        MessagingClientEvent.Builder builderH = MessagingClientEvent.newBuilder().m(p(extras)).e(event).f(f(extras)).i(m()).k(MessagingClientEvent.SDKPlatform.ANDROID).h(k(extras));
        String strH = h(extras);
        if (strH != null) {
            builderH.g(strH);
        }
        String strO = o(extras);
        if (strO != null) {
            builderH.l(strO);
        }
        String strC = c(extras);
        if (strC != null) {
            builderH.c(strC);
        }
        String strI = i(extras);
        if (strI != null) {
            builderH.b(strI);
        }
        String strE = e(extras);
        if (strE != null) {
            builderH.d(strE);
        }
        long jN = n(extras);
        if (jN > 0) {
            builderH.j(jN);
        }
        return builderH.a();
    }

    @Nullable
    static String c(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    @Nullable
    static String d(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    @Nullable
    static String e(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    @NonNull
    static String f(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance(FirebaseApp.getInstance()).getId());
        } catch (InterruptedException | ExecutionException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Nullable
    static String g(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    @Nullable
    static String h(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        return string == null ? bundle.getString("message_id") : string;
    }

    @Nullable
    static String i(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    @Nullable
    static String j(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    @NonNull
    static MessagingClientEvent.MessageType k(Bundle bundle) {
        return (bundle == null || !NotificationParams.isNotification(bundle)) ? MessagingClientEvent.MessageType.DATA_MESSAGE : MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
    }

    @NonNull
    static String l(Bundle bundle) {
        return (bundle == null || !NotificationParams.isNotification(bundle)) ? "data" : "display";
    }

    public static void logNotificationDismiss(Intent intent) {
        t("_nd", intent.getExtras());
    }

    public static void logNotificationForeground(Intent intent) {
        t("_nf", intent.getExtras());
    }

    public static void logNotificationOpen(Bundle bundle) {
        u(bundle);
        t("_no", bundle);
    }

    public static void logNotificationReceived(Intent intent) {
        if (shouldUploadScionMetrics(intent)) {
            t("_nr", intent.getExtras());
        }
        if (shouldUploadFirelogAnalytics(intent)) {
            s(MessagingClientEvent.Event.MESSAGE_DELIVERED, intent, FirebaseMessaging.getTransportFactory());
        }
    }

    @NonNull
    static String m() {
        return FirebaseApp.getInstance().i().getPackageName();
    }

    @Nullable
    static long n(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "error parsing project number", e2);
            }
        }
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        String strC = firebaseApp.k().c();
        if (strC != null) {
            try {
                return Long.parseLong(strC);
            } catch (NumberFormatException e3) {
                Log.w("FirebaseMessaging", "error parsing sender ID", e3);
            }
        }
        String strB = firebaseApp.k().b();
        if (strB.startsWith("1:")) {
            String[] strArrSplit = strB.split(CertificateUtil.DELIMITER);
            if (strArrSplit.length < 2) {
                return 0L;
            }
            String str = strArrSplit[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e4) {
                Log.w("FirebaseMessaging", "error parsing app ID", e4);
            }
        } else {
            try {
                return Long.parseLong(strB);
            } catch (NumberFormatException e5) {
                Log.w("FirebaseMessaging", "error parsing app ID", e5);
            }
        }
        return 0L;
    }

    @Nullable
    static String o(Bundle bundle) {
        String string = bundle.getString(TypedValues.TransitionType.S_FROM);
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    @NonNull
    static int p(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
            return 0;
        }
    }

    @Nullable
    static String q(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean r(Intent intent) {
        return "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction());
    }

    private static void s(MessagingClientEvent.Event event, Intent intent, @Nullable com.google.android.datatransport.d dVar) {
        if (dVar == null) {
            Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        MessagingClientEvent messagingClientEventB = b(event, intent);
        if (messagingClientEventB == null) {
            return;
        }
        try {
            dVar.a("FCM_CLIENT_EVENT_LOGGING", MessagingClientEventExtension.class, Encoding.of("src/main/proto"), new com.google.android.datatransport.b() { // from class: com.google.firebase.messaging.a
                @Override // com.google.android.datatransport.b
                public final Object apply(Object obj) {
                    return ((MessagingClientEventExtension) obj).b();
                }
            }).a(Event.ofTelemetry(MessagingClientEventExtension.newBuilder().b(messagingClientEventB).a()));
        } catch (RuntimeException e2) {
            Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e2);
        }
    }

    public static boolean shouldUploadFirelogAnalytics(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return a();
    }

    public static boolean shouldUploadScionMetrics(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return shouldUploadScionMetrics(intent.getExtras());
    }

    public static boolean shouldUploadScionMetrics(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    @VisibleForTesting
    static void t(String str, Bundle bundle) {
        try {
            FirebaseApp.getInstance();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String strD = d(bundle);
            if (strD != null) {
                bundle2.putString("_nmid", strD);
            }
            String strE = e(bundle);
            if (strE != null) {
                bundle2.putString("_nmn", strE);
            }
            String strI = i(bundle);
            if (!TextUtils.isEmpty(strI)) {
                bundle2.putString("label", strI);
            }
            String strG = g(bundle);
            if (!TextUtils.isEmpty(strG)) {
                bundle2.putString("message_channel", strG);
            }
            String strO = o(bundle);
            if (strO != null) {
                bundle2.putString("_nt", strO);
            }
            String strJ = j(bundle);
            if (strJ != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(strJ));
                } catch (NumberFormatException e2) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e2);
                }
            }
            String strQ = q(bundle);
            if (strQ != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(strQ));
                } catch (NumberFormatException e3) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e3);
                }
            }
            String strL = l(bundle);
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", strL);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().g(AnalyticsConnector.class);
            if (analyticsConnector != null) {
                analyticsConnector.a(AppMeasurement.FCM_ORIGIN, str, bundle2);
            } else {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    private static void u(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!"1".equals(bundle.getString("google.c.a.tc"))) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
                return;
            }
            return;
        }
        AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().g(AnalyticsConnector.class);
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
        }
        if (analyticsConnector == null) {
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        String string = bundle.getString("google.c.a.c_id");
        analyticsConnector.b(AppMeasurement.FCM_ORIGIN, "_ln", string);
        Bundle bundle2 = new Bundle();
        bundle2.putString(ShareConstants.FEED_SOURCE_PARAM, "Firebase");
        bundle2.putString("medium", "notification");
        bundle2.putString("campaign", string);
        analyticsConnector.a(AppMeasurement.FCM_ORIGIN, "_cmp", bundle2);
    }
}
