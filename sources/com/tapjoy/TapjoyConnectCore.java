package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.json.k2;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.a3;
import com.tapjoy.internal.a7;
import com.tapjoy.internal.b4;
import com.tapjoy.internal.ca;
import com.tapjoy.internal.d3;
import com.tapjoy.internal.e7;
import com.tapjoy.internal.f1;
import com.tapjoy.internal.i8;
import com.tapjoy.internal.l8;
import com.tapjoy.internal.p6;
import com.tapjoy.internal.r5;
import com.tapjoy.internal.s5;
import com.tapjoy.internal.t6;
import com.tapjoy.internal.v1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Logger;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyConnectCore {
    public static Integer A0;
    public static Integer B0;
    public static String C0;
    public static String D0;
    public static String E0;
    public static boolean R;
    public static PackageManager S;
    public static g0 T;
    public static boolean X;
    public static Context a;
    public static TapjoyConnectCore b;
    public static j0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static n f7831d;
    public static String d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static TJSetUserIDListener f7832e;
    public static String e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f7833f;
    public static String f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f7834g;
    public static String g0;
    public static Integer h0;
    public static String i0;
    public static Long j0;
    public static String k0;
    public static Integer l0;
    public static HashSet m0;
    public static Integer n0;
    public static Integer o0;
    public static Integer p0;
    public static Long q0;
    public static Long r0;
    public static Long s0;
    public static Long t0;
    public static String u0;
    public static Integer v0;
    public static Double w0;
    public static Double x0;
    public static Long y0;
    public static Integer z0;
    public boolean G0 = false;
    public boolean H0 = false;
    public final ExecutorService I0 = Executors.newSingleThreadExecutor();
    public static final Vector h = new Vector(Arrays.asList(d0.a));
    public static String i = "";
    public static String j = "";
    public static String k = "";
    public static String l = "";
    public static String m = "";
    public static String n = "";
    public static String o = "";
    public static String p = "";
    public static String q = "";
    public static String r = "";
    public static String s = "";
    public static String t = "";
    public static int u = 1;
    public static float v = 1.0f;
    public static int w = 1;
    public static String x = "";
    public static String y = "";
    public static String z = "";
    public static String A = "";
    public static String B = "";
    public static String C = "";
    public static String D = "";
    public static String E = "";
    public static String F = "";
    public static String G = "";
    public static String H = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
    public static String I = "";
    public static String J = "";
    public static boolean K = false;
    public static String L = "";
    public static String M = "";
    public static String N = "";
    public static String O = "";
    public static Map P = new HashMap();
    public static long Q = 0;
    public static int U = 0;
    public static int V = 0;
    public static String W = "";
    public static String Y = "";
    public static String Z = "";
    public static String a0 = "";
    public static Hashtable b0 = c0.c;
    public static final ConcurrentHashMap c0 = new ConcurrentHashMap();
    public static boolean F0 = false;

    public class a implements Runnable {
        public final Map a;

        public a(Map<String, String> map) {
            this.a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tapjoy.internal.k0 k0VarA;
            String str = TapjoyConnectCore.c.d(TapjoyConnectCore.getHostURL() + "api/connect/v3.json?", null, null, this.a).f7843d;
            if (str != null) {
                TapjoyConnectCore.this.getClass();
                try {
                    try {
                        try {
                            k0VarA = b4.a(str);
                        } catch (IOException e2) {
                            TapjoyLog.v("TapjoyConnect", e2.getMessage());
                            TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Completed Pay-Per-Action call failed."));
                        }
                    } catch (RuntimeException e3) {
                        TapjoyLog.v("TapjoyConnect", e3.getMessage());
                        TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Completed Pay-Per-Action call failed."));
                    }
                    if (!k0VarA.g()) {
                        k0VarA.close();
                        Logger logger = l8.a;
                        TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Completed Pay-Per-Action call failed."));
                    } else {
                        k0VarA.u();
                        TapjoyLog.d("TapjoyConnect", "Successfully sent completed Pay-Per-Action to Tapjoy server.");
                        k0VarA.close();
                        Logger logger2 = l8.a;
                    }
                } finally {
                    l8.a(null);
                }
            }
        }
    }

    public static void a(int i2, String str) {
        if (!TextUtils.isEmpty(G)) {
            v1.a.b(a, G, F);
        }
        TapjoyUtil.runOnMainThread(new p0(i2, str));
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public static void a(Context context) throws f0 {
        a = context;
        S = context.getPackageManager();
        TJPrivacyPolicy.getInstance().b(context);
        TJUserParameters.getInstance().f(context);
        ca.a.b(context);
        T = new g0(a);
        if (c == null) {
            c = new j0();
        }
        if (b0 == null) {
            b0 = new Hashtable();
        }
        try {
            PackageManager packageManager = S;
            if (packageManager != null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(a.getPackageName(), 128);
                if (applicationInfo == null || applicationInfo.metaData == null) {
                    TapjoyLog.d("TapjoyConnect", "No metadata present.");
                } else {
                    for (String str : c0.a) {
                        String string = applicationInfo.metaData.getString("tapjoy." + str);
                        if (string != null) {
                            TapjoyLog.d("TapjoyConnect", "Found manifest flag: " + str + ", " + string);
                            if ((str.equals("TJC_OPTION_SERVICE_URL") || str.equals("TJC_OPTION_PLACEMENT_SERVICE_URL")) && !string.endsWith("/")) {
                                string = string.concat("/");
                            }
                            b0.put(str, string);
                        }
                    }
                    TapjoyLog.d("TapjoyConnect", "Metadata successfully loaded");
                }
            }
        } catch (Exception e2) {
            TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Error reading manifest meta-data -- " + e2.toString()));
        }
        int identifier = a.getResources().getIdentifier("raw/tapjoy_config", null, a.getPackageName());
        if (identifier != 0) {
            try {
                Properties properties = new Properties();
                properties.load(a.getResources().openRawResource(identifier));
                Enumeration enumerationKeys = properties.keys();
                while (enumerationKeys.hasMoreElements()) {
                    try {
                        String str2 = (String) enumerationKeys.nextElement();
                        String strConcat = (String) properties.get(str2);
                        if ((str2.equals("TJC_OPTION_SERVICE_URL") || str2.equals("TJC_OPTION_PLACEMENT_SERVICE_URL")) && !strConcat.endsWith("/")) {
                            strConcat = strConcat.concat("/");
                        }
                        b0.put(str2, strConcat);
                    } catch (ClassCastException unused) {
                        TapjoyLog.e("TapjoyConnect", "Error parsing configuration properties in tapjoy_config.txt");
                    }
                }
            } catch (Exception unused2) {
            }
        }
        if (TextUtils.isEmpty(getConnectFlagValue("unit_test_mode"))) {
            try {
                List listAsList = Arrays.asList(S.getPackageInfo(a.getPackageName(), 1).activities);
                if (listAsList != null) {
                    Iterator it = listAsList.iterator();
                    while (it.hasNext()) {
                        a((ActivityInfo) it.next());
                    }
                }
                Vector vector = h;
                if (vector.size() != 0) {
                    if (vector.size() == 1) {
                        throw new i0("Missing " + vector.size() + " dependency class in manifest: " + vector.toString());
                    }
                    throw new i0("Missing " + vector.size() + " dependency classes in manifest: " + vector.toString());
                }
                Vector vector2 = new Vector();
                for (String str3 : d0.b) {
                    if (!(S.checkPermission(str3, a.getPackageName()) == 0)) {
                        vector2.add(str3);
                    }
                }
                if (vector2.size() != 0) {
                    if (vector2.size() == 1) {
                        throw new i0("Missing 1 permission in manifest: " + vector2.toString());
                    }
                    throw new i0("Missing " + vector2.size() + " permissions in manifest: " + vector2.toString());
                }
                Vector vector3 = new Vector();
                if (vector3.size() != 0) {
                    if (vector3.size() == 1) {
                        TapjoyLog.w("TapjoyConnect", "WARNING -- " + vector3.toString() + " permission was not found in manifest. The exclusion of this permission could cause problems.");
                    } else {
                        TapjoyLog.w("TapjoyConnect", "WARNING -- " + vector3.toString() + " permissions were not found in manifest. The exclusion of these permissions could cause problems.");
                    }
                }
                try {
                    k.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, Boolean.class);
                    if (getConnectFlagValue("TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK") == null || !getConnectFlagValue("TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK").equals("true")) {
                        T.a();
                    } else {
                        TapjoyLog.i("TapjoyConnect", "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services.");
                    }
                } catch (NoSuchMethodException unused3) {
                    throw new i0("Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://dev.tapjoy.comfor more information.");
                }
            } catch (Exception unused4) {
                throw new i0("Error while getting package info.");
            }
        }
        String strB = f1.b(a);
        i = strB;
        if (strB != null) {
            i = strB.toLowerCase();
        }
        try {
            r = S.getPackageInfo(a.getPackageName(), 0).versionName;
            o = "android";
            z = "android";
            m = Build.MODEL;
            n = Build.MANUFACTURER;
            p = Build.VERSION.RELEASE;
            s = "13.3.0";
            t = "1.1.4";
            try {
                e0 e0Var = new e0(a);
                u = e0Var.a();
                v = e0Var.b();
                w = e0Var.c();
            } catch (Exception e3) {
                TapjoyLog.e("TapjoyConnect", "Error getting screen density/dimensions/layout: " + e3.toString());
            }
            TelephonyManager telephonyManager = (TelephonyManager) a.getSystemService("phone");
            if (telephonyManager != null) {
                try {
                    A = telephonyManager.getNetworkOperatorName();
                    B = telephonyManager.getNetworkCountryIso();
                    String networkOperator = telephonyManager.getNetworkOperator();
                    if (networkOperator != null && (networkOperator.length() == 5 || networkOperator.length() == 6)) {
                        C = networkOperator.substring(0, 3);
                        D = networkOperator.substring(3);
                    }
                } catch (SecurityException unused5) {
                    TapjoyLog.i("TapjoyConnect", "Error accessing network operator info");
                }
            }
            k = f1.c(a);
            l = f1.d(a);
            TapjoyLog.i("TapjoyConnect", "Tapjoy device test id: " + l);
            if (getConnectFlagValue("TJC_OPTION_STORE_NAME") != null && getConnectFlagValue("TJC_OPTION_STORE_NAME").length() > 0) {
                E = getConnectFlagValue("TJC_OPTION_STORE_NAME");
                if (!new ArrayList(Arrays.asList(c0.b)).contains(E)) {
                    TapjoyLog.w("TapjoyConnect", "Warning -- undefined STORE_NAME: " + E);
                }
            }
            try {
                K = a(E);
            } catch (Exception e4) {
                TapjoyLog.e("TapjoyConnect", "Error trying to detect store intent on devicee: " + e4.toString());
            }
            g();
            if (getConnectFlagValue("TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK") != null && getConnectFlagValue("TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK").length() > 0) {
                Z = getConnectFlagValue("TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK");
            }
            if (getConnectFlagValue("TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK") != null && getConnectFlagValue("TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK").length() > 0) {
                Y = getConnectFlagValue("TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK");
            }
            if (getConnectFlagValue("TJC_OPTION_USER_ID") != null && getConnectFlagValue("TJC_OPTION_USER_ID").length() > 0) {
                TapjoyLog.i("TapjoyConnect", "Setting userID to: " + getConnectFlagValue("TJC_OPTION_USER_ID"));
                setUserID(getConnectFlagValue("TJC_OPTION_USER_ID"), null);
            }
            J = TapjoyUtil.getRedirectDomain(getConnectFlagValue("TJC_OPTION_SERVICE_URL"));
            if (b0 != null) {
                TapjoyLog.i("TapjoyConnect", "Connect Flags:");
                TapjoyLog.i("TapjoyConnect", "--------------------");
                for (Map.Entry entry : b0.entrySet()) {
                    TapjoyLog.i("TapjoyConnect", "key: " + ((String) entry.getKey()) + ", value: " + Uri.encode(entry.getValue().toString()));
                }
                TapjoyLog.i("TapjoyConnect", "hostURL: [" + getConnectFlagValue("TJC_OPTION_SERVICE_URL") + o2.i.f6491e);
                TapjoyLog.i("TapjoyConnect", "redirectDomain: [" + J + o2.i.f6491e);
                TapjoyLog.i("TapjoyConnect", "--------------------");
            }
        } catch (PackageManager.NameNotFoundException e5) {
            throw new f0(e5.getMessage());
        }
    }

    public static void a(ActivityInfo activityInfo) throws i0 {
        Vector vector = h;
        if (vector.contains(activityInfo.name)) {
            int iIndexOf = vector.indexOf(activityInfo.name);
            try {
                Class.forName((String) vector.get(iIndexOf));
                Vector vector2 = new Vector();
                if ((activityInfo.configChanges & 128) != 128) {
                    vector2.add("orientation");
                }
                if ((activityInfo.configChanges & 32) != 32) {
                    vector2.add("keyboardHidden");
                }
                if (vector2.size() != 0) {
                    if (vector2.size() == 1) {
                        throw new i0(vector2.toString() + " property is not specified in manifest configChanges for " + ((String) vector.get(iIndexOf)));
                    }
                    throw new i0(vector2.toString() + " properties are not specified in manifest configChanges for " + ((String) vector.get(iIndexOf)));
                }
                if ((activityInfo.configChanges & 1024) != 1024) {
                    TapjoyLog.w("TapjoyConnect", "WARNING -- screenSize property is not specified in manifest configChanges for " + ((String) vector.get(iIndexOf)));
                }
                if (activityInfo.name.equals("com.tapjoy.TJAdUnitActivity") && (activityInfo.flags & 512) != 512) {
                    throw new i0("'hardwareAccelerated' property not specified in manifest for " + ((String) vector.get(iIndexOf)));
                }
                vector.remove(iIndexOf);
            } catch (ClassNotFoundException unused) {
                throw new i0("[ClassNotFoundException] Could not find dependency class " + ((String) h.get(iIndexOf)));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.lang.String r5, java.lang.Object r6) {
        /*
            boolean r0 = r6 instanceof java.lang.String
            r1 = 0
            if (r0 == 0) goto L11
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.NumberFormatException -> L1c
            java.lang.String r6 = r6.trim()     // Catch: java.lang.NumberFormatException -> L1c
            long r3 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L1c
            goto L1d
        L11:
            boolean r0 = r6 instanceof java.lang.Number
            if (r0 == 0) goto L1c
            java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.NumberFormatException -> L1c
            long r3 = r6.longValue()     // Catch: java.lang.NumberFormatException -> L1c
            goto L1d
        L1c:
            r3 = r1
        L1d:
            int r6 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r6 > 0) goto L29
            com.tapjoy.TapjoyAppSettings r5 = com.tapjoy.TapjoyAppSettings.getInstance()
            r5.c()
            goto L5f
        L29:
            com.tapjoy.TapjoyAppSettings r6 = com.tapjoy.TapjoyAppSettings.getInstance()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = com.tapjoy.TapjoyConnectCore.q
            r0.append(r1)
            java.lang.String r1 = com.tapjoy.TapjoyConnectCore.r
            r0.append(r1)
            java.lang.String r1 = com.tapjoy.TapjoyConnectCore.s
            r0.append(r1)
            java.lang.String r1 = com.tapjoy.TapjoyConnectCore.W
            r0.append(r1)
            java.lang.String r1 = com.tapjoy.TapjoyConnectCore.k
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = com.tapjoy.TapjoyUtil.SHA1(r0)     // Catch: java.lang.Exception -> L53
        L53:
            r1 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 * r1
            long r1 = com.tapjoy.internal.na.a()
            long r1 = r1 + r3
            r6.d(r5, r0, r1)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyConnectCore.a(java.lang.String, java.lang.Object):void");
    }

    public static boolean a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (str.length() < 1) {
            intent.setData(Uri.parse("market://details"));
            if (S.queryIntentActivities(intent, 0).size() > 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(String str, boolean z2) throws Throwable {
        com.tapjoy.internal.k0 k0Var;
        com.tapjoy.internal.k0 k0Var2;
        Map map;
        try {
            try {
                com.tapjoy.internal.k0 k0VarA = b4.a(str);
                try {
                    try {
                        LinkedHashMap linkedHashMapM = k0VarA.m();
                        String str2 = (String) linkedHashMapM.get("override_service_url");
                        String str3 = "";
                        if (str2 == null) {
                            str2 = "";
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            getInstance().getClass();
                            b0.put("TJC_OPTION_SERVICE_URL", !str2.endsWith("/") ? str2.concat("/") : str2);
                        }
                        if (linkedHashMapM.containsKey("sdk_beacons") && (map = (Map) linkedHashMapM.get("sdk_beacons")) != null && map.containsKey(com.json.b4.r) && (map.get(com.json.b4.r) instanceof Boolean)) {
                            if (Boolean.TRUE.equals((Boolean) map.get(com.json.b4.r))) {
                                i8.a(getURLParams(), map);
                            }
                        }
                        String str4 = (String) linkedHashMapM.get("app_group_id");
                        if (str4 == null) {
                            str4 = "";
                        }
                        String str5 = (String) linkedHashMapM.get(o2.h.U);
                        if (str5 == null) {
                            str5 = "";
                        }
                        String str6 = (String) linkedHashMapM.get("analytics_api_key");
                        if (str6 == null) {
                            str6 = "";
                        }
                        Object obj = linkedHashMapM.get("user_token_config");
                        String str7 = (String) linkedHashMapM.get("managed_device_id");
                        if (str7 != null) {
                            str3 = str7;
                        }
                        Object obj2 = linkedHashMapM.get("cache_max_age");
                        com.tapjoy.internal.m mVar = new com.tapjoy.internal.m(str6);
                        if (mVar.b == 1) {
                            throw new IOException("Invalid analytics_api_key");
                        }
                        v1.a.b(a, com.tapjoy.internal.m.a(mVar.c), mVar.f7937d);
                        L = str4;
                        M = str5;
                        N = str6;
                        O = str3;
                        if (linkedHashMapM.containsKey("currency_ids")) {
                            try {
                                List list = (List) linkedHashMapM.get("currency_ids");
                                if (a != null && list != null && !list.isEmpty()) {
                                    JSONArray jSONArray = new JSONArray((Collection) list);
                                    SharedPreferences.Editor editorEdit = a.getSharedPreferences("tjcPrefrences", 0).edit();
                                    editorEdit.putBoolean("currency_self_managed", jSONArray.getJSONObject(0).getString("currency_type").equalsIgnoreCase("self_managed"));
                                    editorEdit.putString("server_currency_ids", jSONArray.toString());
                                    editorEdit.apply();
                                }
                            } catch (Exception unused) {
                                TapjoyLog.e("TapjoyConnect", "Error saving currency id list.");
                            }
                        }
                        if (obj instanceof Map) {
                            P = (Map) obj;
                        }
                        if (TextUtils.isEmpty(str2) || !f7833f) {
                            k0Var = null;
                        } else {
                            k0Var = null;
                            setUserID(x, null);
                        }
                        k0VarA.close();
                        if (!z2) {
                            try {
                                a(str, obj2);
                                ca.a.c(linkedHashMapM.get(com.json.mediationsdk.d.j));
                            } catch (IOException e2) {
                                e = e2;
                                k0Var2 = k0Var;
                                TapjoyLog.v("TapjoyConnect", e.getMessage());
                                l8.a(k0Var2);
                                return false;
                            } catch (RuntimeException e3) {
                                e = e3;
                                k0Var2 = k0Var;
                                TapjoyLog.v("TapjoyConnect", e.getMessage());
                                l8.a(k0Var2);
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                k0Var2 = k0Var;
                                l8.a(k0Var2);
                                throw th;
                            }
                        }
                        Logger logger = l8.a;
                        return true;
                    } catch (Throwable th2) {
                        th = th2;
                        k0Var2 = k0VarA;
                        l8.a(k0Var2);
                        throw th;
                    }
                } catch (IOException e4) {
                    e = e4;
                    k0Var2 = k0VarA;
                    TapjoyLog.v("TapjoyConnect", e.getMessage());
                    l8.a(k0Var2);
                    return false;
                } catch (RuntimeException e5) {
                    e = e5;
                    k0Var2 = k0VarA;
                    TapjoyLog.v("TapjoyConnect", e.getMessage());
                    l8.a(k0Var2);
                    return false;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e6) {
            e = e6;
            k0Var = null;
        } catch (RuntimeException e7) {
            e = e7;
            k0Var = null;
        } catch (Throwable th4) {
            th = th4;
            k0Var = null;
        }
    }

    public static void b() {
        if (F0) {
            return;
        }
        try {
            T.j(!(getConnectFlagValue("TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK") != null && getConnectFlagValue("TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK").equals("true")));
            if (T.i() && T.h()) {
                V = T.c();
                U = T.d();
            }
            if (T.e()) {
                X = T.f();
                W = T.b();
                v1 v1Var = v1.a;
                String str = W;
                boolean z2 = !X;
                d3 d3Var = v1Var.h;
                String strC = d3Var.f7886f.u.c();
                s5 s5Var = d3Var.f7884d;
                s5Var.r = str;
                s5Var.s = Boolean.valueOf(z2);
                d3Var.f7886f.u.b(str);
                d3Var.f7886f.v.b(z2);
                e7.f7894d.countDown();
                if (!TextUtils.isEmpty(strC) && !str.equals(strC)) {
                    a7.a(d3Var.f7886f.b, false);
                }
            }
            F0 = true;
        } catch (Exception e2) {
            TapjoyLog.i("TapjoyConnect", "Error fetching advertising id: " + e2.toString());
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.HashMap c() {
        /*
            Method dump skipped, instruction units count: 1145
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyConnectCore.c():java.util.HashMap");
    }

    public static /* synthetic */ void e() {
        n nVar = f7831d;
        if (nVar != null) {
            nVar.onConnectSuccess();
        }
    }

    public static /* synthetic */ void f() {
        n nVar = f7831d;
        if (nVar != null) {
            nVar.onConnectSuccess();
        }
    }

    public static void g() {
        Context context = a;
        v1 v1Var = v1.a;
        v1Var.g(context);
        v1Var.h.k();
        com.tapjoy.internal.y yVarB = v1Var.h.b();
        com.tapjoy.internal.f fVar = yVarB.f8022d;
        d0 = fVar.f7897e;
        e0 = fVar.o;
        f0 = fVar.p;
        z0 = fVar.j;
        A0 = fVar.k;
        B0 = fVar.l;
        C0 = fVar.r;
        D0 = fVar.n;
        r5 r5Var = yVarB.f8023e;
        g0 = r5Var.f7977d;
        h0 = r5Var.f7978e;
        i0 = r5Var.f7979f;
        E0 = r5Var.f7980g;
        p6 p6Var = yVarB.f8024f;
        j0 = p6Var.f7958e;
        k0 = p6Var.f7959f;
        l0 = p6Var.w;
        m0 = new HashSet(p6Var.x);
        n0 = p6Var.f7960g;
        o0 = p6Var.h;
        p0 = p6Var.j;
        q0 = p6Var.k;
        r0 = p6Var.l;
        s0 = p6Var.m;
        t0 = p6Var.n;
        u0 = p6Var.o;
        v0 = p6Var.p;
        w0 = p6Var.q;
        x0 = p6Var.s;
        y0 = p6Var.r;
    }

    public static String getAndroidID() {
        return i;
    }

    public static String getAppID() {
        return q;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[Catch: Exception -> 0x00a2, TryCatch #0 {Exception -> 0x00a2, blocks: (B:3:0x0008, B:5:0x001b, B:10:0x0026, B:39:0x007c, B:11:0x0029, B:14:0x0031, B:19:0x0040, B:21:0x0048, B:38:0x0076, B:23:0x0050, B:25:0x0056, B:30:0x0065, B:32:0x0069, B:37:0x0073), top: B:44:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0076 A[Catch: Exception -> 0x00a2, TryCatch #0 {Exception -> 0x00a2, blocks: (B:3:0x0008, B:5:0x001b, B:10:0x0026, B:39:0x007c, B:11:0x0029, B:14:0x0031, B:19:0x0040, B:21:0x0048, B:38:0x0076, B:23:0x0050, B:25:0x0056, B:30:0x0065, B:32:0x0069, B:37:0x0073), top: B:44:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getAwardCurrencyVerifier(long r9, int r11, java.lang.String r12) {
        /*
            java.lang.String r0 = "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"
            java.lang.String r1 = "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"
            java.lang.String r2 = "TapjoyConnect"
            java.lang.String r3 = ":"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La2
            r4.<init>()     // Catch: java.lang.Exception -> La2
            java.lang.String r5 = com.tapjoy.TapjoyConnectCore.q     // Catch: java.lang.Exception -> La2
            r4.append(r5)     // Catch: java.lang.Exception -> La2
            r4.append(r3)     // Catch: java.lang.Exception -> La2
            java.lang.String r5 = com.tapjoy.TapjoyConnectCore.W     // Catch: java.lang.Exception -> La2
            r6 = 1
            r7 = 0
            if (r5 == 0) goto L23
            int r5 = r5.length()     // Catch: java.lang.Exception -> La2
            if (r5 <= 0) goto L23
            r5 = 1
            goto L24
        L23:
            r5 = 0
        L24:
            if (r5 == 0) goto L29
            java.lang.String r0 = com.tapjoy.TapjoyConnectCore.W     // Catch: java.lang.Exception -> La2
            goto L7c
        L29:
            java.lang.String r5 = getConnectFlagValue(r1)     // Catch: java.lang.Exception -> La2
            java.lang.String r8 = "true"
            if (r5 == 0) goto L3d
            java.lang.String r1 = getConnectFlagValue(r1)     // Catch: java.lang.Exception -> La2
            boolean r1 = r1.equals(r8)     // Catch: java.lang.Exception -> La2
            if (r1 == 0) goto L3d
            r1 = 1
            goto L3e
        L3d:
            r1 = 0
        L3e:
            if (r1 != 0) goto L65
            com.tapjoy.g0 r1 = com.tapjoy.TapjoyConnectCore.T     // Catch: java.lang.Exception -> La2
            boolean r1 = r1.i()     // Catch: java.lang.Exception -> La2
            if (r1 == 0) goto L50
            com.tapjoy.g0 r1 = com.tapjoy.TapjoyConnectCore.T     // Catch: java.lang.Exception -> La2
            boolean r1 = r1.h()     // Catch: java.lang.Exception -> La2
            if (r1 != 0) goto L62
        L50:
            java.lang.String r1 = getConnectFlagValue(r0)     // Catch: java.lang.Exception -> La2
            if (r1 == 0) goto L62
            java.lang.String r0 = getConnectFlagValue(r0)     // Catch: java.lang.Exception -> La2
            boolean r0 = r0.equals(r8)     // Catch: java.lang.Exception -> La2
            if (r0 == 0) goto L62
            r0 = 0
            goto L63
        L62:
            r0 = 1
        L63:
            if (r0 != 0) goto L76
        L65:
            java.lang.String r0 = com.tapjoy.TapjoyConnectCore.i     // Catch: java.lang.Exception -> La2
            if (r0 == 0) goto L70
            int r0 = r0.length()     // Catch: java.lang.Exception -> La2
            if (r0 <= 0) goto L70
            goto L71
        L70:
            r6 = 0
        L71:
            if (r6 == 0) goto L76
            java.lang.String r0 = com.tapjoy.TapjoyConnectCore.i     // Catch: java.lang.Exception -> La2
            goto L7c
        L76:
            java.lang.String r0 = "Error -- no valid device identifier"
            com.tapjoy.TapjoyLog.e(r2, r0)     // Catch: java.lang.Exception -> La2
            r0 = 0
        L7c:
            r4.append(r0)     // Catch: java.lang.Exception -> La2
            r4.append(r3)     // Catch: java.lang.Exception -> La2
            r4.append(r9)     // Catch: java.lang.Exception -> La2
            r4.append(r3)     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = com.tapjoy.TapjoyConnectCore.F     // Catch: java.lang.Exception -> La2
            r4.append(r9)     // Catch: java.lang.Exception -> La2
            r4.append(r3)     // Catch: java.lang.Exception -> La2
            r4.append(r11)     // Catch: java.lang.Exception -> La2
            r4.append(r3)     // Catch: java.lang.Exception -> La2
            r4.append(r12)     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = r4.toString()     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = com.tapjoy.TapjoyUtil.SHA256(r9)     // Catch: java.lang.Exception -> La2
            goto Lc1
        La2:
            r9 = move-exception
            com.tapjoy.TapjoyErrorMessage r10 = new com.tapjoy.TapjoyErrorMessage
            com.tapjoy.TapjoyErrorMessage$ErrorType r11 = com.tapjoy.TapjoyErrorMessage.ErrorType.b
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "Error in computing awardCurrencyVerifier -- "
            r12.<init>(r0)
            java.lang.String r9 = r9.toString()
            r12.append(r9)
            java.lang.String r9 = r12.toString()
            r10.<init>(r11, r9)
            com.tapjoy.TapjoyLog.e(r2, r10)
            java.lang.String r9 = ""
        Lc1:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyConnectCore.getAwardCurrencyVerifier(long, int, java.lang.String):java.lang.String");
    }

    public static String getCarrierName() {
        return A;
    }

    public static String getConnectFlagValue(String str) {
        Hashtable hashtable = b0;
        return (hashtable == null || hashtable.get(str) == null) ? "" : b0.get(str).toString();
    }

    public static String getConnectURL() {
        return "https://connect.tapjoy.com/";
    }

    public static String getConnectionSubType() {
        String subtypeName = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) a.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            subtypeName = connectivityManager.getActiveNetworkInfo().getSubtypeName();
            TapjoyLog.d("TapjoyConnect", "connection_sub_type: " + subtypeName);
            return subtypeName;
        } catch (Exception e2) {
            TapjoyLog.e("TapjoyConnect", "getConnectionSubType error: " + e2.toString());
            return subtypeName;
        }
    }

    public static String getConnectionType() {
        String str = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) a.getSystemService("connectivity");
            if (connectivityManager != null && connectivityManager.getActiveNetworkInfo() != null) {
                int type = connectivityManager.getActiveNetworkInfo().getType();
                str = (type == 1 || type == 6) ? k2.b : "mobile";
                TapjoyLog.d("TapjoyConnect", "connectivity: " + connectivityManager.getActiveNetworkInfo().getType());
                TapjoyLog.d("TapjoyConnect", "connection_type: ".concat(str));
            }
        } catch (Exception e2) {
            TapjoyLog.e("TapjoyConnect", "getConnectionType error: " + e2.toString());
        }
        return str;
    }

    public static Context getContext() {
        return a;
    }

    public static String getCustomParameter() {
        return y;
    }

    public static float getDeviceScreenDensityScale() {
        return v;
    }

    public static Map<String, String> getGenericURLParams() {
        HashMap mapC = c();
        TapjoyUtil.safePut(mapC, "app_id", q, true);
        return mapC;
    }

    public static String getHostURL() {
        return getConnectFlagValue("TJC_OPTION_SERVICE_URL");
    }

    public static TapjoyConnectCore getInstance() {
        return b;
    }

    public static String getPlacementURL() {
        return getConnectFlagValue("TJC_OPTION_PLACEMENT_SERVICE_URL");
    }

    public static String getRedirectDomain() {
        return J;
    }

    public static String getSecretKey() {
        return F;
    }

    public static String getSupportURL(String str) {
        if (str == null) {
            str = q;
        }
        return getHostURL() + "support_requests/new?currency_id=" + str + "&app_id=" + q + "&udid=" + O + "&language_code=" + Locale.getDefault().getLanguage();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006c A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:3:0x0010, B:5:0x0022, B:10:0x002d, B:38:0x0082, B:11:0x0030, B:14:0x0038, B:19:0x0047, B:21:0x004f, B:37:0x007c, B:23:0x0057, B:25:0x005d, B:30:0x006c, B:32:0x0070, B:36:0x0079), top: B:44:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:3:0x0010, B:5:0x0022, B:10:0x002d, B:38:0x0082, B:11:0x0030, B:14:0x0038, B:19:0x0047, B:21:0x004f, B:37:0x007c, B:23:0x0057, B:25:0x005d, B:30:0x006c, B:32:0x0070, B:36:0x0079), top: B:44:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Map<java.lang.String, java.lang.String> getTimeStampAndVerifierParams() {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyConnectCore.getTimeStampAndVerifierParams():java.util.Map");
    }

    public static Map<String, String> getURLParams() {
        Map<String, String> genericURLParams = getGenericURLParams();
        genericURLParams.putAll(getTimeStampAndVerifierParams());
        return genericURLParams;
    }

    public static String getUserID() {
        return x;
    }

    public static String getUserToken() {
        Map map = P;
        if (map == null || map.isEmpty()) {
            if (TextUtils.isEmpty(x)) {
                return O;
            }
            return O + CertificateUtil.DELIMITER + x;
        }
        Map map2 = P;
        HashMap map3 = new HashMap();
        for (String str : map2.keySet()) {
            TapjoyUtil.safePut(map3, str, String.valueOf(map2.get(str)), true);
        }
        if (!TextUtils.isEmpty(x)) {
            TapjoyUtil.safePut(map3, "userid", x, true);
        }
        return Base64.encodeToString(TapjoyUtil.convertURLParams((Map<String, String>) map3, false).getBytes(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(String str) {
        a0 = str;
        this.I0.execute(new Runnable() { // from class: com.tapjoy.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.j();
            }
        });
    }

    public static boolean isConnected() {
        return R;
    }

    public static boolean isFullScreenViewOpen() {
        Iterator it = c0.values().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            if (iIntValue == 1 || iIntValue == 2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isUnitTestMode() {
        return getConnectFlagValue("unit_test_mode") == "true";
    }

    public static boolean isViewOpen() {
        StringBuilder sb = new StringBuilder("isViewOpen: ");
        sb.append(c0.size());
        TapjoyLog.d("TapjoyConnect", sb.toString());
        return !r1.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        b();
        new m().a(a, new TJTaskHandler() { // from class: com.tapjoy.f
            @Override // com.tapjoy.TJTaskHandler
            public final void onComplete(Object obj) {
                this.a.i((String) obj);
            }
        });
    }

    public static void optOutAdvertisingID(Context context, boolean z2) {
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("tjcPrefrences", 0).edit();
            editorEdit.putBoolean("optout_advertising_id", z2);
            editorEdit.apply();
            if (Tapjoy.isConnected()) {
                boolean z3 = true;
                if (!z2) {
                    String str = W;
                    if (str != null && str.length() != 0) {
                        z3 = false;
                    }
                    if (z3 || W.equals("00000000-0000-0000-0000-000000000000")) {
                        F0 = false;
                        new Thread(new r0()).start();
                        return;
                    }
                    return;
                }
                W = "";
                g0 g0Var = T;
                if (g0Var != null) {
                    g0Var.k();
                    v1 v1Var = v1.a;
                    String str2 = W;
                    d3 d3Var = v1Var.h;
                    String strC = d3Var.f7886f.u.c();
                    s5 s5Var = d3Var.f7884d;
                    s5Var.r = str2;
                    s5Var.s = Boolean.TRUE;
                    d3Var.f7886f.u.b(str2);
                    d3Var.f7886f.v.b(true);
                    e7.f7894d.countDown();
                    if (TextUtils.isEmpty(strC) || str2.equals(strC)) {
                        return;
                    }
                    a7.a(d3Var.f7886f.b, false);
                }
            }
        }
    }

    public static void requestTapjoyConnect(Context context, String str) throws i0 {
        requestTapjoyConnect(context, str, null);
    }

    public static void requestTapjoyConnect(Context context, String str, Hashtable<String, ?> hashtable) throws i0 {
        requestTapjoyConnect(context, str, hashtable, null);
    }

    public static void requestTapjoyConnect(Context context, String str, Hashtable<String, ?> hashtable, n nVar) throws i0 {
        try {
            com.tapjoy.internal.m mVar = new com.tapjoy.internal.m(str);
            if (mVar.b != 1) {
                throw new IllegalArgumentException("The given API key was not for Android.");
            }
            q = mVar.c;
            F = mVar.f7937d;
            G = mVar.f7938e;
            if (hashtable != null) {
                b0.putAll(hashtable);
                t6 t6Var = ca.a.b;
                t6Var.getClass();
                HashMap map = new HashMap();
                for (Map.Entry<String, ?> entry : hashtable.entrySet()) {
                    String key = (String) t6.b.get(entry.getKey());
                    if (key == null) {
                        key = entry.getKey();
                    }
                    t6Var.f8007d.a.remove(key);
                    map.put(key, entry.getValue());
                }
                t6Var.f8008e.a = map;
                t6Var.setChanged();
            }
            v1 v1Var = v1.a;
            v1Var.g(context);
            v1Var.k = str;
            f7831d = nVar;
            if (b == null) {
                b = new TapjoyConnectCore();
            }
            TapjoyConnectCore tapjoyConnectCore = b;
            tapjoyConnectCore.getClass();
            try {
                a(context);
                tapjoyConnectCore.a();
                tapjoyConnectCore.H0 = true;
            } catch (i0 e2) {
                TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, e2.getMessage()));
                a(1, e2.getMessage());
                a3.b.notifyObservers(Boolean.FALSE);
            } catch (f0 e3) {
                TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, e3.getMessage()));
                a(2, e3.getMessage());
                a3.b.notifyObservers(Boolean.FALSE);
            }
        } catch (IllegalArgumentException e4) {
            throw new i0(e4.getMessage());
        }
    }

    public static void setCustomParameter(String str) {
        y = str;
    }

    public static void setPlugin(String str) {
        H = str;
    }

    public static void setSDKType(String str) {
        I = str;
    }

    public static void setUserID(String str, TJSetUserIDListener tJSetUserIDListener) {
        x = str;
        f7832e = tJSetUserIDListener;
        TapjoyLog.d("TapjoyConnect", "URL parameters: " + getURLParams());
        new Thread(new q0()).start();
    }

    public static void setViewShowing(boolean z2) {
        if (z2) {
            c0.put("", 1);
        } else {
            c0.clear();
        }
    }

    public static void viewDidClose(String str) {
        TapjoyLog.d("TapjoyConnect", "viewDidClose: " + str);
        c0.remove(str);
        a3.f7852e.notifyObservers();
    }

    public static void viewWillOpen(String str, int i2) {
        TapjoyLog.d("TapjoyConnect", "viewWillOpen: " + str);
        c0.put(str, Integer.valueOf(i2));
    }

    public final void a() {
        this.I0.execute(new Runnable() { // from class: com.tapjoy.g
            @Override // java.lang.Runnable
            public final void run() {
                this.a.k();
            }
        });
    }

    public void b(String str) {
        TapjoyLog.i("TapjoyConnect", "actionComplete: " + str);
        HashMap mapC = c();
        TapjoyUtil.safePut(mapC, "app_id", str, true);
        mapC.putAll(getTimeStampAndVerifierParams());
        TapjoyLog.d("TapjoyConnect", "PPA URL parameters: " + mapC);
        this.I0.execute(new a(mapC));
    }

    public void d() {
        this.G0 = true;
    }

    public void h() {
        if (this.G0) {
            TapjoyLog.i("TapjoyConnect", "generating sessionID...");
            try {
                TapjoyUtil.SHA256((System.currentTimeMillis() / 1000) + q);
                Q = System.currentTimeMillis();
            } catch (Exception e2) {
                TapjoyLog.e("TapjoyConnect", "unable to generate session id: " + e2.toString());
            }
            this.G0 = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void j() {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyConnectCore.j():void");
    }
}
