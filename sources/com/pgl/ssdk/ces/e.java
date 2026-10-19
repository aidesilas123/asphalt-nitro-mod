package com.pgl.ssdk.ces;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.facebook.internal.security.CertificateUtil;
import com.json.k2;
import com.pgl.ssdk.C1643a;
import com.pgl.ssdk.C1645c;
import com.pgl.ssdk.C1646d;
import com.pgl.ssdk.C1647e;
import com.pgl.ssdk.f;
import com.pgl.ssdk.g;
import com.pgl.ssdk.h;
import com.pgl.ssdk.j;
import com.pgl.ssdk.m;
import com.pgl.ssdk.p;
import com.pgl.ssdk.r;
import com.pgl.ssdk.u;
import com.pgl.ssdk.y;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e extends Thread {
    private static volatile e j;
    private static boolean k;
    public static boolean l;
    private static Map m;
    public Context b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7706e;
    public boolean a = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7707f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7708g = null;
    private String h = null;
    private boolean i = false;

    private e(Context context, String str) {
        this.b = null;
        this.c = "";
        setName("CZL-00");
        this.b = context;
        this.c = str;
    }

    public static e a(Context context, String str, int i, int i2, int i3) {
        Application application;
        if (j == null) {
            synchronized (e.class) {
                if (j == null) {
                    if (context == null) {
                        try {
                            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
                        } catch (Throwable unused) {
                            application = null;
                        }
                        context = application.getApplicationContext();
                    }
                    if (context == null) {
                        return null;
                    }
                    j.a = i;
                    if (!p.a(context, "nms")) {
                        return null;
                    }
                    j = new e(context, str);
                    j.f7705d = i2;
                    j.f7706e = i3;
                    j.a(context);
                    e eVar = j;
                    SharedPreferences sharedPreferences = context.getSharedPreferences("ss_config", 0);
                    String string = sharedPreferences != null ? sharedPreferences.getString("iid", "") : "";
                    if (TextUtils.isEmpty(string)) {
                        string = UUID.randomUUID().toString();
                        SharedPreferences sharedPreferences2 = context.getSharedPreferences("ss_config", 0);
                        if (sharedPreferences2 != null) {
                            sharedPreferences2.edit().putString("iid", string).commit();
                        }
                    }
                    Objects.requireNonNull(eVar);
                    if (!TextUtils.isEmpty(string)) {
                        a.meta(104, null, string);
                    }
                }
            }
        }
        return j;
    }

    public static String a() {
        if (j != null) {
            return j.c;
        }
        return null;
    }

    private void a(Context context) {
        String packageName;
        String absolutePath;
        String str;
        String absolutePath2;
        String path;
        if (context == null || k) {
            return;
        }
        try {
            a.meta(101, null, "1");
            a.meta(102, null, this.c);
            a.meta(114, null, Integer.valueOf(this.f7705d));
            a.meta(105, null, "" + C1643a.a(context));
            StringBuilder sb = new StringBuilder();
            sb.append("");
            try {
                packageName = context.getPackageName();
            } catch (Throwable unused) {
                packageName = null;
            }
            sb.append(packageName == null ? "" : packageName.trim());
            a.meta(106, null, sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            try {
                absolutePath = context.getFilesDir().getAbsolutePath();
            } catch (Throwable unused2) {
                absolutePath = null;
            }
            sb2.append(absolutePath == null ? "" : absolutePath.trim());
            a.meta(107, null, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            try {
                str = context.getApplicationInfo().sourceDir;
            } catch (Throwable unused3) {
                str = null;
            }
            sb3.append(str == null ? "" : str.trim());
            a.meta(108, null, sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("");
            try {
                absolutePath2 = Environment.getExternalStorageDirectory().getAbsolutePath();
            } catch (Throwable unused4) {
                absolutePath2 = null;
            }
            sb4.append(absolutePath2 == null ? "" : absolutePath2.trim());
            a.meta(109, null, sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append("");
            try {
                path = Environment.getDataDirectory().getPath();
            } catch (Throwable unused5) {
                path = null;
            }
            sb5.append(path != null ? path.trim() : "");
            a.meta(110, null, sb5.toString());
            k = true;
        } catch (Throwable unused6) {
        }
    }

    static /* synthetic */ boolean a(boolean z) {
        return z;
    }

    public static String b() {
        if (j != null) {
            return j.f7707f;
        }
        return null;
    }

    public static e c() {
        return j;
    }

    public Object a(int i, Object obj) {
        Object byteArray;
        String string;
        String displayName = null;
        if (i == 123) {
            return f.a(this.b);
        }
        if (i == 121) {
            return (Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault()).getLanguage();
        }
        if (i == 122) {
            try {
                displayName = TimeZone.getDefault().getDisplayName(false, 0);
            } catch (Throwable unused) {
            }
            return displayName == null ? "" : displayName.trim();
        }
        if (i == 126) {
            return C1646d.a(this.b);
        }
        if (i == 128) {
            return "";
        }
        if (i == 120) {
            return C1645c.b();
        }
        if (i == 124) {
            return "[]";
        }
        if (i != 130) {
            if (i == 145) {
                Context context = this.b;
                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(k2.b);
                if (wifiManager != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(wifiManager.isWifiEnabled() ? "1" : "0");
                    string = sb.toString();
                } else {
                    string = "0";
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(string);
                    sb2.append(telephonyManager.getSimState() != 5 ? "0" : "1");
                    return sb2.toString();
                }
                return string + "0";
            }
            if (i == 125) {
                return "";
            }
            if (i == 129) {
                return C1647e.b(this.b);
            }
            if (i == 141) {
                Context context2 = this.b;
                int i2 = -1;
                if (context2 != null) {
                    try {
                        i2 = Settings.System.getInt(context2.getContentResolver(), "screen_brightness", -1);
                    } catch (Throwable unused2) {
                    }
                }
                return String.valueOf(i2);
            }
            if (i == 131) {
                return y.a();
            }
            if (i == 132) {
                a((String) obj);
            } else {
                if (i == 134) {
                    return h.a(this.b).b();
                }
                if (i == 140) {
                    return g.a(this.b).c();
                }
                if (i == 144) {
                    return g.a(this.b).b();
                }
                if (i == 133) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry entry : m.entrySet()) {
                            if (entry.getValue() == null) {
                                jSONObject.put((String) entry.getKey(), "");
                            } else {
                                jSONObject.put((String) entry.getKey(), entry.getValue());
                            }
                        }
                        displayName = jSONObject.toString();
                    } catch (Throwable unused3) {
                    }
                    return displayName == null ? JsonUtils.EMPTY_JSON : displayName.trim();
                }
                try {
                    if (i == 135) {
                        byte[] byteArray2 = this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 64).signatures[0].toByteArray();
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                        if (messageDigest != null) {
                            byte[] bArrDigest = messageDigest.digest(byteArray2);
                            StringBuilder sb3 = new StringBuilder();
                            for (byte b : bArrDigest) {
                                sb3.append(Integer.toHexString((b & 255) | 256).substring(1, 3).toUpperCase());
                                sb3.append(CertificateUtil.DELIMITER);
                            }
                            byteArray = sb3.substring(0, sb3.length() - 1);
                            return byteArray;
                        }
                    } else {
                        if (i == 136) {
                            byteArray = this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 64).signatures[0].toByteArray();
                            return byteArray;
                        }
                        if (i == 201) {
                            try {
                                displayName = Settings.Secure.getString(this.b.getContentResolver(), "android_id");
                            } catch (Throwable unused4) {
                            }
                            return displayName == null ? "" : displayName.trim();
                        }
                        if (i == 202) {
                            return "";
                        }
                        if (i == 236) {
                            try {
                                return Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, obj);
                            } catch (Throwable unused5) {
                            }
                        } else {
                            if (i == 142) {
                                try {
                                    displayName = this.b.getPackageResourcePath();
                                } catch (Throwable unused6) {
                                }
                                return displayName == null ? "" : displayName.trim();
                            }
                            if (i == 143) {
                                return f.b(this.b);
                            }
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public void a(String str) {
        try {
            r rVarB = u.a().b();
            if (rVarB != null) {
                rVarB.post(new d(this, str));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        this.f7707f = str2;
        this.f7708g = str3;
        a.meta(113, null, str);
        a.meta(112, null, str3);
        a.meta(103, null, str2);
        a.meta(111, null, str4);
        if (isAlive() && this.i) {
            return;
        }
        try {
            start();
        } catch (Throwable unused) {
        }
    }

    public void a(HashMap map) {
        if (map != null) {
            m = map;
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f7707f)) {
            a.meta(103, null, str);
            y.c();
            this.f7707f = str;
        }
    }

    public synchronized void c(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.h)) {
            a.meta(111, null, str);
            this.h = str;
            y.c();
        }
    }

    public synchronized void d(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f7708g)) {
            a.meta(112, null, str);
            this.f7708g = str;
            y.c();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.i = true;
        m.b();
        C1643a.a(10000L);
        y.a(this.b, this.c, new c(this));
        C1643a.a(10000L);
        a("CZL-L1st");
        while (true) {
            int i = 0;
            do {
                h.a(this.b).a();
                g.a(this.b).a();
                i++;
                a.meta(1213, null, Thread.currentThread().getName() + "-" + i);
                C1643a.a(180000L);
            } while (i <= 10);
        }
    }
}
