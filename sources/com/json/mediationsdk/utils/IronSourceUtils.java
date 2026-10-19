package com.json.mediationsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.facebook.internal.security.CertificateUtil;
import com.json.IronSourceAdvId;
import com.json.e5;
import com.json.e9;
import com.json.i7;
import com.json.ja;
import com.json.k2;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.logger.d;
import com.json.mediationsdk.p;
import com.json.s4;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceUtils {
    public static final int NOT_SAVED_NUMBER_SHARED_PREFERENCE = -1;
    private static int a = 1;
    private static AtomicBoolean b = new AtomicBoolean(false);
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f6392d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static IronSourceUtils f6393e = new IronSourceUtils();

    static boolean a(Context context, String str, boolean z) {
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getBoolean(str, z);
    }

    @Deprecated
    private static JSONObject b(Context context) {
        try {
            return new JSONObject(getLastResponse(context));
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    private static String c(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_events_url" : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? "default_rv_events_url" : IronSourceConstants.PIXEL_EVENT_TYPE.equals(str) ? "default_pxl_events_url" : "";
    }

    public static void createAndStartWorker(Runnable runnable, String str) {
        Thread thread = new Thread(runnable, str);
        thread.setUncaughtExceptionHandler(new d());
        thread.start();
    }

    private static String d(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_events_formatter_type" : (IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) || IronSourceConstants.PIXEL_EVENT_TYPE.equals(str)) ? "default_rv_events_formatter_type" : "";
    }

    public static boolean doesClassExist(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String e(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_non_connectivity_events" : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? "default_rv_non_connectivity_events" : "";
    }

    private static String f(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_opt_in_events" : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? "default_rv_opt_in_events" : "";
    }

    private static String g(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_opt_out_events" : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? "default_rv_opt_out_events" : "";
    }

    public static String getBase64Auth(String str, String str2) {
        return "Basic " + Base64.encodeToString((str + CertificateUtil.DELIMITER + str2).getBytes(), 10);
    }

    @Deprecated
    public static String getCachedValueByKeyOfCachedInitResponse(Context context, String str) {
        return b(context).optString(str);
    }

    public static String getConnectionType(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return "none";
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities == null) {
                    return "none";
                }
                if (networkCapabilities.hasTransport(1)) {
                    return k2.b;
                }
                if (networkCapabilities.hasTransport(0)) {
                    return k2.f6181g;
                }
            } else {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                        return k2.b;
                    }
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
                        return k2.f6181g;
                    }
                }
            }
            return "none";
        } catch (Exception e2) {
            IronLog.NATIVE.error("failed to connection type - exception = " + e2);
            return "none";
        }
    }

    public static String getCurrentMethodName() {
        try {
            return new Throwable().getStackTrace()[1].getMethodName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static int getCurrentTimestamp() {
        return (int) (System.currentTimeMillis() / 1000);
    }

    public static synchronized String getDefaultEventsFormatterType(Context context, String str, String str2) {
        try {
            str2 = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(d(str), str2);
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsFormatterType(eventType: " + str + ", defaultFormatterType:" + str2 + ")", e2);
        }
        return str2;
    }

    public static synchronized String getDefaultEventsURL(Context context, String str, String str2) {
        try {
            str2 = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(c(str), str2);
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsURL(eventType: " + str + ", defaultEventsURL:" + str2 + ")", e2);
        }
        return str2;
    }

    public static synchronized int[] getDefaultNonConnectivityEvents(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            String string = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(e(str), null);
            if (!TextUtils.isEmpty(string)) {
                StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                ArrayList arrayList = new ArrayList();
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                }
                int size = arrayList.size();
                iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    iArr[i] = ((Integer) arrayList.get(i)).intValue();
                }
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultNonConnectivityEvents(eventType: " + str + ")", e2);
        }
        return iArr;
    }

    public static synchronized int[] getDefaultOptInEvents(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            String string = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(f(str), null);
            if (!TextUtils.isEmpty(string)) {
                StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                ArrayList arrayList = new ArrayList();
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                }
                int size = arrayList.size();
                iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    iArr[i] = ((Integer) arrayList.get(i)).intValue();
                }
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultOptInEvents(eventType: " + str + ")", e2);
        }
        return iArr;
    }

    public static synchronized int[] getDefaultOptOutEvents(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            String string = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(g(str), null);
            if (!TextUtils.isEmpty(string)) {
                StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                ArrayList arrayList = new ArrayList();
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                }
                int size = arrayList.size();
                iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    iArr[i] = ((Integer) arrayList.get(i)).intValue();
                }
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultOptOutEvents(eventType: " + str + ")", e2);
        }
        return iArr;
    }

    public static synchronized int[] getDefaultTriggerEvents(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            String string = context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(h(str), null);
            if (!TextUtils.isEmpty(string)) {
                StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                ArrayList arrayList = new ArrayList();
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                }
                int size = arrayList.size();
                iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    iArr[i] = ((Integer) arrayList.get(i)).intValue();
                }
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultTriggerEvents(eventType: " + str + ")", e2);
        }
        return iArr;
    }

    public static String getDeviceType(Context context) {
        return e9.h().c().r(context) ? "Tablet" : "Phone";
    }

    public static boolean getFirstSession(Context context) {
        if (f6392d == null) {
            f6392d = Boolean.valueOf(!i7.a(context));
        }
        return f6392d.booleanValue();
    }

    public static long getFirstSessionTimestamp(Context context) {
        if (context == null) {
            return -1L;
        }
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getLong(IronSourceConstants.FIRST_SESSION_TIMESTAMP, -1L);
    }

    public static IronSourceUtils getInstance() {
        return f6393e;
    }

    public static IronSourceAdvId getIronSourceAdvId(Context context) {
        String str;
        e5 e5VarC = e9.h().c();
        if (context == null) {
            return null;
        }
        String strB = p.o().b(context);
        if (TextUtils.isEmpty(strB)) {
            strB = e5VarC.J(context);
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 0);
            str = IronSourceConstants.TYPE_UUID;
        } else {
            str = IronSourceConstants.TYPE_GAID;
        }
        return new IronSourceAdvId(strB, str);
    }

    public static JSONObject getJsonForMetaData(String str, List<String> list, List<String> list2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (int i2 = 0; i < list.size() && i2 < list2.size(); i2++) {
                String str2 = list.get(i);
                String str3 = list2.get(i2);
                if (!TextUtils.isEmpty(str3) && !str2.equals(str3)) {
                    str2 = str2 + ";" + str3;
                }
                arrayList.add(str2);
                i++;
            }
            jSONObject.put(IronSourceConstants.EVENTS_EXT1, str + ";" + TextUtils.join(",", arrayList));
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static JSONObject getJsonForUserId(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (z) {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, "dynamic");
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static String getLastResponse(Context context) {
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString("last_response", "");
    }

    public static String getMD5(String str) {
        try {
            String string = new BigInteger(1, MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes())).toString(16);
            while (string.length() < 32) {
                string = "0" + string;
            }
            return string;
        } catch (Throwable th) {
            if (str == null) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getMD5(input:null)", th);
                return "";
            }
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getMD5(input:" + str + ")", th);
            return "";
        }
    }

    public static JSONObject getMediationAdditionalData(boolean z) {
        return getMediationAdditionalData(z, false, 1);
    }

    public static JSONObject getMediationAdditionalData(boolean z, boolean z2, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (z) {
                jSONObject.put("isDemandOnly", 1);
            }
            if (z2 && i != -1) {
                jSONObject.put(IronSourceConstants.EVENTS_PROGRAMMATIC, i);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static String getMediationUserId() {
        return s4.a().a("userId");
    }

    public static String getSDKVersion() {
        return "7.7.0";
    }

    public static String getSHA256(String str) {
        try {
            return String.format("%064x", new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(str.getBytes())));
        } catch (NoSuchAlgorithmException e2) {
            if (str == null) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:null)", e2);
                return "";
            }
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:" + str + ")", e2);
            return "";
        }
    }

    public static int getSerr() {
        return a;
    }

    public static synchronized String getSessionId() {
        if (b.compareAndSet(false, true)) {
            c = UUID.randomUUID().toString();
        }
        return c;
    }

    public static long getTimestamp() {
        return System.currentTimeMillis();
    }

    public static String getTransId(long j, String str) {
        return getSHA256(String.format("%s%s%s", Long.valueOf(j), p.o().p(), str));
    }

    public static String getUserIdForNetworks() {
        String strA = s4.a().a("userId");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return strA;
    }

    private static String h(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? "default_is_trigger_events" : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? "default_rv_trigger_events" : IronSourceConstants.PIXEL_EVENT_TYPE.equals(str) ? "default_pxl_trigger_events" : "";
    }

    static int i(Context context, String str, int i) {
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getInt(str, i);
    }

    public static boolean isEncryptedResponse() {
        return a == 1;
    }

    public static boolean isGooglePlayInstalled(Context context) {
        return ja.d(context);
    }

    @Deprecated
    public static boolean isInitResponseCached(Context context) {
        return (TextUtils.isEmpty(getCachedValueByKeyOfCachedInitResponse(context, "appKey")) || TextUtils.isEmpty(getCachedValueByKeyOfCachedInitResponse(context, c.Y1))) ? false : true;
    }

    public static boolean isNetworkConnected(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception e2) {
            IronLog.NATIVE.error("failed to check if network is connected - exception = " + e2);
            return false;
        }
    }

    static long j(Context context, String str, long j) {
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getLong(str, j);
    }

    static String k(Context context, String str, String str2) {
        return context.getSharedPreferences("Mediation_Shared_Preferences", 0).getString(str, str2);
    }

    static void l(Context context, String str, boolean z) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }

    static void m(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
    }

    public static JSONObject mergeJsons(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (jSONObject == null && jSONObject2 == null) {
            return new JSONObject();
        }
        if (jSONObject == null) {
            return jSONObject2;
        }
        if (jSONObject2 == null) {
            return jSONObject;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject.has(next)) {
                jSONObject.put(next, jSONObject2.get(next));
            }
        }
        return jSONObject;
    }

    static void n(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    static void o(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static List<Pair<String, String>> parseJsonToPairList(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject != JSONObject.NULL) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject.get(next).toString().isEmpty()) {
                        arrayList.add(new Pair(next, jSONObject.get(next).toString()));
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static Map<String, String> parseJsonToStringMap(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            if (jSONObject != JSONObject.NULL) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject.get(next).toString().isEmpty()) {
                        map.put(next, jSONObject.get(next).toString());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return map;
    }

    public static synchronized void saveDefaultEventsFormatterType(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            editorEdit.putString(d(str), str2);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsFormatterType(eventType: " + str + ", formatterType:" + str2 + ")", e2);
        }
    }

    public static synchronized void saveDefaultEventsURL(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            editorEdit.putString(c(str), str2);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsURL(eventType: " + str + ", eventsUrl:" + str2 + ")", e2);
        }
    }

    public static synchronized void saveDefaultNonConnectivityEvents(Context context, String str, int[] iArr) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            String string = null;
            if (iArr != null) {
                StringBuilder sb = new StringBuilder();
                for (int i : iArr) {
                    sb.append(i);
                    sb.append(",");
                }
                string = sb.toString();
            }
            editorEdit.putString(e(str), string);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultNonConnectivityEvents(eventType: " + str + ", nonConnectivityEvents:" + iArr + ")", e2);
        }
    }

    public static synchronized void saveDefaultOptInEvents(Context context, String str, int[] iArr) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            String string = null;
            if (iArr != null) {
                StringBuilder sb = new StringBuilder();
                for (int i : iArr) {
                    sb.append(i);
                    sb.append(",");
                }
                string = sb.toString();
            }
            editorEdit.putString(f(str), string);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultOptInEvents(eventType: " + str + ", optInEvents:" + iArr + ")", e2);
        }
    }

    public static synchronized void saveDefaultOptOutEvents(Context context, String str, int[] iArr) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            String string = null;
            if (iArr != null) {
                StringBuilder sb = new StringBuilder();
                for (int i : iArr) {
                    sb.append(i);
                    sb.append(",");
                }
                string = sb.toString();
            }
            editorEdit.putString(g(str), string);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultOptOutEvents(eventType: " + str + ", optOutEvents:" + iArr + ")", e2);
        }
    }

    public static synchronized void saveDefaultTriggerEvents(Context context, String str, int[] iArr) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
            String string = null;
            if (iArr != null) {
                StringBuilder sb = new StringBuilder();
                for (int i : iArr) {
                    sb.append(i);
                    sb.append(",");
                }
                string = sb.toString();
            }
            editorEdit.putString(h(str), string);
            editorEdit.commit();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultTriggerEvents(eventType: " + str + ", triggerEvents:" + iArr + ")", e2);
        }
    }

    public static void saveFirstSessionTimestamp(Context context, long j) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putLong(IronSourceConstants.FIRST_SESSION_TIMESTAMP, j);
        editorEdit.apply();
    }

    public static synchronized void saveLastResponse(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Mediation_Shared_Preferences", 0).edit();
        editorEdit.putString("last_response", str);
        editorEdit.apply();
    }

    public static synchronized void sendAutomationLog(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "automation_log:" + Long.toString(System.currentTimeMillis()) + " text: " + str, 0);
    }
}
