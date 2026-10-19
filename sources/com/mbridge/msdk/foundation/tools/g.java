package com.mbridge.msdk.foundation.tools;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.b;
import org.json.JSONObject;

/* JADX INFO: compiled from: DomainSameDiTool.java */
/* JADX INFO: loaded from: classes4.dex */
public class g {
    private static volatile String a = null;
    private static String b = null;
    private static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f7227d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f7229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f7230g;

    public static String a() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.g()) {
            return TextUtils.isEmpty(a) ? "" : a;
        }
        if (!TextUtils.isEmpty(a)) {
            return (com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() || f7230g == 0) ? a : "";
        }
        w.z();
        if (!f7229f) {
            b(com.mbridge.msdk.foundation.controller.b.d().g());
            f7229f = true;
        }
        return TextUtils.isEmpty(a) ? "" : a;
    }

    public static void a(int i) {
        f7230g = i;
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            Class<?> cls = Class.forName("com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebEnvCheckEntry");
            cls.getMethod("check", Context.class).invoke(cls.newInstance(), context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    static /* synthetic */ void a(Context context, String str, int i) {
        try {
            if (ak.b(str)) {
                ai.a(context, MBridgeConstans.SP_GA_ID, str);
            }
            ai.a(context, MBridgeConstans.SP_GA_ID_LIMIT, Integer.valueOf(i));
        } catch (Exception e2) {
            aa.d("DomainSameDiTool", e2.getMessage());
        }
    }

    public static void a(String str) {
        b = u.a(str);
        a = str;
    }

    public static int b() {
        return f7230g;
    }

    public static void b(final Context context) {
        new Thread(new Runnable() { // from class: com.mbridge.msdk.foundation.tools.g.1
            @Override // java.lang.Runnable
            public final void run() {
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID) && com.mbridge.msdk.foundation.controller.authoritycontroller.a.g()) {
                    int i = 1;
                    try {
                        Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                        g.a(advertisingIdInfo.getId());
                        int unused = g.f7230g = advertisingIdInfo.isLimitAdTrackingEnabled() ? 1 : 0;
                        g.a(context, advertisingIdInfo.getId(), g.f7230g);
                    } catch (Exception e2) {
                        aa.c("DomainSameDiTool", e2.getMessage());
                        try {
                            b.a aVarA = new b().a(context);
                            g.a(aVarA.a());
                            if (!aVarA.b()) {
                                i = 0;
                            }
                            int unused2 = g.f7230g = i;
                            g.a(context, aVarA.a(), g.f7230g);
                        } catch (Exception e3) {
                            aa.c("DomainSameDiTool", e3.getMessage());
                        }
                    } catch (Throwable th) {
                        aa.d("DomainSameDiTool", th.getMessage());
                    }
                }
            }
        }).start();
    }

    public static String c() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.g()) {
            return TextUtils.isEmpty(b) ? "" : b;
        }
        if (!TextUtils.isEmpty(b)) {
            return (com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() || f7230g == 0) ? b : "";
        }
        if (!f7229f) {
            b(com.mbridge.msdk.foundation.controller.b.d().g());
            f7229f = true;
        }
        return "";
    }

    public static String d() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (f7228e) {
            return c;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                ContentResolver contentResolver = com.mbridge.msdk.foundation.controller.b.d().g().getContentResolver();
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
                String string = Settings.Secure.getString(contentResolver, "advertising_id");
                jSONObject.put("status", i);
                jSONObject.put("amazonId", string);
                String string2 = jSONObject.toString();
                if (!TextUtils.isEmpty(string2)) {
                    f7227d = string2;
                    c = u.a(string2);
                }
            } catch (Settings.SettingNotFoundException e2) {
                aa.d("DomainSameDiTool", e2.getMessage());
            }
        } catch (Throwable th) {
            aa.d("DomainSameDiTool", th.getMessage());
        }
        f7228e = true;
        return c;
    }

    public static String e() {
        if (TextUtils.isEmpty(f7227d) && !f7228e) {
            d();
        }
        return f7227d;
    }
}
