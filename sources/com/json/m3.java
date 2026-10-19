package com.json;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.o2;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class m3 {
    private static final String a = "m3";

    public static JSONObject a(Context context) {
        SDKUtils.loadGoogleAdvertiserInfo(context);
        String advertiserId = SDKUtils.getAdvertiserId();
        String limitAdTracking = SDKUtils.getLimitAdTracking();
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(a, "add AID");
                jSONObject.put("deviceIds" + o2.i.f6490d + "AID" + o2.i.f6491e, SDKUtils.encodeString(advertiserId));
            }
            if (!TextUtils.isEmpty(limitAdTracking)) {
                Logger.i(a, "add LAT");
                jSONObject.put("isLimitAdTrackingEnabled", Boolean.parseBoolean(limitAdTracking));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject b(Context context) {
        JSONObject jSONObject = new JSONObject();
        c(jSONObject);
        j(context, jSONObject);
        i(jSONObject);
        f(context, jSONObject);
        m(context, jSONObject);
        k(context, jSONObject);
        g(jSONObject);
        l(context, jSONObject);
        h(context, jSONObject);
        b(context, jSONObject);
        n(context, jSONObject);
        return jSONObject;
    }

    private static void b(Context context, JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            if (e("airplaneMode")) {
                jSONObject.put(SDKUtils.encodeString("airplaneMode"), e5VarC.c(context));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static JSONObject c(Context context) {
        e5 e5VarC = e9.h().c();
        n3 n3VarB = n3.b(context);
        JSONObject jSONObject = new JSONObject();
        try {
            String strD = n3VarB.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOEM"), SDKUtils.encodeString(strD));
            }
            String strC = n3VarB.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString("deviceModel"), SDKUtils.encodeString(strC));
            }
            String strE = n3VarB.e();
            if (strE != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOs"), SDKUtils.encodeString(strE));
            }
            String strF = n3VarB.f();
            if (strF != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOSVersion"), strF.replaceAll("[^0-9/.]", ""));
            }
            String strF2 = n3VarB.f();
            if (strF2 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOSVersionFull"), SDKUtils.encodeString(strF2));
            }
            jSONObject.put(SDKUtils.encodeString("deviceApiLevel"), String.valueOf(n3VarB.a()));
            jSONObject.put(SDKUtils.encodeString("SDKVersion"), SDKUtils.encodeString(SDKUtils.getSDKVersion()));
            if (n3VarB.b() != null && n3VarB.b().length() > 0) {
                jSONObject.put(SDKUtils.encodeString("mobileCarrier"), SDKUtils.encodeString(n3VarB.b()));
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(SDKUtils.encodeString("deviceLanguage"), SDKUtils.encodeString(language.toUpperCase()));
            }
            if (e("totalDeviceRAM")) {
                jSONObject.put(SDKUtils.encodeString("totalDeviceRAM"), SDKUtils.encodeString(String.valueOf(e5VarC.h(context))));
            }
            String strG = k0.g(context);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
            }
            String strValueOf = String.valueOf(e5VarC.h());
            if (!TextUtils.isEmpty(strValueOf)) {
                jSONObject.put(SDKUtils.encodeString("deviceScreenScale"), SDKUtils.encodeString(strValueOf));
            }
            String strValueOf2 = String.valueOf(e5VarC.f());
            if (!TextUtils.isEmpty(strValueOf2)) {
                jSONObject.put(SDKUtils.encodeString("unLocked"), SDKUtils.encodeString(strValueOf2));
            }
            jSONObject.put(SDKUtils.encodeString("gpi"), ja.d(context));
            jSONObject.put("mcc", k2.b(context));
            jSONObject.put("mnc", k2.c(context));
            jSONObject.put(SDKUtils.encodeString("phoneType"), k2.e(context));
            jSONObject.put(SDKUtils.encodeString("simOperator"), SDKUtils.encodeString(k2.f(context)));
            jSONObject.put(SDKUtils.encodeString("lastUpdateTime"), k0.f(context));
            jSONObject.put(SDKUtils.encodeString("firstInstallTime"), k0.d(context));
            jSONObject.put(SDKUtils.encodeString("appVersion"), SDKUtils.encodeString(k0.b(context)));
            jSONObject.put(SDKUtils.encodeString("stid"), ja.c(context));
            String strE2 = k0.e(context);
            if (!TextUtils.isEmpty(strE2)) {
                jSONObject.put(SDKUtils.encodeString("installerPackageName"), SDKUtils.encodeString(strE2));
            }
            jSONObject.put("localTime", SDKUtils.encodeString(String.valueOf(e5VarC.i())));
            jSONObject.put("timezoneOffset", SDKUtils.encodeString(String.valueOf(e5VarC.p())));
            String strN = e5VarC.n(context);
            if (!TextUtils.isEmpty(strN)) {
                jSONObject.put("icc", strN);
            }
            String strB = e5VarC.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("tz", SDKUtils.encodeString(strB));
            }
            jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private static void c(JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            d(jSONObject, "displaySizeWidth", String.valueOf(e5VarC.d()));
            d(jSONObject, "displaySizeHeight", String.valueOf(e5VarC.j()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void d(JSONObject jSONObject, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            jSONObject.put(str, SDKUtils.encodeString(str2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static boolean e(String str) {
        return SDKUtils.getControllerConfigAsJSONObject().optBoolean(str);
    }

    private static void f(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString("batteryLevel"), e9.h().c().w(context));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void g(JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            if (e("sdCardAvailable")) {
                jSONObject.put(SDKUtils.encodeString("sdCardAvailable"), e5VarC.c());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void h(Context context, JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            if (e("chargingType")) {
                jSONObject.put(SDKUtils.encodeString("chargingType"), e5VarC.l(context));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void i(JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString("diskFreeSize"), SDKUtils.encodeString(String.valueOf(e9.h().c().n())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void j(Context context, JSONObject jSONObject) {
        try {
            String strB = l2.b(context);
            if (!TextUtils.isEmpty(strB) && !strB.equals("none")) {
                jSONObject.put(SDKUtils.encodeString("connectionType"), SDKUtils.encodeString(strB));
            }
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put(SDKUtils.encodeString("hasVPN"), l2.d(context));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void k(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString("deviceVolume"), n3.b(context).a(context));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void l(Context context, JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            if (e("isCharging")) {
                jSONObject.put(SDKUtils.encodeString("isCharging"), e5VarC.G(context));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void m(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString("lpm"), e9.h().c().q(context));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void n(Context context, JSONObject jSONObject) {
        e5 e5VarC = e9.h().c();
        try {
            if (e("stayOnWhenPluggedIn")) {
                jSONObject.put(SDKUtils.encodeString("stayOnWhenPluggedIn"), e5VarC.d(context));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
