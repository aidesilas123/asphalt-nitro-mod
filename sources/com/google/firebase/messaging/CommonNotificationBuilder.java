package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.drive.DriveFile;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class CommonNotificationBuilder {
    private static final AtomicInteger a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    public static class DisplayNotificationInfo {
        public final NotificationCompat.Builder a;
        public final String b;
        public final int c;

        DisplayNotificationInfo(NotificationCompat.Builder builder, String str, int i) {
            this.a = builder;
            this.b = str;
            this.c = i;
        }
    }

    private CommonNotificationBuilder() {
    }

    @Nullable
    private static PendingIntent a(Context context, NotificationParams notificationParams, String str, PackageManager packageManager) {
        Intent intentE = e(str, notificationParams, packageManager);
        if (intentE == null) {
            return null;
        }
        intentE.addFlags(67108864);
        intentE.putExtras(notificationParams.x());
        if (o(notificationParams)) {
            intentE.putExtra("gcm.n.analytics_data", notificationParams.w());
        }
        return PendingIntent.getActivity(context, f(), intentE, j(1073741824));
    }

    @Nullable
    private static PendingIntent b(Context context, NotificationParams notificationParams) {
        if (o(notificationParams)) {
            return c(context, new Intent(CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS).putExtras(notificationParams.w()));
        }
        return null;
    }

    private static PendingIntent c(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, f(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra(CloudMessagingReceiver.IntentKeys.WRAPPED_INTENT, intent), j(1073741824));
    }

    public static DisplayNotificationInfo createNotificationInfo(Context context, String str, NotificationParams notificationParams, String str2, Resources resources, PackageManager packageManager, Bundle bundle) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str2);
        String strN = notificationParams.n(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(strN)) {
            builder.setContentTitle(strN);
        }
        String strN2 = notificationParams.n(resources, str, "gcm.n.body");
        if (!TextUtils.isEmpty(strN2)) {
            builder.setContentText(strN2);
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(strN2));
        }
        builder.setSmallIcon(k(packageManager, resources, str, notificationParams.p("gcm.n.icon"), bundle));
        Uri uriL = l(str, notificationParams, resources);
        if (uriL != null) {
            builder.setSound(uriL);
        }
        builder.setContentIntent(a(context, notificationParams, str, packageManager));
        PendingIntent pendingIntentB = b(context, notificationParams);
        if (pendingIntentB != null) {
            builder.setDeleteIntent(pendingIntentB);
        }
        Integer numG = g(context, notificationParams.p("gcm.n.color"), bundle);
        if (numG != null) {
            builder.setColor(numG.intValue());
        }
        builder.setAutoCancel(!notificationParams.a("gcm.n.sticky"));
        builder.setLocalOnly(notificationParams.a("gcm.n.local_only"));
        String strP = notificationParams.p("gcm.n.ticker");
        if (strP != null) {
            builder.setTicker(strP);
        }
        Integer numM = notificationParams.m();
        if (numM != null) {
            builder.setPriority(numM.intValue());
        }
        Integer numR = notificationParams.r();
        if (numR != null) {
            builder.setVisibility(numR.intValue());
        }
        Integer numL = notificationParams.l();
        if (numL != null) {
            builder.setNumber(numL.intValue());
        }
        Long lJ = notificationParams.j("gcm.n.event_time");
        if (lJ != null) {
            builder.setShowWhen(true);
            builder.setWhen(lJ.longValue());
        }
        long[] jArrQ = notificationParams.q();
        if (jArrQ != null) {
            builder.setVibrate(jArrQ);
        }
        int[] iArrE = notificationParams.e();
        if (iArrE != null) {
            builder.setLights(iArrE[0], iArrE[1], iArrE[2]);
        }
        builder.setDefaults(h(notificationParams));
        return new DisplayNotificationInfo(builder, m(notificationParams), 0);
    }

    static DisplayNotificationInfo d(Context context, NotificationParams notificationParams) {
        Bundle bundleI = i(context.getPackageManager(), context.getPackageName());
        return createNotificationInfo(context, context.getPackageName(), notificationParams, getOrCreateChannel(context, notificationParams.k(), bundleI), context.getResources(), context.getPackageManager(), bundleI);
    }

    private static Intent e(String str, NotificationParams notificationParams, PackageManager packageManager) {
        String strP = notificationParams.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(strP)) {
            Intent intent = new Intent(strP);
            intent.setPackage(str);
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            return intent;
        }
        Uri uriF = notificationParams.f();
        if (uriF != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(uriF);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int f() {
        return a.incrementAndGet();
    }

    private static Integer g(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(context, i));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    @TargetApi(26)
    @VisibleForTesting
    public static String getOrCreateChannel(Context context, String str, Bundle bundle) {
        String string;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string2)) {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            } else {
                if (notificationManager.getNotificationChannel(string2) != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", TypedValues.Custom.S_STRING, context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static int h(NotificationParams notificationParams) {
        int i = notificationParams.a("gcm.n.default_sound") ? 1 : 0;
        if (notificationParams.a("gcm.n.default_vibrate_timings")) {
            i |= 2;
        }
        return notificationParams.a("gcm.n.default_light_settings") ? i | 4 : i;
    }

    private static Bundle i(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e2);
        }
        return Bundle.EMPTY;
    }

    private static int j(int i) {
        return Build.VERSION.SDK_INT >= 23 ? i | 67108864 : i;
    }

    private static int k(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && n(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && n(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i == 0 || !n(resources, i)) {
            try {
                i = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e2);
            }
        }
        return (i == 0 || !n(resources, i)) ? android.R.drawable.sym_def_app_icon : i;
    }

    private static Uri l(String str, NotificationParams notificationParams, Resources resources) {
        String strO = notificationParams.o();
        if (TextUtils.isEmpty(strO)) {
            return null;
        }
        if ("default".equals(strO) || resources.getIdentifier(strO, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        return Uri.parse("android.resource://" + str + "/raw/" + strO);
    }

    private static String m(NotificationParams notificationParams) {
        String strP = notificationParams.p("gcm.n.tag");
        if (!TextUtils.isEmpty(strP)) {
            return strP;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    @TargetApi(26)
    private static boolean n(Resources resources, int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            Log.e("FirebaseMessaging", "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i);
            return false;
        } catch (Resources.NotFoundException unused) {
            Log.e("FirebaseMessaging", "Couldn't find resource " + i + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean o(@NonNull NotificationParams notificationParams) {
        return notificationParams.a("google.c.a.e");
    }
}
