package com.applovin.impl.sdk.utils;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.icu.util.VersionInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.applovin.exoplayer2.ak;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.ab;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    private static final String[] aWn = {" second ago", " minute ago", " hour ago", " day ago", " week ago", " month ago"};
    private static final String[] aWo = {" seconds ago", " minutes ago", " hours ago", " days ago", " weeks ago", " months ago"};
    private static final String[] aWp = {"s", InneractiveMediationDefs.GENDER_MALE, "h", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "w", "mth"};
    private static final int[] aWq = {60, 60, 24, 7, 4, 12};
    private static final DecimalFormat aWr = new DecimalFormat();
    private static Boolean aWs;
    private static Boolean aWt;

    public interface a {
        void onCachedResourcesChecked(boolean z);
    }

    public static float A(float f2) {
        return f2 * 1000.0f;
    }

    public static View A(View view) {
        View rootView;
        if (view == null || (rootView = view.getRootView()) == null) {
            return null;
        }
        View viewFindViewById = rootView.findViewById(R.id.content);
        return viewFindViewById != null ? viewFindViewById : rootView;
    }

    private static long B(float f2) {
        return Math.round(f2);
    }

    public static long C(float f2) {
        return B(A(f2));
    }

    public static boolean E(long j, long j2) {
        return (j & j2) != 0;
    }

    public static String LA() {
        try {
            for (Field field : Build.VERSION_CODES.class.getFields()) {
                if (field.getInt(null) == Build.VERSION.SDK_INT) {
                    return field.getName();
                }
            }
            return "";
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Unable to get Android SDK codename", th);
            return "";
        }
    }

    public static String LB() {
        try {
            return Build.VERSION.RELEASE + " (" + LA() + " - API " + Build.VERSION.SDK_INT + ")";
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Unable to get Android OS info", th);
            return "";
        }
    }

    public static int LC() {
        return 2015001;
    }

    public static boolean LD() {
        try {
            Class.forName("com.applovin.sdk.AppLovinSdk");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        }
    }

    public static void LE() {
    }

    public static void LF() {
    }

    public static void LG() {
        com.applovin.impl.sdk.x.D("AppLovinSdk", "Java version 8 supported.");
    }

    public static boolean Lw() {
        Context applicationContext = com.applovin.impl.sdk.n.getApplicationContext();
        if (applicationContext != null) {
            return e.X(applicationContext).dy("applovin.sdk.verbose_logging");
        }
        return false;
    }

    public static boolean Lx() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean Ly() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Exception thrown while getting memory state.", th);
        }
        int i = runningAppProcessInfo.importance;
        return i == 100 || i == 200;
    }

    public static boolean Lz() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                String displayName = networkInterfaces.nextElement().getDisplayName();
                if (displayName.contains("tun") || displayName.contains("ppp") || displayName.contains("ipsec")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Unable to check Network Interfaces", th);
            return false;
        }
    }

    public static int M(String str, String str2) {
        String digitsOnlyVersionString = StringUtils.toDigitsOnlyVersionString(str);
        String digitsOnlyVersionString2 = StringUtils.toDigitsOnlyVersionString(str2);
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                int iCompareTo = VersionInfo.getInstance(digitsOnlyVersionString).compareTo(VersionInfo.getInstance(digitsOnlyVersionString2));
                return iCompareTo == 0 ? iCompareTo : iCompareTo > 0 ? 1 : -1;
            }
            String[] strArrSplit = digitsOnlyVersionString.split("\\.");
            String[] strArrSplit2 = digitsOnlyVersionString2.split("\\.");
            int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
            int i = 0;
            while (i < iMax) {
                String str3 = StringUtils.isValidString(strArrSplit[i]) ? strArrSplit[i] : "0";
                String str4 = StringUtils.isValidString(strArrSplit2[i]) ? strArrSplit2[i] : "0";
                int i2 = i < strArrSplit.length ? Integer.parseInt(str3) : 0;
                int i3 = i < strArrSplit2.length ? Integer.parseInt(str4) : 0;
                if (i2 < i3) {
                    return -1;
                }
                if (i2 > i3) {
                    return 1;
                }
                i++;
            }
            return 0;
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Failed to process version string.", th);
            return 0;
        }
    }

    public static boolean M(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (dE(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static long N(com.applovin.impl.sdk.n nVar) {
        long jLongValue = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQg)).longValue();
        long jLongValue2 = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQh)).longValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        return (jLongValue <= 0 || jLongValue2 <= 0) ? jCurrentTimeMillis : jCurrentTimeMillis + (jLongValue - jLongValue2);
    }

    public static void N(@Nullable String str, String str2) {
        if (str == null || str.length() <= gX(8)) {
            return;
        }
        com.applovin.impl.sdk.x.F(str2, "Provided custom data parameter longer than supported (" + str.length() + " bytes, " + gX(8) + " maximum)");
    }

    public static boolean N(List<String> list) {
        Context applicationContext = com.applovin.impl.sdk.n.getApplicationContext();
        if (applicationContext != null) {
            return list.contains(applicationContext.getPackageName());
        }
        com.applovin.impl.sdk.x.H("Utils", "Failed to check whether or not app is member of package names");
        return false;
    }

    public static boolean O(com.applovin.impl.sdk.n nVar) {
        if (!h.KW()) {
            return true;
        }
        try {
            JSONObject.wrap(JSONObject.NULL);
            return true;
        } catch (Throwable th) {
            nVar.BN();
            if (!com.applovin.impl.sdk.x.Fn()) {
                return false;
            }
            nVar.BN().b("Utils", "Failed to wrap JSONObject with exception", th);
            return false;
        }
    }

    public static boolean P(com.applovin.impl.sdk.n nVar) {
        return ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNi)).booleanValue() ? nVar.getSettings().isMuted() : ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNg)).booleanValue();
    }

    public static boolean Q(com.applovin.impl.sdk.n nVar) {
        String str = nVar.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.USER_AGENT_COLLECTION_ENABLED);
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    public static boolean Q(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == 31 && bArr[1] == -117;
    }

    public static byte[] R(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] S(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0 || !Q(bArr)) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = gZIPInputStream.read(bArr2);
            if (i <= 0) {
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }

    public static long T(byte[] bArr) {
        return n(bArr, 0);
    }

    public static int U(JSONObject jSONObject) {
        int i = JsonUtils.getInt(jSONObject, "video_completion_percent", -1);
        if (i < 0 || i > 100) {
            return 95;
        }
        return i;
    }

    public static double a(String str, double d2) {
        try {
            return Double.parseDouble(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Failed to parse double from String: " + str, th);
            return d2;
        }
    }

    public static Activity a(View view, com.applovin.impl.sdk.n nVar) {
        if (view == null) {
            return null;
        }
        int i = 0;
        while (i < 1000) {
            i++;
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().c("Utils", "Encountered error while retrieving activity from view", th);
                }
            }
        }
        return null;
    }

    @Nullable
    public static WebView a(Context context, String str, boolean z) {
        try {
            WebView webView = new WebView(context);
            if (z) {
                webView.setWebViewClient(new ab());
            }
            return webView;
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("Utils", "Failed to initialize WebView for " + str + ".", th);
            return null;
        }
    }

    public static AppLovinAd a(AppLovinAd appLovinAd, com.applovin.impl.sdk.n nVar) {
        if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.f)) {
            return appLovinAd;
        }
        com.applovin.impl.sdk.ad.f fVar = (com.applovin.impl.sdk.ad.f) appLovinAd;
        AppLovinAd appLovinAdDequeueAd = nVar.BD().dequeueAd(fVar.getAdZone());
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().f("Utils", "Dequeued ad for dummy ad: " + appLovinAdDequeueAd);
        }
        if (appLovinAdDequeueAd == null) {
            return fVar.HB();
        }
        fVar.e(appLovinAdDequeueAd);
        ((AppLovinAdImpl) appLovinAdDequeueAd).setDummyAd(fVar);
        return appLovinAdDequeueAd;
    }

    public static Object a(Object obj, com.applovin.impl.sdk.n nVar) {
        int iIntValue;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            HashMap map2 = new HashMap(map.size());
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                map2.put(key instanceof String ? (String) key : String.valueOf(key), a(entry.getValue(), nVar));
            }
            return map2;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next(), nVar));
            }
            return arrayList;
        }
        if (obj instanceof Date) {
            return String.valueOf(((Date) obj).getTime());
        }
        String strValueOf = String.valueOf(obj);
        if (!(obj instanceof String)) {
            return (!(obj instanceof Uri) || (iIntValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLG)).intValue()) <= 0 || strValueOf.length() <= iIntValue) ? strValueOf : strValueOf.substring(0, iIntValue);
        }
        int iIntValue2 = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLF)).intValue();
        return (iIntValue2 <= 0 || strValueOf.length() <= iIntValue2) ? strValueOf : strValueOf.substring(0, iIntValue2);
    }

    public static String a(double d2, int i) {
        DecimalFormat decimalFormat = aWr;
        decimalFormat.setMaximumFractionDigits(i);
        return decimalFormat.format(d2);
    }

    public static String a(@RawRes int i, Context context, @Nullable com.applovin.impl.sdk.n nVar) {
        if (i == 0) {
            return "";
        }
        try {
            InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
            try {
                byte[] bArr = new byte[inputStreamOpenRawResource.available()];
                inputStreamOpenRawResource.read(bArr);
                return new String(bArr);
            } catch (IOException e2) {
                if (nVar != null) {
                    nVar.BN();
                    if (com.applovin.impl.sdk.x.Fn()) {
                        nVar.BN().c("Utils", "Opening raw resource file threw exception", e2);
                    }
                }
                return "";
            } finally {
                a((Closeable) inputStreamOpenRawResource, nVar);
            }
        } catch (Throwable th) {
            if (nVar != null) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().c("Utils", "Failed to retrieve resource " + i, th);
                }
            }
            return "";
        }
    }

    public static String a(Uri uri, String str, com.applovin.impl.sdk.n nVar) {
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aLX)).booleanValue()) {
            List<String> listB = nVar.b(com.applovin.impl.sdk.c.b.aLO);
            String lastPathSegment = uri.getLastPathSegment();
            if (listB.contains(lastPathSegment)) {
                return lastPathSegment;
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = uri.getQueryParameterNames().iterator();
        while (it.hasNext()) {
            String queryParameter = uri.getQueryParameter(it.next());
            if (StringUtils.isValidString(queryParameter)) {
                arrayList.add(queryParameter);
            }
        }
        arrayList.addAll(uri.getPathSegments());
        String strEncodeUriString = StringUtils.encodeUriString(TextUtils.join("_", arrayList));
        Integer num = (Integer) nVar.a(com.applovin.impl.sdk.c.b.aLP);
        int length = StringUtils.emptyIfNull(strEncodeUriString).length() + StringUtils.emptyIfNull(str).length();
        if (length > num.intValue() && StringUtils.isValidString(strEncodeUriString)) {
            strEncodeUriString = strEncodeUriString.substring(length - num.intValue());
        }
        if (!StringUtils.isValidString(strEncodeUriString) || !StringUtils.isValidString(str)) {
            return strEncodeUriString;
        }
        return str + strEncodeUriString;
    }

    public static String a(ak akVar, com.applovin.impl.sdk.n nVar) {
        if (akVar == null) {
            return "Unknown error";
        }
        if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQP)).booleanValue()) {
            return akVar.toString();
        }
        Throwable cause = akVar.getCause();
        String message = cause != null ? cause.getMessage() : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        return "Code: " + akVar.errorCode + ", Name: " + akVar.cA() + ", Message: " + akVar.getMessage() + ", Cause Class: " + (cause != null ? cause.getClass().getName() : "") + ", Cause Message: " + message;
    }

    public static List<com.applovin.impl.sdk.d.a> a(String str, JSONObject jSONObject, String str2, String str3, com.applovin.impl.sdk.n nVar) {
        return a(str, jSONObject, str2, null, str3, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> a(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, com.applovin.impl.sdk.n nVar) {
        return a(str, jSONObject, str2, map, str3, null, false, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> a(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, Map<String, String> map2, boolean z, com.applovin.impl.sdk.n nVar) {
        if (map == null) {
            map = new HashMap<>(1);
        }
        Map<String, String> map3 = map;
        map3.put("{CLCODE}", str2);
        return a(str, jSONObject, map3, str3, map2, z, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> a(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, boolean z, com.applovin.impl.sdk.n nVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, str, new JSONObject());
        ArrayList arrayList = new ArrayList(jSONObject2.length() + 1);
        if (StringUtils.isValidString(str2)) {
            arrayList.add(new com.applovin.impl.sdk.d.a(str2, null, map2, z));
        }
        if (jSONObject2.length() > 0) {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    if (!TextUtils.isEmpty(next)) {
                        String strOptString = jSONObject2.optString(next);
                        String strReplace = StringUtils.replace(next, map);
                        if (!TextUtils.isEmpty(strOptString)) {
                            strOptString = StringUtils.replace(strOptString, map);
                        }
                        arrayList.add(new com.applovin.impl.sdk.d.a(strReplace, strOptString, map2, z));
                    }
                } catch (Throwable th) {
                    nVar.BN();
                    if (com.applovin.impl.sdk.x.Fn()) {
                        nVar.BN().c("Utils", "Failed to create and add postback url.", th);
                    }
                }
            }
        }
        return arrayList;
    }

    public static List<Uri> a(boolean z, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar, Context context) {
        if (eVar instanceof com.applovin.impl.b.a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Uri uri : new ArrayList(eVar.Gn())) {
            if (!nVar.Cc().c(uri.getLastPathSegment(), context)) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().i("Utils", "Cached HTML asset missing: " + uri);
                }
                arrayList.add(uri);
            }
        }
        if (z) {
            Uri uriFI = eVar.FI();
            if (!nVar.Cc().c(uriFI.getLastPathSegment(), context)) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().i("Utils", "Cached video missing: " + uriFI);
                }
                arrayList.add(uriFI);
            }
        }
        return arrayList;
    }

    @Nullable
    public static Map<String, String> a(AppLovinSdkSettings appLovinSdkSettings) {
        try {
            Field fieldB = b(appLovinSdkSettings.getClass(), "metaData");
            if (fieldB != null) {
                fieldB.setAccessible(true);
            }
            return (Map) fieldB.get(appLovinSdkSettings);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> a(Map<String, String> map, com.applovin.impl.sdk.n nVar) {
        Map<String, String> map2 = CollectionUtils.map(map);
        for (String str : map2.keySet()) {
            String str2 = map2.get(str);
            if (str2 != null) {
                map2.put(str, StringUtils.encodeUriString(str2));
            }
        }
        return map2;
    }

    public static void a(Uri uri, Activity activity, com.applovin.impl.sdk.n nVar) {
        if (activity == null) {
            activity = nVar.CF();
        }
        Intent intent = new Intent(activity, (Class<?>) AppLovinWebViewActivity.class);
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, nVar.getSdkKey());
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_LOAD_URL, uri.toString());
        activity.startActivity(intent);
    }

    public static void a(MaxError maxError, String str, Context context) {
        StringBuilder sb = new StringBuilder();
        if (maxError.getCode() == -5001) {
            for (MaxNetworkResponseInfo maxNetworkResponseInfo : maxError.getWaterfall().getNetworkResponses()) {
                MaxError error = maxNetworkResponseInfo.getError();
                String name = maxNetworkResponseInfo.getMediatedNetwork().getName();
                sb.append("\nFailed to load " + str + " from " + name + ":\n");
                sb.append("\nMAX Error " + error.getCode() + ": " + error.getMessage() + "\n");
                sb.append("\n" + name + " Error " + error.getMediatedNetworkErrorCode() + ": " + error.getMediatedNetworkErrorMessage() + "\n\n");
            }
        } else {
            sb.append("Failed to load " + str + " with error " + maxError.getCode() + ": " + maxError.getMessage());
        }
        a("", sb.toString(), context);
    }

    public static void a(Closeable closeable, com.applovin.impl.sdk.n nVar) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th) {
            if (nVar != null) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().c("Utils", "Unable to close stream: " + closeable, th);
                }
            }
        }
    }

    public static void a(String str, MaxAd maxAd, Context context) {
        Toast.makeText(context, maxAd.getFormat().getLabel() + ": " + str, 1).show();
    }

    public static void a(String str, @Nullable MaxAdFormat maxAdFormat, JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        if (jSONObject.has("no_fill_reason")) {
            Object object = JsonUtils.getObject(jSONObject, "no_fill_reason", new Object());
            StringBuilder sb = new StringBuilder();
            sb.append("\n**************************************************\nNO FILL received:\n..ID: \"");
            sb.append(str);
            sb.append("\"\n..FORMAT: \"");
            sb.append(maxAdFormat != null ? maxAdFormat.getLabel() : "None");
            sb.append("\"\n..SDK KEY: \"");
            sb.append(nVar.getSdkKey());
            sb.append("\"\n..PACKAGE NAME: \"");
            sb.append(com.applovin.impl.sdk.n.getApplicationContext().getPackageName());
            sb.append("\"\n..Reason: ");
            sb.append(object);
            sb.append("\n**************************************************\n");
            String string = sb.toString();
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().i("AppLovinSdk", string);
            }
        }
    }

    public static void a(String str, String str2, Context context) {
        new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(R.string.ok, (DialogInterface.OnClickListener) null).create().show();
    }

    public static void a(String str, String str2, Map<String, Object> map) {
        if (map.containsKey(str)) {
            map.put(str2, map.get(str));
            map.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WeakReference weakReference, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar, Context context, boolean z) {
        final a aVar = (a) weakReference.get();
        if (aVar == null) {
            return;
        }
        if (eVar instanceof com.applovin.impl.b.a) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.v1
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.onCachedResourcesChecked(true);
                }
            });
            return;
        }
        for (Uri uri : new ArrayList(eVar.Gn())) {
            if (!nVar.Cc().b(uri.getLastPathSegment(), context)) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().i("Utils", "Cached HTML asset unavailable: " + uri);
                }
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        aVar.onCachedResourcesChecked(false);
                    }
                });
                return;
            }
        }
        if (z) {
            Uri uriFI = eVar.FI();
            if (!nVar.Cc().b(uriFI.getLastPathSegment(), context)) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().i("Utils", "Cached video unavailable: " + uriFI);
                }
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.x1
                    @Override // java.lang.Runnable
                    public final void run() {
                        aVar.onCachedResourcesChecked(false);
                    }
                });
                return;
            }
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.u1
            @Override // java.lang.Runnable
            public final void run() {
                aVar.onCachedResourcesChecked(true);
            }
        });
    }

    public static void a(HttpURLConnection httpURLConnection, com.applovin.impl.sdk.n nVar) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            if (nVar != null) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().c("Utils", "Unable to disconnect connection: " + httpURLConnection, th);
                }
            }
        }
    }

    public static void a(final boolean z, final com.applovin.impl.sdk.ad.e eVar, final com.applovin.impl.sdk.n nVar, final Context context, a aVar) {
        final WeakReference weakReference = new WeakReference(aVar);
        nVar.BO().b(new com.applovin.impl.sdk.e.ab(nVar, "checkIfAdContainsUnavailableCachedResources", new Runnable() { // from class: com.applovin.impl.sdk.utils.t1
            @Override // java.lang.Runnable
            public final void run() {
                u.a(weakReference, eVar, nVar, context, z);
            }
        }));
    }

    public static boolean a(View view, Activity activity) {
        if (activity != null && view != null) {
            Window window = activity.getWindow();
            if (window != null) {
                return c(view, window.getDecorView());
            }
            View viewFindViewById = activity.findViewById(R.id.content);
            if (viewFindViewById != null) {
                return c(view, viewFindViewById.getRootView());
            }
        }
        return false;
    }

    public static boolean a(com.applovin.impl.sdk.c.b<Boolean> bVar, com.applovin.impl.sdk.n nVar) {
        String str = nVar.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.ENABLE_BLACK_SCREEN_FIXES);
        return StringUtils.isValidString(str) ? Boolean.parseBoolean(str) : ((Boolean) nVar.a(bVar)).booleanValue();
    }

    public static boolean a(@Nullable MaxAdFormat maxAdFormat, @Nullable MaxAdFormat maxAdFormat2) {
        return (maxAdFormat == null || maxAdFormat2 == null || (maxAdFormat != maxAdFormat2 && (!maxAdFormat.isBannerOrLeaderAd() || !maxAdFormat2.isBannerOrLeaderAd()))) ? false : true;
    }

    public static boolean a(Object obj, List<String> list, com.applovin.impl.sdk.n nVar) {
        if (list == null) {
            return false;
        }
        Iterator<Class> it = b(list, nVar).iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(obj)) {
                if (!(obj instanceof Map)) {
                    if (!(obj instanceof List)) {
                        return true;
                    }
                    Iterator it2 = ((List) obj).iterator();
                    while (it2.hasNext()) {
                        if (!a(it2.next(), list, nVar)) {
                            return false;
                        }
                    }
                    return true;
                }
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (!(entry.getKey() instanceof String)) {
                        nVar.BN();
                        if (com.applovin.impl.sdk.x.Fn()) {
                            nVar.BN().f("Utils", "Invalid key type used. Map keys should be of type String.");
                        }
                        return false;
                    }
                    if (!a(entry.getValue(), list, nVar)) {
                        return false;
                    }
                }
                return true;
            }
        }
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().f("Utils", "Object '" + obj + "' does not match any of the required types '" + list + "'.");
        }
        return false;
    }

    public static boolean ae(Context context) {
        if (context == null) {
            context = com.applovin.impl.sdk.n.getApplicationContext();
        }
        if (context != null) {
            return e.X(context).e("applovin.sdk.verbose_logging", false);
        }
        return false;
    }

    public static String af(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities.isEmpty()) {
            return null;
        }
        return listQueryIntentActivities.get(0).activityInfo.name;
    }

    public static int ag(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getRotation();
    }

    @Nullable
    public static String ah(Object obj) {
        if (obj instanceof com.applovin.impl.mediation.b.a) {
            return ((com.applovin.impl.mediation.b.a) obj).xA();
        }
        if (com.applovin.impl.mediation.e.c.Z(obj)) {
            return ((com.applovin.impl.sdk.ad.e) obj).GB();
        }
        return null;
    }

    public static boolean ah(Context context) {
        return e.X(context).dy("applovin.sdk.is_test_environment");
    }

    public static int ai(Context context) {
        h.KV();
        return Settings.System.getInt(context.getContentResolver(), "always_finish_activities", 0);
    }

    public static boolean aj(Context context) {
        String packageName = context.getPackageName();
        return "com.revolverolver.fliptrickster".equals(packageName) || "com.mindstormstudios.idlemakeover".equals(packageName);
    }

    public static boolean ak(Context context) {
        if (aWs == null) {
            aWs = Boolean.valueOf("com.applovin.apps.dspdemo".equals(context.getPackageName()));
        }
        return aWs.booleanValue();
    }

    public static boolean al(Context context) {
        if (aWt == null) {
            aWt = Boolean.valueOf("com.applovin.apps.playables".equals(context.getPackageName()));
        }
        return aWt.booleanValue();
    }

    public static boolean am(Context context) {
        if (context == null) {
            return false;
        }
        try {
            context.getResources();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Context an(Context context) {
        return am(context) ? context : com.applovin.impl.sdk.n.getApplicationContext();
    }

    @Nullable
    public static WebView b(Context context, String str) {
        return a(context, str, false);
    }

    public static String b(Map<String, String> map, boolean z) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.applovin.impl.sdk.utils.u.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
                public int compare(String str, String str2) {
                    return str.compareToIgnoreCase(str2);
                }
            });
            treeMap.putAll(map);
            map = treeMap;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(o2.i.c);
            }
            String value = entry.getValue();
            if (value instanceof String) {
                String str = value;
                if (str.contains(o2.i.c)) {
                    value = str.replace(o2.i.c, "%26");
                }
            }
            sb.append((Object) entry.getKey());
            sb.append(b4.R);
            sb.append((Object) value);
        }
        return sb.toString();
    }

    public static Field b(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return b(superclass, str);
        }
    }

    private static List<Class> b(List<String> list, com.applovin.impl.sdk.n nVar) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            try {
                arrayList.add(Class.forName(str));
            } catch (ClassNotFoundException unused) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().i("Utils", "Failed to create class for name: " + str);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(AppLovinAd appLovinAd, com.applovin.impl.sdk.n nVar) {
        if (appLovinAd instanceof AppLovinAdBase) {
            String sdkKey = nVar.getSdkKey();
            String sdkKey2 = ((AppLovinAdBase) appLovinAd).getSdk().getSdkKey();
            if (sdkKey.equals(sdkKey2)) {
                return;
            }
            com.applovin.impl.sdk.x.H("AppLovinAd", "Ad was loaded from sdk with key: " + sdkKey2 + ", but is being rendered from sdk with key: " + sdkKey);
            nVar.BR().a(com.applovin.impl.sdk.d.f.aTf);
        }
    }

    public static boolean b(Context context, com.applovin.impl.sdk.n nVar) {
        String str = nVar.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.RUN_IN_RELEASE_MODE);
        return ((StringUtils.isValidString(str) && Boolean.parseBoolean(str)) || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public static double bY(long j) {
        return j / 1000.0d;
    }

    public static long bZ(long j) {
        return j * 8;
    }

    public static String c(Class cls, String str) {
        try {
            Field fieldB = b(cls, str);
            fieldB.setAccessible(true);
            return (String) fieldB.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(Context context, String str) {
        Toast toastMakeText = Toast.makeText(context, str, 0);
        toastMakeText.setMargin(0.0f, 0.1f);
        toastMakeText.show();
    }

    public static boolean c(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (c(view, viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize == AppLovinAdSize.BANNER || appLovinAdSize == AppLovinAdSize.MREC || appLovinAdSize == AppLovinAdSize.LEADER || appLovinAdSize == AppLovinAdSize.CROSS_PROMO;
    }

    public static double ca(long j) {
        return j / 1024.0d;
    }

    public static double cb(long j) {
        return ca(bZ(j));
    }

    public static boolean d(String str, List<String> list) {
        return StringUtils.startsWithAtLeastOnePrefix(str, list);
    }

    public static String dD(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    public static boolean dE(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long dF(String str) {
        if (!StringUtils.isValidString(str)) {
            return Long.MAX_VALUE;
        }
        try {
            return Color.parseColor(str);
        } catch (Throwable unused) {
            return Long.MAX_VALUE;
        }
    }

    public static int dG(String str) {
        int i = 0;
        for (String str2 : str.replaceAll("-beta", ".").split("\\.")) {
            if (str2.length() > 2) {
                com.applovin.impl.sdk.x.H("Utils", "Version number components cannot be longer than two digits -> " + str);
                return i;
            }
            i = (i * 100) + Integer.parseInt(str2);
        }
        return !str.contains("-beta") ? (i * 100) + 99 : i;
    }

    public static String dH(String str) {
        return str.replace("ALPlayableAnalytics.trackEvent = ", "ALPlayableAnalytics.trackEvent = function (eventName) {const SDK_URL = 'applovin://com.applovin.sdk/playable_event';if (!Object.values(ALPlayableEvent).includes(eventName)) {var aTag = document.createElement('a');aTag.setAttribute('href', SDK_URL + '?success=0&type=' + encodeURIComponent(eventName));aTag.innerHTML = 'empty';aTag.click();return;}var aTag = document.createElement('a');aTag.setAttribute('href', SDK_URL + '?success=1&type=' + encodeURIComponent(eventName));aTag.innerHTML = 'empty';aTag.click();}; ALPlayableAnalytics.trackEvent_ignore = ");
    }

    public static boolean dI(String str) {
        return str != null && (str.contains("applovin.com") || str.contains("applvn.com"));
    }

    public static void e(final String str, final Context context) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.s1
            @Override // java.lang.Runnable
            public final void run() {
                u.c(context, str);
            }
        });
    }

    public static int gX(int i) {
        return i * 1024;
    }

    public static boolean gY(int i) {
        return i > 0 && i <= 100 && ((int) (Math.random() * 100.0d)) + 1 <= i;
    }

    public static String i(long j, boolean z) {
        String[] strArr = z ? aWn : aWp;
        String[] strArr2 = z ? aWo : aWp;
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) / 1000;
        for (int i = 0; i < strArr.length; i++) {
            int[] iArr = aWq;
            if (jCurrentTimeMillis < iArr[i]) {
                if (jCurrentTimeMillis <= 0) {
                    return z ? "just now" : "now";
                }
                Object[] objArr = new Object[2];
                if (jCurrentTimeMillis == 1) {
                    objArr[0] = Long.valueOf(jCurrentTimeMillis);
                    objArr[1] = strArr[i];
                    return String.format("%d%s", objArr);
                }
                objArr[0] = Long.valueOf(jCurrentTimeMillis);
                objArr[1] = strArr2[i];
                return String.format("%d%s", objArr);
            }
            jCurrentTimeMillis /= (long) iArr[i];
        }
        return z ? "just now" : "now";
    }

    public static void k(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(1);
        thread.start();
    }

    public static com.applovin.impl.sdk.ad.d l(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        return com.applovin.impl.sdk.ad.d.a(AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", null)), AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", null)), JsonUtils.getString(jSONObject, "zone_id", null), true, JsonUtils.getBoolean(jSONObject, "is_direct_sold", Boolean.FALSE).booleanValue());
    }

    public static long n(byte[] bArr, int i) {
        int i2 = i + 8;
        if (bArr.length < i2) {
            throw new IllegalArgumentException("byte array must be at least 8 bytes long");
        }
        long j = 0;
        while (i < i2) {
            j |= (((long) bArr[i]) & 255) << (i * 8);
            i++;
        }
        return j;
    }

    public static Map<String, String> s(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                map2.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return map2;
    }
}
