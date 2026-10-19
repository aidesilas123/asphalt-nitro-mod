package com.json;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinEventTypes;
import com.json.e5;
import com.json.environment.ContextProvider;
import com.json.environment.IronSourceSharedPreferencesUtilities;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.nc;
import com.json.o2;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class o3 implements e5, e5.a {
    private String b = null;
    private String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6494d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6495e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6496f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile String f6497g;
    private volatile String h;

    class a implements InvocationHandler {
        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            if (objArr == null) {
                return null;
            }
            try {
                if (objArr.length <= 0 || (obj2 = objArr[0]) == null) {
                    return null;
                }
                String string = obj2.getClass().getMethod("getId", new Class[0]).invoke(objArr[0], new Object[0]).toString();
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                o3.this.f6496f = string;
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ long b;

        b(Context context, long j) {
            this.a = context;
            this.b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WebView webView = new WebView(this.a);
                webView.setLayerType(1, null);
                WebSettings settings = webView.getSettings();
                o3.this.f6494d = settings.getUserAgentString();
                webView.destroy();
                o3 o3Var = o3.this;
                o3Var.U(this.a, o3Var.f6494d);
                if (this.b > 0) {
                    o3.this.Y(this.a, System.currentTimeMillis());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private String L(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objN = N(context);
        return objN.getClass().getMethod("getId", new Class[0]).invoke(objN, new Object[0]).toString();
    }

    private void M(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName("com.google.android.gms.appset.AppSet");
        Object objInvoke = cls.getMethod("getClient", Context.class).invoke(cls, context);
        Object objInvoke2 = objInvoke.getClass().getMethod("getAppSetIdInfo", new Class[0]).invoke(objInvoke, new Object[0]);
        Class<?> cls2 = Class.forName("com.google.android.gms.tasks.OnSuccessListener");
        objInvoke2.getClass().getMethod("addOnSuccessListener", cls2).invoke(objInvoke2, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls2}, new a()));
    }

    private Object N(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        return cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(cls, context);
    }

    private String O(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objN = N(context);
        return String.valueOf(((Boolean) objN.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(objN, new Object[0])).booleanValue());
    }

    private String P(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, "Mediation_Shared_Preferences", "browser_user_agent", "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private long Q(Context context) {
        try {
            return Long.parseLong(IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, "Mediation_Shared_Preferences", "browser_user_agent_time", String.valueOf(-1L)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    private long R(File file) {
        long availableBlocksLong;
        long blockSizeLong;
        StatFs statFs = new StatFs(file.getPath());
        if (Build.VERSION.SDK_INT < 19) {
            availableBlocksLong = statFs.getAvailableBlocks();
            blockSizeLong = statFs.getBlockSize();
        } else {
            availableBlocksLong = statFs.getAvailableBlocksLong();
            blockSizeLong = statFs.getBlockSizeLong();
        }
        return (availableBlocksLong * blockSizeLong) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(Context context, String str) {
        try {
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, "Mediation_Shared_Preferences", "browser_user_agent", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(Context context, long j) {
        try {
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, "Mediation_Shared_Preferences", "browser_user_agent_time", String.valueOf(j));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean Z(String str) {
        try {
            String[] strArr = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
            for (int i = 0; i < 8; i++) {
                if (new File(strArr[i] + str).exists()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.json.e5
    public String A(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromDefaultSharedPrefs(context, "IABTCF_TCString", null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.json.e5
    public boolean B(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation", 0) != 1;
    }

    @Override // com.json.e5
    public String C(Context context) {
        return Locale.getDefault().toString();
    }

    @Override // com.json.e5
    public String D(Context context) {
        if (l3.a.c()) {
            try {
                M(context);
                if (!TextUtils.isEmpty(this.f6496f)) {
                    return this.f6496f;
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    @Override // com.json.e5
    public int E(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    @Override // com.json.e5
    public String F(Context context) throws Exception {
        return context.getResources().getConfiguration().locale.getCountry();
    }

    @Override // com.json.e5
    public boolean G(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        return intExtra == 2 || intExtra == 5;
    }

    @Override // com.json.e5
    public String H(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromDefaultSharedPrefs(context, "IABTCF_AddtlConsent", null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.json.e5
    public int I(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @Override // com.json.e5
    public synchronized String J(Context context) {
        if (!TextUtils.isEmpty(this.b)) {
            return this.b;
        }
        if (IronSourceSharedPreferencesUtilities.getBooleanFromSharedPrefs(context, "Mediation_Shared_Preferences", e5.a, true)) {
            String stringFromSharedPrefs = IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, "Mediation_Shared_Preferences", "cachedUUID", "");
            if (TextUtils.isEmpty(stringFromSharedPrefs)) {
                String string = UUID.randomUUID().toString();
                this.b = string;
                IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, "Mediation_Shared_Preferences", "cachedUUID", string);
            } else {
                this.b = stringFromSharedPrefs;
            }
        }
        return this.b;
    }

    @Override // com.json.e5
    public int K(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getRequestedOrientation();
        }
        return -1;
    }

    @Override // com.json.e5
    public int a() {
        return j();
    }

    @Override // com.json.e5
    public long a(String str) {
        return R(new File(str));
    }

    @Override // com.json.e5
    public String a(Context context) {
        String strO;
        try {
            if (!l3.a.a()) {
                strO = O(context);
            } else if (this.f6497g == null) {
                strO = O(context);
                try {
                    if (!TextUtils.isEmpty(strO)) {
                        this.f6497g = strO;
                    }
                } catch (Exception unused) {
                    return strO;
                }
            } else {
                strO = this.f6497g;
            }
            return strO;
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // com.ironsource.e5.a
    public void a(Context context, long j) {
        if (context != null) {
            if (!new xc(new nc.a()).a(Q(context), j)) {
                this.f6494d = P(context);
                this.f6495e = !r0.isEmpty();
            }
            if (this.f6494d.isEmpty()) {
                if (Build.VERSION.SDK_INT < 17) {
                    IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(context, j));
                    return;
                }
                try {
                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
                    this.f6494d = defaultUserAgent;
                    U(context, defaultUserAgent);
                    if (j > 0) {
                        Y(context, System.currentTimeMillis());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    @Override // com.json.e5
    @TargetApi(19)
    public boolean a(Activity activity) {
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        return (systemUiVisibility | 4096) == systemUiVisibility || (systemUiVisibility | 2048) == systemUiVisibility;
    }

    @Override // com.json.e5
    public String b() {
        String id = TimeZone.getDefault().getID();
        return id != null ? id : "";
    }

    @Override // com.json.e5
    public String b(Context context) throws Exception {
        return context.getResources().getConfiguration().locale.getLanguage();
    }

    @Override // com.json.e5
    public boolean c() {
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                return Environment.isExternalStorageRemovable();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.json.e5
    public boolean c(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    @Override // com.json.e5
    public int d() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    @Override // com.json.e5
    public boolean d(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                return Settings.Global.getInt(context.getContentResolver(), "stay_on_while_plugged_in", 0) != 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    @Override // com.json.e5
    public File e(Context context) {
        return context.getExternalCacheDir();
    }

    @Override // com.json.e5
    public String e() {
        return Build.MODEL;
    }

    @Override // com.json.e5
    public String f(Context context) {
        if (context == null) {
            return "";
        }
        int iK = K(context);
        if (iK != 0) {
            if (iK != 1) {
                if (iK != 11) {
                    if (iK != 12) {
                        switch (iK) {
                            case 6:
                            case 8:
                                break;
                            case 7:
                            case 9:
                                break;
                            default:
                                return "none";
                        }
                    }
                }
            }
            return o2.h.D;
        }
        return o2.h.C;
    }

    @Override // com.json.e5
    public boolean f() {
        return Z("su");
    }

    @Override // com.json.e5
    public String g() {
        return Build.MANUFACTURER;
    }

    @Override // com.json.e5
    public boolean g(Context context) {
        return Build.VERSION.SDK_INT >= 17 && context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    @Override // com.json.e5
    public float h() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    @Override // com.json.e5
    public long h(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return -1L;
        }
        activityManager.getMemoryInfo(memoryInfo);
        if (Build.VERSION.SDK_INT >= 16) {
            return memoryInfo.totalMem;
        }
        return -1L;
    }

    @Override // com.json.e5
    public long i() {
        return Calendar.getInstance(TimeZone.getDefault()).getTime().getTime();
    }

    @Override // com.json.e5
    public String i(Context context) {
        return r(context) ? "Tablet" : "Phone";
    }

    @Override // com.json.e5
    public int j() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    @Override // com.json.e5
    public String j(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkOperatorName();
    }

    @Override // com.json.e5
    public int k() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.json.e5
    public File k(Context context) {
        return context.getCacheDir();
    }

    @Override // com.json.e5
    public int l(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("plugged", -1);
        }
        return -1;
    }

    @Override // com.json.e5
    public String l() {
        return "android";
    }

    @Override // com.json.e5
    public float m(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        try {
            return audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1.0f;
        }
    }

    @Override // com.json.e5
    public long m() {
        if (c()) {
            return R(Environment.getExternalStorageDirectory());
        }
        return 0L;
    }

    @Override // com.json.e5
    public long n() {
        return R(Environment.getDataDirectory());
    }

    @Override // com.json.e5
    public String n(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkCountryIso();
    }

    @Override // com.json.e5
    public String o() {
        return Build.VERSION.RELEASE;
    }

    @Override // com.json.e5
    public List<ApplicationInfo> o(Context context) {
        return context.getPackageManager().getInstalledApplications(0);
    }

    @Override // com.json.e5
    public int p() {
        return -(TimeZone.getDefault().getOffset(i()) / 60000);
    }

    @Override // com.json.e5
    public String p(Context context) {
        String strL;
        l3 l3Var = l3.a;
        if (l3Var.b()) {
            try {
                if (!l3Var.a()) {
                    strL = L(context);
                } else if (this.h == null) {
                    strL = L(context);
                    try {
                        if (!TextUtils.isEmpty(strL)) {
                            this.h = strL;
                        }
                    } catch (Exception unused) {
                        return strL;
                    }
                } else {
                    strL = this.h;
                }
                return strL;
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    @Override // com.json.e5
    public boolean q() {
        return this.f6495e;
    }

    @Override // com.json.e5
    public boolean q(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((PowerManager) context.getSystemService("power")).isPowerSaveMode();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    @Override // com.json.e5
    public int r() {
        return d();
    }

    @Override // com.json.e5
    public boolean r(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return ((float) displayMetrics.widthPixels) / displayMetrics.density >= 600.0f;
    }

    @Override // com.json.e5
    public String s() {
        try {
            return this.f6494d.isEmpty() ? P(ContextProvider.getInstance().getApplicationContext()) : this.f6494d;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.json.e5
    public synchronized String s(Context context) {
        if (!TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        if (context == null) {
            return "";
        }
        String stringFromSharedPrefs = IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, "supersonic_shared_preferen", "auid", "");
        this.c = stringFromSharedPrefs;
        if (TextUtils.isEmpty(stringFromSharedPrefs)) {
            String string = UUID.randomUUID().toString();
            this.c = string;
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, "supersonic_shared_preferen", "auid", string);
        }
        return this.c;
    }

    @Override // com.json.e5
    public File t(Context context) {
        return context.getExternalFilesDir(null);
    }

    @Override // com.json.e5
    public boolean u(Context context) {
        try {
            for (String str : context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                if (str.equalsIgnoreCase("com.google.android.gms.permission.AD_ID")) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.json.e5
    public File v(Context context) {
        return context.getFilesDir();
    }

    @Override // com.json.e5
    public int w(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) : 0;
            int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra == -1 || intExtra2 == -1) {
                return -1;
            }
            return (int) ((intExtra / intExtra2) * 100.0f);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // com.json.e5
    public int x(Context context) {
        int I = I(context);
        int iE = E(context);
        return (((I == 0 || I == 2) && iE == 2) || ((I == 1 || I == 3) && iE == 1)) ? 2 : 1;
    }

    @Override // com.json.e5
    public int y(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getIntFromDefaultSharedPrefs(context, "IABTCF_gdprApplies", -1);
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.json.e5
    public int z(Context context) {
        if (context != null) {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
        }
        return -1;
    }
}
