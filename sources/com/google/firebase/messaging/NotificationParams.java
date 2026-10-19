package com.google.firebase.messaging;

import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public class NotificationParams {

    @NonNull
    private final Bundle a;

    public NotificationParams(@NonNull Bundle bundle) {
        Objects.requireNonNull(bundle, "data");
        this.a = new Bundle(bundle);
    }

    private static int d(String str) {
        int color = Color.parseColor(str);
        if (color != -16777216) {
            return color;
        }
        throw new IllegalArgumentException("Transparent color is invalid");
    }

    public static boolean isNotification(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString(u("gcm.n.e")));
    }

    private static boolean s(String str) {
        return str.startsWith("google.c.a.") || str.equals(TypedValues.TransitionType.S_FROM);
    }

    private static boolean t(String str) {
        return str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.");
    }

    private static String u(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    private String v(String str) {
        if (!this.a.containsKey(str) && str.startsWith("gcm.n.")) {
            String strU = u(str);
            if (this.a.containsKey(strU)) {
                return strU;
            }
        }
        return str;
    }

    private static String y(String str) {
        return str.startsWith("gcm.n.") ? str.substring(6) : str;
    }

    public boolean a(String str) {
        String strP = p(str);
        return "1".equals(strP) || Boolean.parseBoolean(strP);
    }

    public Integer b(String str) {
        String strP = p(str);
        if (TextUtils.isEmpty(strP)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(strP));
        } catch (NumberFormatException unused) {
            Log.w("NotificationParams", "Couldn't parse value of " + y(str) + "(" + strP + ") into an int");
            return null;
        }
    }

    @Nullable
    public JSONArray c(String str) {
        String strP = p(str);
        if (TextUtils.isEmpty(strP)) {
            return null;
        }
        try {
            return new JSONArray(strP);
        } catch (JSONException unused) {
            Log.w("NotificationParams", "Malformed JSON for key " + y(str) + ": " + strP + ", falling back to default");
            return null;
        }
    }

    @Nullable
    int[] e() {
        JSONArray jSONArrayC = c("gcm.n.light_settings");
        if (jSONArrayC == null) {
            return null;
        }
        int[] iArr = new int[3];
        try {
            if (jSONArrayC.length() != 3) {
                throw new JSONException("lightSettings don't have all three fields");
            }
            iArr[0] = d(jSONArrayC.optString(0));
            iArr[1] = jSONArrayC.optInt(1);
            iArr[2] = jSONArrayC.optInt(2);
            return iArr;
        } catch (IllegalArgumentException e2) {
            Log.w("NotificationParams", "LightSettings is invalid: " + jSONArrayC + ". " + e2.getMessage() + ". Skipping setting LightSettings");
            return null;
        } catch (JSONException unused) {
            Log.w("NotificationParams", "LightSettings is invalid: " + jSONArrayC + ". Skipping setting LightSettings");
            return null;
        }
    }

    @Nullable
    public Uri f() {
        String strP = p("gcm.n.link_android");
        if (TextUtils.isEmpty(strP)) {
            strP = p("gcm.n.link");
        }
        if (TextUtils.isEmpty(strP)) {
            return null;
        }
        return Uri.parse(strP);
    }

    @Nullable
    public Object[] g(String str) {
        JSONArray jSONArrayC = c(str + "_loc_args");
        if (jSONArrayC == null) {
            return null;
        }
        int length = jSONArrayC.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = jSONArrayC.optString(i);
        }
        return strArr;
    }

    @Nullable
    public String h(String str) {
        return p(str + "_loc_key");
    }

    @Nullable
    public String i(Resources resources, String str, String str2) {
        String strH = h(str2);
        if (TextUtils.isEmpty(strH)) {
            return null;
        }
        int identifier = resources.getIdentifier(strH, TypedValues.Custom.S_STRING, str);
        if (identifier == 0) {
            Log.w("NotificationParams", y(str2 + "_loc_key") + " resource not found: " + str2 + " Default value will be used.");
            return null;
        }
        Object[] objArrG = g(str2);
        if (objArrG == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, objArrG);
        } catch (MissingFormatArgumentException e2) {
            Log.w("NotificationParams", "Missing format argument for " + y(str2) + ": " + Arrays.toString(objArrG) + " Default value will be used.", e2);
            return null;
        }
    }

    public Long j(String str) {
        String strP = p(str);
        if (TextUtils.isEmpty(strP)) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(strP));
        } catch (NumberFormatException unused) {
            Log.w("NotificationParams", "Couldn't parse value of " + y(str) + "(" + strP + ") into a long");
            return null;
        }
    }

    public String k() {
        return p("gcm.n.android_channel_id");
    }

    @Nullable
    Integer l() {
        Integer numB = b("gcm.n.notification_count");
        if (numB == null) {
            return null;
        }
        if (numB.intValue() >= 0) {
            return numB;
        }
        Log.w("FirebaseMessaging", "notificationCount is invalid: " + numB + ". Skipping setting notificationCount.");
        return null;
    }

    @Nullable
    Integer m() {
        Integer numB = b("gcm.n.notification_priority");
        if (numB == null) {
            return null;
        }
        if (numB.intValue() >= -2 && numB.intValue() <= 2) {
            return numB;
        }
        Log.w("FirebaseMessaging", "notificationPriority is invalid " + numB + ". Skipping setting notificationPriority.");
        return null;
    }

    public String n(Resources resources, String str, String str2) {
        String strP = p(str2);
        return !TextUtils.isEmpty(strP) ? strP : i(resources, str, str2);
    }

    @Nullable
    public String o() {
        String strP = p("gcm.n.sound2");
        return TextUtils.isEmpty(strP) ? p("gcm.n.sound") : strP;
    }

    public String p(String str) {
        return this.a.getString(v(str));
    }

    @Nullable
    public long[] q() {
        JSONArray jSONArrayC = c("gcm.n.vibrate_timings");
        if (jSONArrayC == null) {
            return null;
        }
        try {
            if (jSONArrayC.length() <= 1) {
                throw new JSONException("vibrateTimings have invalid length");
            }
            int length = jSONArrayC.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = jSONArrayC.optLong(i);
            }
            return jArr;
        } catch (NumberFormatException | JSONException unused) {
            Log.w("NotificationParams", "User defined vibrateTimings is invalid: " + jSONArrayC + ". Skipping setting vibrateTimings.");
            return null;
        }
    }

    Integer r() {
        Integer numB = b("gcm.n.visibility");
        if (numB == null) {
            return null;
        }
        if (numB.intValue() >= -1 && numB.intValue() <= 1) {
            return numB;
        }
        Log.w("NotificationParams", "visibility is invalid: " + numB + ". Skipping setting visibility.");
        return null;
    }

    public Bundle w() {
        Bundle bundle = new Bundle(this.a);
        for (String str : this.a.keySet()) {
            if (!s(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    public Bundle x() {
        Bundle bundle = new Bundle(this.a);
        for (String str : this.a.keySet()) {
            if (t(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }
}
