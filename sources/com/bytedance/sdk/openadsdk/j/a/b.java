package com.bytedance.sdk.openadsdk.j.a;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.o;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.j.a.b;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.json.v4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

/* JADX INFO: compiled from: LogStatsBase.java */
/* JADX INFO: loaded from: classes2.dex */
public class b<T extends b> implements a {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1795g;
    private String i;
    private String j;
    private String k;
    private String l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1792d = BuildConfig.VERSION_NAME;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1793e = System.currentTimeMillis() / 1000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1794f = 0;
    private int h = 0;

    public static b<b> b() {
        return new b<>();
    }

    @JProtect
    private JSONObject o() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(v4.x, 1);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", ac.e());
            jSONObject.put(v4.R, ac.c());
            jSONObject.put(v4.w0, com.com.bytedance.overseas.sdk.b.a.a().b());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private T p() {
        return this;
    }

    public T a(int i) {
        this.f1794f = i;
        return (T) p();
    }

    public T a(String str) {
        this.a = str;
        return (T) p();
    }

    @Override // com.bytedance.sdk.openadsdk.j.a.a
    @JProtect
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ad_sdk_version", g());
            jSONObject.put("app_version", ac.g());
            jSONObject.put("timestamp", h());
            jSONObject.put("conn_type", o.b(com.bytedance.sdk.openadsdk.core.o.a()));
            jSONObject.put("appid", TextUtils.isEmpty(h.b().d()) ? "" : h.b().d());
            jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_PARAM, o());
            if (!TextUtils.isEmpty(c())) {
                jSONObject.put("type", c());
            }
            jSONObject.put("error_code", k());
            if (!TextUtils.isEmpty(l())) {
                jSONObject.put("error_msg", l());
            }
            if (!TextUtils.isEmpty(e())) {
                jSONObject.put("rit", e());
            }
            if (!TextUtils.isEmpty(f())) {
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, f());
            }
            if (i() > 0) {
                jSONObject.put("adtype", i());
            }
            if (!TextUtils.isEmpty(j())) {
                jSONObject.put("req_id", j());
            }
            if (!TextUtils.isEmpty(m())) {
                jSONObject.put("extra", m());
            }
            String strD = d();
            JSONObject jSONObject2 = null;
            if (TextUtils.isEmpty(strD)) {
                jSONObject2 = new JSONObject();
            } else {
                try {
                    jSONObject2 = new JSONObject(strD);
                } catch (Exception unused) {
                }
            }
            if (jSONObject2 != null) {
                jSONObject2.put("os_version_int", Build.VERSION.SDK_INT);
                jSONObject.put("event_extra", jSONObject2.toString());
            } else if (!TextUtils.isEmpty(strD)) {
                jSONObject.put("event_extra", strD);
            }
            if (!TextUtils.isEmpty(n())) {
                jSONObject.put("duration", n());
            }
        } catch (Throwable th) {
            l.e("LogStatsBase", th.getMessage());
        }
        return jSONObject;
    }

    public T b(int i) {
        this.h = i;
        return (T) p();
    }

    public T b(String str) {
        this.k = str;
        return (T) p();
    }

    public T c(String str) {
        this.b = str;
        return (T) p();
    }

    public String c() {
        return this.a;
    }

    public T d(String str) {
        this.c = str;
        return (T) p();
    }

    public String d() {
        return this.k;
    }

    public T e(String str) {
        this.f1795g = str;
        return (T) p();
    }

    public String e() {
        return this.b;
    }

    public T f(String str) {
        this.i = str;
        return (T) p();
    }

    public String f() {
        return this.c;
    }

    public T g(String str) {
        this.j = str;
        return (T) p();
    }

    public String g() {
        return TextUtils.isEmpty(BuildConfig.VERSION_NAME) ? "" : BuildConfig.VERSION_NAME;
    }

    public long h() {
        return this.f1793e;
    }

    public T h(String str) {
        this.l = str;
        return (T) p();
    }

    public int i() {
        return this.f1794f;
    }

    public String j() {
        return this.f1795g;
    }

    public int k() {
        return this.h;
    }

    public String l() {
        return this.i;
    }

    public String m() {
        return this.j;
    }

    public String n() {
        return this.l;
    }
}
