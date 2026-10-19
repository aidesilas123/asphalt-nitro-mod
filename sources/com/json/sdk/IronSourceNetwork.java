package com.json.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.json.a8;
import com.json.b4;
import com.json.ca;
import com.json.d4;
import com.json.da;
import com.json.o6;
import com.json.p6;
import com.json.s7;
import com.json.sdk.controller.e;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import com.json.u7;
import com.json.uc;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceNetwork {
    private static a8 a;
    private static ca b;
    private static JSONObject c;

    private static synchronized void a() throws Exception {
        if (a == null) {
            throw new NullPointerException("Call initSDK first");
        }
    }

    public static synchronized void applyConsentInfo(JSONObject jSONObject) {
        a8 a8Var = a;
        if (a8Var == null) {
            return;
        }
        if (jSONObject == null) {
            return;
        }
        a8Var.a(jSONObject);
    }

    private static void b(Context context, JSONObject jSONObject, String str, String str2, Map<String, String> map) throws Exception {
        if (jSONObject != null) {
            d4 d4VarA = p6.a(jSONObject);
            if (d4VarA.a()) {
                o6.a(d4VarA, p6.a(context, str, str2, map));
            }
        }
    }

    public static synchronized void destroyAd(s7 s7Var) throws Exception {
        a();
        a.b(s7Var);
    }

    public static synchronized e getControllerManager() {
        return a.a();
    }

    public static ca getInitListener() {
        return b;
    }

    public static synchronized void getOfferWallCredits(da daVar) throws Exception {
        a();
        a.a(daVar);
    }

    public static synchronized JSONObject getRawToken(Context context) {
        return uc.d().c(context);
    }

    public static synchronized String getToken(Context context) {
        return uc.d().d(context);
    }

    public static String getVersion() {
        return SDKUtils.getSDKVersion();
    }

    public static synchronized void initOfferWall(Map<String, String> map, da daVar) throws Exception {
        a();
        a.a(map, daVar);
    }

    public static synchronized void initSDK(Context context, String str, String str2, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            Logger.e("IronSourceNetwork", "applicationKey is NULL");
            return;
        }
        if (a == null) {
            SDKUtils.setInitSDKParams(map);
            try {
                b(context, SDKUtils.getNetworkConfiguration().optJSONObject(b4.M), str2, str, map);
            } catch (Exception e2) {
                Logger.e("IronSourceNetwork", "Failed to init event tracker: " + e2.getMessage());
            }
            a = u7.a(context, str, str2);
            applyConsentInfo(c);
        }
    }

    public static synchronized boolean isAdAvailableForInstance(s7 s7Var) {
        a8 a8Var = a;
        if (a8Var == null) {
            return false;
        }
        return a8Var.a(s7Var);
    }

    public static synchronized void loadAd(s7 s7Var, Map<String, String> map) throws Exception {
        a();
        a.a(s7Var, map);
    }

    public static synchronized void loadAdView(Activity activity, s7 s7Var, Map<String, String> map) throws Exception {
        a();
        a.b(activity, s7Var, map);
    }

    public static void onPause(Activity activity) {
        a8 a8Var = a;
        if (a8Var == null) {
            return;
        }
        a8Var.onPause(activity);
    }

    public static void onResume(Activity activity) {
        a8 a8Var = a;
        if (a8Var == null) {
            return;
        }
        a8Var.onResume(activity);
    }

    public static synchronized void release(Activity activity) {
        a8 a8Var = a;
        if (a8Var == null) {
            return;
        }
        a8Var.a(activity);
    }

    public static synchronized void setInitListener(ca caVar) {
        b = caVar;
    }

    public static synchronized void showAd(Activity activity, s7 s7Var, Map<String, String> map) throws Exception {
        a();
        a.a(activity, s7Var, map);
    }

    public static synchronized void showOfferWall(Activity activity, Map<String, String> map) throws Exception {
        a();
        a.a(activity, map);
    }

    public static synchronized void updateConsentInfo(JSONObject jSONObject) {
        c = jSONObject;
        applyConsentInfo(jSONObject);
    }

    public static synchronized void updateMetadata(JSONObject jSONObject) {
        uc.d().b(jSONObject);
    }
}
