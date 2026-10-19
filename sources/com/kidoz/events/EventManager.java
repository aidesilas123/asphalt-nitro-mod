package com.kidoz.events;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.adapters.vungle.VungleAdapter;
import com.json.o2;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.SdkDeviceUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class EventManager {
    public static int a = 0;
    public static int b = 1;
    public static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static EventManager f6751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Utils.StaticHandler f6752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6754g;
    private String h;
    private SparseArray<com.kidoz.events.a> i = new SparseArray<>();
    private String j;

    class a extends Utils.StaticHandler {
        a(Looper looper) {
            super(looper);
        }

        @Override // com.kidoz.sdk.api.general.utils.Utils.StaticHandler, android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    class b implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ EventBulk b;

        b(Context context, EventBulk eventBulk) {
            this.a = context;
            this.b = eventBulk;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.kidoz.events.b bVar = new com.kidoz.events.b(this.a);
            try {
                if (Build.VERSION.SDK_INT < 11) {
                    bVar.execute(new EventBulk[0]);
                } else {
                    bVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.b);
                }
            } catch (Exception unused) {
                SDKLogger.printErrorLog("Failed server syncing event.");
            } catch (OutOfMemoryError unused2) {
                SDKLogger.printErrorLog("Failed server syncing event.");
            } catch (RejectedExecutionException unused3) {
                SDKLogger.printErrorLog("Failed server syncing event.");
            }
        }
    }

    private EventManager() {
    }

    private int b(com.kidoz.events.a aVar, String str, String str2, String str3, String str4, String str5) {
        if (str != null) {
            aVar.d("Category", str);
        }
        if (str2 != null) {
            aVar.d("Action", str2);
        }
        if (str3 != null) {
            aVar.d("Label", str3);
        }
        aVar.c("SessionID", this.f6754g);
        if (str4 != null) {
            aVar.d("WidgetType", str4);
        }
        if (str5 != null) {
            aVar.d("StyleId", str5);
        }
        aVar.d("SdkVersion", KidozSDK.getSDKVersion());
        return 0;
    }

    private JSONObject c(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                if (this.h == null) {
                    this.h = context.getSharedPreferences("events_shared_preferences", 0).getString("DeveloperID", "");
                }
                jSONObject.put("UserRefferal", this.j);
                jSONObject.put("PackageID", KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName());
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                jSONObject.put("AppVersion", String.valueOf(packageInfo.versionName));
                jSONObject.put(VungleAdapter.APP_ID, KidozSDK.getAppId() != null ? KidozSDK.getAppId() : String.valueOf(packageInfo.packageName));
                jSONObject.put("DeveloperID", this.h);
                jSONObject.put("EventVersion", 0);
                jSONObject.put("DeviceType", String.valueOf(Build.DEVICE));
                jSONObject.put("DeviceBrand", String.valueOf(Build.MANUFACTURER));
                jSONObject.put("DeviceModel", String.valueOf(Build.MODEL));
                jSONObject.put("ScreenType", String.valueOf(context.getResources().getConfiguration().screenLayout & 15));
                jSONObject.put("ScreenSize", String.valueOf(ScreenUtils.getDeviceScreenSizeInInches(context)));
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                jSONObject.put("DpiFactor", String.valueOf(displayMetrics.densityDpi));
                jSONObject.put("ScreenW", String.valueOf(SdkDeviceUtils.getScreenSize(context, true)));
                jSONObject.put("ScreenH", String.valueOf(SdkDeviceUtils.getScreenSize(context, false)));
                jSONObject.put("OsType", o2.f6459e);
                jSONObject.put("OsVersion", String.valueOf(Build.VERSION.SDK_INT));
                jSONObject.put("DeviceLang", String.valueOf(Locale.getDefault().getLanguage()));
                jSONObject.put("TimeZone", EventParameters.getCurrentTimezoneOffset());
                jSONObject.put("EventType", "Device Info");
                jSONObject.put("SdkVersion", KidozSDK.getSDKVersion());
            } catch (Exception e2) {
                SDKLogger.printErrorLog("Error when trying to create device params: " + e2.getMessage());
            }
        }
        return jSONObject;
    }

    private Handler d() {
        if (f6752e == null) {
            f6752e = new a(Looper.getMainLooper());
        }
        return f6752e;
    }

    private synchronized int f(Context context, String str, String str2, int i, com.kidoz.events.a aVar, String str3, String str4, String str5) {
        if (i <= this.f6753f) {
            if (aVar == null) {
                aVar = new com.kidoz.events.a();
            }
            b(aVar, str3, str4, str5, str, str2);
            try {
                EventBulk eventBulk = new EventBulk();
                eventBulk.c(c(context));
                eventBulk.d(new ArrayList<>(Collections.singletonList(aVar)));
                p(context, eventBulk);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static EventManager getInstance(Context context) {
        if (f6751d == null) {
            EventManager eventManager = new EventManager();
            f6751d = eventManager;
            eventManager.e(context, null);
        }
        return f6751d;
    }

    public static EventManager getInstance(Context context, JSONObject jSONObject) {
        if (f6751d == null) {
            EventManager eventManager = new EventManager();
            f6751d = eventManager;
            eventManager.e(context, jSONObject);
        }
        return f6751d;
    }

    private void p(Context context, EventBulk eventBulk) {
        d().post(new b(context, eventBulk));
    }

    public int a(Context context, String str, String str2, int i, String str3, String str4, String str5, int i2) {
        com.kidoz.events.a aVar = new com.kidoz.events.a();
        aVar.b("intField", i2);
        return f(context, str, str2, i, aVar, str3, str4, str5);
    }

    public void e(Context context, JSONObject jSONObject) {
        this.j = SdkDeviceUtils.getDeviceReferral(context);
        try {
            int identifier = context.getResources().getIdentifier("PROPERTY_APPLICATION_REFFERAL", TypedValues.Custom.S_STRING, KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName());
            if (identifier != 0) {
                this.j = context.getString(identifier);
            }
        } catch (Exception unused) {
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("events_shared_preferences", 0);
        try {
            if (jSONObject != null) {
                this.f6753f = jSONObject.optInt("log_level", a);
                this.h = jSONObject.optString("DeveloperID", "");
                this.f6754g = jSONObject.optInt("SessionID", 0);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putInt("log_level", this.f6753f);
                editorEdit.putString("DeveloperID", this.h);
                editorEdit.apply();
            } else {
                this.f6753f = sharedPreferences.getInt("log_level", a);
                this.h = sharedPreferences.getString("DeveloperID", "");
                this.f6754g = -1L;
            }
            SDKLogger.printInfoLog("init Event manager");
        } catch (Exception e2) {
            SDKLogger.printErrorLog("Error on EventManager init " + e2.getMessage());
        }
    }

    public int g(Context context, String str, String str2, String str3, String str4, String str5, int i) {
        com.kidoz.events.a aVar = new com.kidoz.events.a();
        aVar.d("ItemID", str5);
        aVar.b("ItemIndex", i);
        f(context, str, str2, b, aVar, "Content Click", str3, str4);
        return 0;
    }

    public int h(Context context, String str, String str2, int i, com.kidoz.events.a aVar, String str3, String str4, String str5) {
        return f(context, str, str2, i, aVar, str3, str4, str5);
    }

    public int i(Context context, String str, String str2, int i, String str3, String str4, String str5) {
        f(context, str, str2, i, null, str3, str4, str5);
        return 0;
    }

    public int j(Context context, String str, String str2, int i) {
        try {
            com.kidoz.events.a aVar = this.i.get(i);
            if (aVar != null) {
                aVar.b("Duration", (int) (System.currentTimeMillis() - aVar.e()));
                f(context, str, str2, aVar.g(), aVar, null, null, null);
                this.i.remove(i);
            }
            SDKLogger.printInfoLog("activity end event called");
            return 0;
        } catch (Exception e2) {
            SDKLogger.printErrorLog("Error on EventManager logEventWithDuration " + e2.getMessage());
            return 0;
        }
    }

    public int k(String str, String str2, int i, int i2, String str3, String str4, String str5, String str6) {
        com.kidoz.events.a aVar;
        try {
            aVar = new com.kidoz.events.a();
            b(aVar, str3, str4, str5, str, str2);
            aVar.d("ItemID", str6);
            aVar.h(i);
        } catch (Exception e2) {
            e = e2;
        }
        try {
            this.i.put(i2, aVar);
            return 0;
        } catch (Exception e3) {
            e = e3;
            SDKLogger.printErrorLog("Error on EventManager logEventWithDuration " + e.getMessage());
            return 0;
        }
    }

    public int l(Context context, String str, String str2, String str3, String str4, String str5, int i) {
        try {
            com.kidoz.events.a aVar = new com.kidoz.events.a();
            aVar.d("ItemID", str5);
            aVar.b("ItemIndex", i);
            f(context, str, str2, a, aVar, "Organic Content", str3, str4);
            return 0;
        } catch (Exception e2) {
            SDKLogger.printErrorLog("Error on EventManager logImpressionEvent " + e2.getMessage());
            return -1;
        }
    }

    public int m(Context context, String str, String str2, String str3, String str4, String str5, int i) {
        try {
            com.kidoz.events.a aVar = new com.kidoz.events.a();
            aVar.d("ItemID", str5);
            aVar.d("AdvertiserID", str4);
            aVar.b("ItemIndex", i);
            f(context, str, str2, a, aVar, "Sponsored Content", "Click", str3);
            return 0;
        } catch (Exception e2) {
            SDKLogger.printErrorLog("Error on EventManager logImpressionEvent " + e2.getMessage());
            return -1;
        }
    }

    public int n(Context context, String str, String str2, String str3, String str4, String str5, String str6, int i) {
        try {
            com.kidoz.events.a aVar = new com.kidoz.events.a();
            aVar.d("ItemID", str6);
            aVar.d("AdvertiserID", str5);
            aVar.b("ItemIndex", i);
            f(context, str, str2, a, aVar, "Sponsored Content", str3, str4);
            return 0;
        } catch (Exception e2) {
            SDKLogger.printErrorLog("Error on EventManager logImpressionEvent " + e2.getMessage());
            return -1;
        }
    }

    public int o(Context context, String str, String str2, com.kidoz.events.a aVar, String str3, String str4, String str5, int i, int i2, int i3) {
        com.kidoz.events.a aVar2;
        if (aVar == null) {
            try {
                aVar2 = new com.kidoz.events.a();
            } catch (Exception e2) {
                SDKLogger.printErrorLog("Error on EventManager logSponsoredConversionEvent " + e2.getMessage());
                return -1;
            }
        } else {
            aVar2 = aVar;
        }
        aVar2.d("ItemID", str5);
        aVar2.d("AdvertiserID", str4);
        aVar2.b("ItemIndex", i);
        aVar2.b("intField", i2);
        aVar2.b("intField2", i3);
        f(context, str, str2, a, aVar2, "Sponsored Content", "Conversion", str3);
        return 0;
    }
}
