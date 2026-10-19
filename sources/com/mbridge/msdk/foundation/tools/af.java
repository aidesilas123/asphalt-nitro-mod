package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import com.json.b4;
import com.json.k2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.q;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SameTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class af extends j {
    private static Map<String, String> q;
    private static Map<String, String> r;
    private static char[] a = {'A', 'p', 'p', 'l', 'i', 'c', 'a', 't', 'i', 'o', 'n', 'I', 'n', 'f', 'o'};
    private static char[] b = {'.', 'X'};
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7216d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7217e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7218f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f7219g = 0;
    private static int h = 7;
    private static int i = 14;
    private static int j = 19;
    private static int k = 16;
    private static int l = 26;
    private static String m = "[一-龥]";
    private static Pattern n = Pattern.compile("[一-龥]");
    private static int o = 1;
    private static boolean p = true;
    private static volatile Boolean s = null;

    public static double a(Double d2) {
        try {
            String str = new DecimalFormat("0.00", DecimalFormatSymbols.getInstance(Locale.US)).format(d2);
            if (ak.b(str)) {
                return Double.parseDouble(str);
            }
            return 0.0d;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0.0d;
        }
    }

    public static int a() {
        int i2 = o;
        o = i2 + 1;
        return i2;
    }

    public static int a(Context context, float f2) {
        float f3 = 2.5f;
        if (context != null) {
            try {
                float f4 = context.getResources().getDisplayMetrics().density;
                if (f4 != 0.0f) {
                    f3 = f4;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    public static int a(Object obj) {
        if (obj == null) {
            return 0;
        }
        try {
            if (obj instanceof String) {
                return Integer.parseInt((String) obj);
            }
            return 0;
        } catch (Throwable th) {
            aa.b("SameTools", th.getMessage(), th);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x001f A[EXC_TOP_SPLITTER, PHI: r0 r2
      0x001f: PHI (r0v1 long) = (r0v0 long), (r0v3 long) binds: [B:19:0x002a, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE]
      0x001f: PHI (r2v3 java.io.FileInputStream) = (r2v2 java.io.FileInputStream), (r2v4 java.io.FileInputStream) binds: [B:19:0x002a, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long a(java.io.File r4) throws java.lang.Exception {
        /*
            r0 = 0
            r2 = 0
            boolean r3 = r4.exists()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L2a
            if (r3 == 0) goto L1a
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L2a
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L2a
            int r4 = r3.available()     // Catch: java.lang.Throwable -> L15 java.lang.Exception -> L18
            long r0 = (long) r4
            r2 = r3
            goto L1d
        L15:
            r4 = move-exception
            r2 = r3
            goto L24
        L18:
            r2 = r3
            goto L2a
        L1a:
            r4.createNewFile()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L2a
        L1d:
            if (r2 == 0) goto L2d
        L1f:
            r2.close()     // Catch: java.lang.Exception -> L2d
            goto L2d
        L23:
            r4 = move-exception
        L24:
            if (r2 == 0) goto L29
            r2.close()     // Catch: java.lang.Exception -> L29
        L29:
            throw r4
        L2a:
            if (r2 == 0) goto L2d
            goto L1f
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.af.a(java.io.File):long");
    }

    public static ImageView a(ImageView imageView, BitmapDrawable bitmapDrawable, DisplayMetrics displayMetrics) {
        try {
            bitmapDrawable.setTargetDensity(displayMetrics);
            imageView.setBackground(bitmapDrawable);
            imageView.setClickable(false);
            imageView.setFocusable(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return imageView;
    }

    public static String a(int i2) {
        long[] jArrA;
        try {
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            JSONArray jSONArray = new JSONArray();
            if (eVarB != null && eVarB.X() == 1 && (jArrA = com.mbridge.msdk.foundation.db.k.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a()) != null) {
                int length = jArrA.length;
                for (int i3 = (length <= i2 || i2 == 0) ? 0 : length - i2; i3 < length; i3++) {
                    jSONArray.put(jArrA[i3]);
                }
            }
            return jSONArray.length() > 0 ? a(jSONArray) : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static synchronized String a(Context context, String str, String str2) {
        StringBuilder sb;
        sb = new StringBuilder(str2);
        try {
            sb.append(a(str2, context, str));
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    private static synchronized String a(String str, Context context, String str2) {
        StringBuilder sb;
        try {
            Set<String> queryParameterNames = Uri.parse(str).getQueryParameterNames();
            sb = (queryParameterNames == null || queryParameterNames.size() <= 0) ? new StringBuilder("?rtins_type=") : new StringBuilder("&rtins_type=");
        } catch (Exception unused) {
            sb = new StringBuilder("&rtins_type=");
        }
        try {
            if (b(str2, context) != null) {
                sb.append(1);
            } else {
                sb.append(2);
            }
        } catch (Exception unused2) {
            sb.append(0);
        }
        return sb.toString();
    }

    public static String a(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                HashMap map = new HashMap();
                map.put(str2, str3);
                return a(str, map);
            }
            return str;
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return str;
        }
    }

    private static String a(String str, Map<String, String> map) {
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                StringBuilder sb = new StringBuilder(str);
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry != null && !TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                        String value = entry.getValue();
                        if (str.contains(entry.getKey())) {
                            sb = value.equals("0") ? new StringBuilder(str.replaceAll("(" + entry.getKey() + "[^&]*)", "")) : new StringBuilder(str.replaceAll("(" + entry.getKey() + "[^&]*)", entry.getKey() + entry.getValue()));
                        } else if (!value.equals("0")) {
                            sb.append(entry.getKey() + entry.getValue());
                        }
                    }
                }
                return sb.toString();
            }
            return str;
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return str;
        }
    }

    public static String a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return "";
        }
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB == null) {
            eVarB = com.mbridge.msdk.c.f.a().b();
        }
        int iP = eVarB.P();
        if (jSONArray.length() <= iP) {
            return jSONArray.toString();
        }
        JSONArray jSONArray2 = new JSONArray();
        for (int i2 = 0; i2 < iP; i2++) {
            try {
                jSONArray2.put(jSONArray.get(i2));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray2.toString();
    }

    private static List<String> a(StackTraceElement[] stackTraceElementArr) {
        ArrayList arrayList = new ArrayList();
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                arrayList.add(stackTraceElement.getClassName());
            }
        }
        return arrayList;
    }

    public static JSONArray a(Context context, String str) {
        JSONArray jSONArray = new JSONArray();
        try {
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            if (eVarB != null && eVarB.X() == 1) {
                aa.b("SameTools", "fqci cfc:" + eVarB.X());
                long[] jArrA = com.mbridge.msdk.foundation.db.k.a(com.mbridge.msdk.foundation.db.h.a(context)).a();
                if (jArrA != null) {
                    for (long j2 : jArrA) {
                        aa.b("SameTools", "cfc campaignIds:" + jArrA);
                        jSONArray.put(j2);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONArray;
    }

    public static final void a(final int i2, final ImageView imageView, final CampaignEx campaignEx, Context context, boolean z, final com.mbridge.msdk.foundation.c.a aVar) {
        if (imageView == null || campaignEx == null) {
            return;
        }
        aa.a("configPrivacyButton", "configPrivacyButton");
        boolean z2 = campaignEx.getPrivacyButtonTemplateVisibility() == 0;
        aa.a("configPrivacyButton", "privacyButtonVisibilityGone: " + z2 + " isIgnoreCampaignPrivacyConfig: " + z);
        if (!z && z2) {
            try {
                imageView.setVisibility(8);
                return;
            } catch (Exception e2) {
                aa.d("SameTools", e2.getMessage());
                return;
            }
        }
        if (TextUtils.isEmpty(c(campaignEx))) {
            try {
                imageView.setVisibility(8);
                return;
            } catch (Exception e3) {
                aa.d("SameTools", e3.getMessage());
                return;
            }
        }
        try {
            imageView.setVisibility(0);
        } catch (Exception e4) {
            aa.d("SameTools", e4.getMessage());
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.foundation.tools.af.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                try {
                    af.a(campaignEx, aVar, i2, (String) imageView.getTag());
                } catch (Exception e5) {
                    aa.d("SameTools", e5.getMessage());
                }
            }
        });
    }

    public static void a(View view) {
        if (view == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                view.setSystemUiVisibility(4102);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            imageView.setImageResource(0);
            imageView.setImageDrawable(null);
            imageView.setImageURI(null);
            imageView.setImageBitmap(null);
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }

    public static void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.c.a aVar, int i2, String str) {
        if (campaignEx == null) {
            return;
        }
        try {
            String str2 = campaignEx.getCampaignUnitId() + "_" + i2;
            com.mbridge.msdk.foundation.c.b.a().c(str2);
            com.mbridge.msdk.foundation.c.b.a().a(str2, campaignEx);
            com.mbridge.msdk.foundation.c.b.a().a(str2, aVar);
            com.mbridge.msdk.foundation.c.b.a().b(str2, i2);
            com.mbridge.msdk.foundation.c.b.a().a(str2, str);
            com.mbridge.msdk.foundation.c.b.a().a(str2).a();
        } catch (Throwable th) {
            aa.b("SameTools", "feedback error", th);
        }
    }

    public static void a(String str, CampaignEx campaignEx, int i2) {
        if (TextUtils.isEmpty(str) || campaignEx == null || com.mbridge.msdk.foundation.controller.b.d().g() == null) {
            return;
        }
        com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
        com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
        fVar.a(System.currentTimeMillis());
        fVar.b(str);
        fVar.a(campaignEx.getId());
        fVar.a(i2);
        jVarA.a(fVar);
    }

    public static synchronized void a(String str, String str2) {
        if (r == null) {
            r = new HashMap();
        }
        r.put(com.mbridge.msdk.foundation.controller.b.d().h() + "_" + str, str2);
    }

    public static boolean a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            return !TextUtils.isEmpty(campaignEx.getDeepLinkURL());
        }
        return false;
    }

    public static <T extends String> boolean a(T t) {
        return t == null || t.length() == 0;
    }

    public static boolean a(String str, Context context) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(JSONObject jSONObject) {
        return (jSONObject == null || jSONObject.length() == 0 || jSONObject.optInt("v", -1) != -1) ? false : true;
    }

    public static int b(int i2) {
        if ((i2 > 100 && i2 < 199) || i2 == 2) {
            return 1;
        }
        if ((i2 <= 200 || i2 >= 299) && i2 != 4) {
            return (i2 <= 500 || i2 >= 599) ? -1 : 5;
        }
        return 2;
    }

    public static int b(Context context, float f2) {
        Resources resources;
        if (context == null || (resources = context.getResources()) == null) {
            return 0;
        }
        return (int) ((f2 * resources.getDisplayMetrics().density) + 0.5f);
    }

    private static Object b(String str, Context context) {
        try {
            return Class.forName(String.valueOf(c(c))).getMethod(String.valueOf(c(f7217e)), String.class, Integer.TYPE).invoke(Class.forName(String.valueOf(c(f7216d))).getMethod(String.valueOf(c(f7218f)), new Class[0]).invoke(context, new Object[0]), str, 8192);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context, String str) {
        String strA;
        strA = "";
        try {
            JSONArray jSONArrayA = a(context, str);
            strA = jSONArrayA.length() > 0 ? a(jSONArrayA) : "";
            aa.b("SameTools", "get excludes:" + strA);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return strA;
    }

    public static String b(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObject2 = jSONObject.getJSONObject("device");
                if (jSONObject2 == null) {
                    return str;
                }
                if (jSONObject2.has(str2)) {
                    if (str3.equals("0")) {
                        jSONObject2.remove(str2);
                    } else {
                        jSONObject2.put(str2, str3);
                    }
                } else {
                    if (str3.equals("0")) {
                        return str;
                    }
                    jSONObject2.put(str2, str3);
                }
                return jSONObject.toString();
            } catch (Exception e2) {
                aa.d("SameTools", e2.getMessage());
            }
        }
        return str;
    }

    public static List<String> b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String strOptString = jSONArray.optString(i2);
                if (ak.b(strOptString)) {
                    arrayList.add(strOptString);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            aa.b("SameTools", th.getMessage(), th);
            return null;
        }
    }

    public static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return k2.b.equals(activeNetworkInfo.getTypeName().toLowerCase(Locale.US));
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                return campaignEx.getRetarget_offer() == 1;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static <T extends String> boolean b(T t) {
        return t != null && t.length() > 0;
    }

    public static boolean b(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            try {
                try {
                    Uri uri = Uri.parse(str2);
                    if (uri != null) {
                        return !TextUtils.isEmpty(uri.getQueryParameter(str));
                    }
                    return false;
                } catch (Exception e2) {
                    aa.d("SameTools", e2.getMessage());
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static double c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0.0d;
            }
            return Double.parseDouble(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0.0d;
        }
    }

    public static int c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri != null) {
                String queryParameter = uri.getQueryParameter(str2);
                if (TextUtils.isEmpty(queryParameter)) {
                    return 0;
                }
                return (int) Math.round(Double.valueOf(String.valueOf(queryParameter)).doubleValue());
            }
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
        }
        return 0;
    }

    public static String c() {
        String str;
        try {
            str = UUID.randomUUID().toString() + System.currentTimeMillis();
        } catch (Throwable th) {
            th.printStackTrace();
            str = "";
        }
        if (!ak.a(str)) {
            return str;
        }
        return System.currentTimeMillis() + "";
    }

    public static String c(CampaignEx campaignEx) {
        com.mbridge.msdk.c.e eVarB;
        CampaignEx.a adchoice;
        String privacyUrl = "";
        if (campaignEx != null) {
            try {
                privacyUrl = campaignEx.getPrivacyUrl();
            } catch (Exception e2) {
                aa.d("SameTools", e2.getMessage());
                return "";
            }
        }
        if (TextUtils.isEmpty(privacyUrl) && campaignEx != null && (adchoice = campaignEx.getAdchoice()) != null) {
            privacyUrl = adchoice.d();
        }
        if (TextUtils.isEmpty(privacyUrl) && (eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h())) != null) {
            privacyUrl = eVarB.al();
        }
        return TextUtils.isEmpty(privacyUrl) ? com.mbridge.msdk.foundation.same.net.g.d.a().j : privacyUrl;
    }

    public static boolean c(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static synchronized boolean c(Context context, String str) {
        boolean z;
        z = false;
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (b(str, context) != null) {
                        z = true;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return z;
    }

    private static final char[] c(int i2) {
        StringBuilder sb;
        if (i2 == 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(Arrays.copyOf(ae.b, h)));
            sb.append(b[f7219g]);
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, h, i)));
            sb.append(b[f7219g]);
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, i, k)));
            sb.append(b[f7219g]);
            sb.append(String.valueOf(ad.c));
        } else if (i2 == 1) {
            sb = new StringBuilder();
            sb.append(String.valueOf(Arrays.copyOf(ae.b, h)));
            sb.append(b[f7219g]);
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, h, i)));
            sb.append(b[f7219g]);
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, j, l)));
        } else if (i2 == 2) {
            sb = new StringBuilder();
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, k, j)));
            sb.append(String.valueOf(a));
        } else if (i2 != 3) {
            sb = null;
        } else {
            sb = new StringBuilder();
            sb.append(String.valueOf(Arrays.copyOfRange(ae.b, k, j)));
            sb.append(String.valueOf(ad.c));
        }
        return sb.toString().toCharArray();
    }

    public static String d(String str) {
        try {
            return ak.b(str) ? URLEncoder.encode(str, b4.L) : "";
        } catch (Throwable th) {
            aa.b("SameTools", th.getMessage(), th);
            return "";
        }
    }

    public static boolean d() {
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.b.d().i())) {
            return false;
        }
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram");
            return true;
        } catch (ClassNotFoundException e2) {
            aa.d("SameTools", e2.getMessage());
            return false;
        }
    }

    public static boolean d(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.b("SameTools", "isNetworkAvailable", e2);
            }
            return false;
        }
    }

    public static float e(Context context) {
        if (context == null) {
            return 2.5f;
        }
        try {
            float f2 = context.getResources().getDisplayMetrics().density;
            if (f2 == 0.0f) {
                return 2.5f;
            }
            return f2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 2.5f;
        }
    }

    public static int e() {
        try {
            return ((Integer) Class.forName("com.tencent.mm.opensdk.constants.Build").getField("SDK_INT").get(null)).intValue();
        } catch (Throwable th) {
            aa.d("SameTools", th.getMessage());
            return 0;
        }
    }

    public static Object e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory").getMethod("createWXAPI", Context.class, String.class).invoke(null, com.mbridge.msdk.foundation.controller.b.d().g(), str);
        } catch (ClassNotFoundException e2) {
            aa.d("SameTools", e2.getMessage());
            return null;
        } catch (IllegalAccessException e3) {
            aa.d("SameTools", e3.getMessage());
            return null;
        } catch (NoSuchMethodException e4) {
            aa.d("SameTools", e4.getMessage());
            return null;
        } catch (InvocationTargetException e5) {
            aa.d("SameTools", e5.getMessage());
            return null;
        }
    }

    public static final int f() {
        if (s == null) {
            try {
                s = q.a.a.e();
            } catch (Exception e2) {
                aa.d("SameTools", e2.getMessage());
            }
        }
        if (s != null) {
            return s.booleanValue() ? 1 : 0;
        }
        return -1;
    }

    public static int f(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int f(String str) {
        try {
            return ((Integer) Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("getWXAppSupportAPI", new Class[0]).invoke(w.b(str), new Object[0])).intValue();
        } catch (Throwable th) {
            aa.d("SameTools", th.getMessage());
            return 0;
        }
    }

    public static float g(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static final String g() {
        return q.a.a.f();
    }

    public static final synchronized String g(String str) {
        String str2;
        int iMax;
        int i2;
        boolean z;
        boolean zAr;
        Map<String, String> map;
        try {
            str2 = com.mbridge.msdk.foundation.controller.b.d().h() + "_" + str;
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            iMax = 3;
            if (eVarB != null) {
                boolean zAt = eVarB.at();
                zAr = eVarB.ar();
                iMax = Math.max(0, eVarB.as());
                z = zAt;
            } else {
                z = true;
                zAr = false;
            }
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
        }
        if (zAr && iMax != 0) {
            if (z && (map = q) != null && map.containsKey(str2)) {
                return q.get(str2);
            }
            StringBuilder sb = new StringBuilder("");
            StackTraceElement[] stackTrace = new Exception().getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                List<String> listA = a(stackTrace);
                Collections.reverse(listA);
                ArrayList arrayList = new ArrayList();
                for (String str3 : listA) {
                    if (!str3.startsWith(MBridgeConstans.APPLICATION_STACK_COM_ANDROID) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_OS) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_APP) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_REFLECT_METHOD) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_VIEW) && !arrayList.contains(str3)) {
                        arrayList.add(str3);
                    }
                }
                int iMin = Math.min(arrayList.size(), iMax);
                if (iMin > 0) {
                    for (i2 = 0; i2 < iMin; i2++) {
                        sb.append((String) arrayList.get(i2));
                        if (i2 < iMin - 1) {
                            sb.append("|");
                        }
                    }
                }
                JSONObject jSONObject = null;
                if (!TextUtils.isEmpty(sb.toString())) {
                    jSONObject = new JSONObject();
                    jSONObject.put("1", sb.toString());
                }
                if (jSONObject == null || jSONObject.length() <= 0) {
                    return "";
                }
                String strA = a.a(jSONObject.toString());
                if (z && !TextUtils.isEmpty(strA)) {
                    if (q == null) {
                        q = new HashMap();
                    }
                    q.put(str2, strA);
                }
                return strA;
            }
            return "";
        }
        return "";
    }

    public static int h(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return n(context).heightPixels;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static synchronized String h(String str) {
        String str2 = com.mbridge.msdk.foundation.controller.b.d().h() + "_" + str;
        Map<String, String> map = r;
        if (map == null || !map.containsKey(str2)) {
            return null;
        }
        return r.get(str2);
    }

    public static boolean h() {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManagerA = s.a();
            if (connectivityManagerA != null && (networkInfo = connectivityManagerA.getNetworkInfo(17)) != null) {
                return networkInfo.isConnected();
            }
            return false;
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return false;
        }
    }

    public static int i(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return n(context).widthPixels;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static boolean i() {
        String host;
        int port;
        try {
            if (com.mbridge.msdk.foundation.controller.b.d().g() == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 14) {
                host = System.getProperty("http.proxyHost");
                String property = System.getProperty("http.proxyPort");
                if (property == null) {
                    property = UniquePlacementId.NO_ID;
                }
                port = Integer.parseInt(property);
            } else {
                host = Proxy.getHost(com.mbridge.msdk.foundation.controller.b.d().g());
                port = Proxy.getPort(com.mbridge.msdk.foundation.controller.b.d().g());
            }
            aa.a("address = ", host + "~");
            aa.a("port = ", port + "~");
            return (TextUtils.isEmpty(host) || port == -1) ? false : true;
        } catch (Throwable th) {
            aa.d("SameTools", th.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean i(java.lang.String r4) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            android.net.Uri r4 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L53
            r0 = 1
            if (r4 == 0) goto L45
            java.lang.String r2 = "dyview"
            java.lang.String r2 = r4.getQueryParameter(r2)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L53
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L53
            if (r3 == 0) goto L21
            java.lang.String r2 = "view"
            java.lang.String r2 = r4.getQueryParameter(r2)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L53
        L21:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L53
            if (r3 != 0) goto L32
            r3 = -1
            int r3 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L53
        L2c:
            int r3 = r3 % 2
            if (r3 != 0) goto L32
            r2 = 1
            goto L33
        L32:
            r2 = 0
        L33:
            java.lang.String r3 = "natmp"
            java.lang.String r4 = r4.getQueryParameter(r3)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            if (r4 != 0) goto L41
            r1 = 1
            goto L45
        L41:
            r1 = r2
            goto L45
        L43:
            r4 = move-exception
            goto L48
        L45:
            return r1
        L46:
            r4 = move-exception
            r2 = 0
        L48:
            java.lang.String r0 = "SameTools"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L52
            com.mbridge.msdk.foundation.tools.aa.d(r0, r4)     // Catch: java.lang.Throwable -> L52
            return r1
        L52:
            r1 = r2
        L53:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.af.i(java.lang.String):boolean");
    }

    public static int j(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return false;
            }
            String queryParameter = uri.getQueryParameter(MBridgeConstans.ENDCARD_URL_IS_PLAYABLE);
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            return queryParameter.equals("0");
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return false;
        }
    }

    public static int k(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return false;
            }
            String queryParameter = uri.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_CAN_ANIM);
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            return queryParameter.equals("1");
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return false;
        }
    }

    public static int l(Context context) {
        if (context != null) {
            return 0;
        }
        try {
            if (context.getResources().getIdentifier("config_showNavigationBar", "bool", "android") != 0) {
                return context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return 0;
    }

    public static int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return -1;
            }
            String queryParameter = uri.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW);
            if (TextUtils.isEmpty(queryParameter)) {
                queryParameter = uri.getQueryParameter("view");
            }
            if (TextUtils.isEmpty(queryParameter)) {
                return -1;
            }
            try {
                return Integer.parseInt(queryParameter);
            } catch (Exception unused) {
                return -1;
            }
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return -1;
        }
    }

    public static int m(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            PackageInfo currentWebViewPackage = Build.VERSION.SDK_INT >= 26 ? WebView.getCurrentWebViewPackage() : context.getPackageManager().getPackageInfo("com.google.android.webview", 1);
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            if (currentWebViewPackage == null || TextUtils.isEmpty(currentWebViewPackage.versionName) || !currentWebViewPackage.versionName.equals("77.0.3865.92")) {
                return eVarB.aF();
            }
            return 5;
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m(java.lang.String r17) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r17)
            java.lang.String r1 = ""
            if (r0 == 0) goto L9
            return r1
        L9:
            java.util.concurrent.ConcurrentHashMap r0 = com.mbridge.msdk.foundation.same.a.d.a(r17)
            if (r0 == 0) goto L9c
            int r2 = r0.size()
            if (r2 <= 0) goto L9c
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L22:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L87
            java.lang.Object r3 = r0.next()
            com.mbridge.msdk.foundation.entity.b r3 = (com.mbridge.msdk.foundation.entity.b) r3
            if (r3 == 0) goto L22
            long r4 = r3.d()
            long r6 = r3.e()
            long r8 = java.lang.System.currentTimeMillis()
            r10 = 0
            r12 = 1
            r13 = 0
            r14 = 1000(0x3e8, double:4.94E-321)
            int r16 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r16 <= 0) goto L4e
            long r4 = r4 * r14
            long r6 = r6 + r4
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 < 0) goto L74
            goto L75
        L4e:
            com.mbridge.msdk.c.f r4 = com.mbridge.msdk.c.f.a()
            com.mbridge.msdk.foundation.controller.b r5 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r5 = r5.h()
            com.mbridge.msdk.c.e r4 = r4.b(r5)
            if (r4 != 0) goto L68
            com.mbridge.msdk.c.f r4 = com.mbridge.msdk.c.f.a()
            com.mbridge.msdk.c.e r4 = r4.b()
        L68:
            long r4 = r4.Q()
            long r4 = r4 * r14
            long r6 = r6 + r4
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 < 0) goto L74
            goto L75
        L74:
            r12 = 0
        L75:
            if (r12 == 0) goto L22
            java.util.List r3 = r3.c()
            if (r3 == 0) goto L22
            int r4 = r3.size()
            if (r4 <= 0) goto L22
            r2.addAll(r3)
            goto L22
        L87:
            int r0 = r2.size()
            if (r0 <= 0) goto L9c
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>(r2)
            r2.clear()
            r2.addAll(r0)
            java.lang.String r1 = r2.toString()
        L9c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.af.m(java.lang.String):java.lang.String");
    }

    public static BitmapDrawable n(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            if (bitmapDecodeByteArray != null) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapDecodeByteArray);
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                bitmapDrawable.setTileModeXY(tileMode, tileMode);
                return bitmapDrawable;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    private static DisplayMetrics n(Context context) {
        if (context == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealMetrics(displayMetrics);
            } else {
                defaultDisplay.getMetrics(displayMetrics);
            }
            return displayMetrics;
        } catch (Throwable th) {
            th.printStackTrace();
            return context.getResources().getDisplayMetrics();
        }
    }
}
