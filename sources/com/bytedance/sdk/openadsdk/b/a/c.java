package com.bytedance.sdk.openadsdk.b.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.u;
import com.json.o2;
import com.json.qc;
import com.json.v4;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdLogParamsGenerate.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private long a;
    private int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1174d = b();
    private final Context c = o.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1175e = d();

    private String a(int i) {
        return i != 120 ? i != 160 ? i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "mdpi" : "ldpi";
    }

    private String a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Throwable unused) {
            return "";
        }
    }

    private void a(com.bytedance.sdk.openadsdk.b.a aVar, boolean z) {
        if (aVar == null) {
            return;
        }
        try {
            String strOptString = z ? aVar.c().optJSONObject("params").optString("log_extra", "") : aVar.c().optString("log_extra", "");
            long jA = q.a(strOptString);
            int iD = q.d(strOptString);
            if (jA == 0) {
                jA = this.a;
            }
            this.a = jA;
            if (iD == 0) {
                iD = this.b;
            }
            this.b = iD;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d("AdLogParamsGenerate", "getInfoFromLogExtra exception", e2.getMessage());
        }
    }

    private boolean b() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private int c() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    private String d() {
        return DeviceUtils.b(this.c) ? "tv" : DeviceUtils.a(this.c) ? "android_pad" : "android";
    }

    @JProtect
    private String e() {
        StringBuilder sb = new StringBuilder();
        try {
            if (t.e()) {
                sb.append("MIUI-");
            } else if (t.b()) {
                sb.append("FLYME-");
            } else {
                String strN = t.n();
                if (t.a(strN)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strN)) {
                    sb.append(strN);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    public String a(List<com.bytedance.sdk.openadsdk.b.a> list) {
        return ac.e((list.size() <= 0 || list.get(0) == null || list.get(0).c() == null) ? "" : list.get(0).c().optString("app_log_url"));
    }

    public List<com.bytedance.sdk.openadsdk.b.a> a(List<com.bytedance.sdk.openadsdk.b.a> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.b.a aVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObjectC = aVar.c();
                jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, jSONObjectC.optString("label"));
                long jOptLong = jSONObjectC.optLong("event_ts", System.currentTimeMillis());
                jSONObject.putOpt("local_time_ms", Long.valueOf(jOptLong));
                jSONObject.putOpt("datetime", com.bytedance.sdk.openadsdk.b.f.c.format(new Date(jOptLong)));
                JSONObject jSONObject2 = new JSONObject();
                Iterator<String> itKeys = jSONObjectC.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!TextUtils.equals(next, "label")) {
                        jSONObject2.putOpt(next, jSONObjectC.opt(next));
                    }
                }
                if (z) {
                    jSONObject2.putOpt("_ad_staging_flag", 3);
                }
                jSONObject.putOpt("params", jSONObject2);
                arrayList.add(new com.bytedance.sdk.openadsdk.b.f(aVar.a, jSONObject));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("AdLogParamsGenerate", e2.getMessage());
            }
        }
        return arrayList;
    }

    @SuppressLint({"HardwareIds"})
    @JProtect
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(v4.R, ac.c());
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("app_version", ac.g());
            jSONObject.put("sim_op", a(this.c));
            jSONObject.put(qc.y, this.f1174d ? 1 : 0);
            jSONObject.put("timezone", c());
            jSONObject.put("access", com.bytedance.sdk.openadsdk.utils.q.a(this.c));
            jSONObject.put(v4.x, o2.f6459e);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_type", this.f1175e);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put("resolution", ad.d(this.c) + "x" + ad.c(this.c));
            jSONObject.put("display_density", a(ad.g(this.c)));
            jSONObject.put("density_dpi", ad.g(this.c));
            jSONObject.put("aid", "1371");
            jSONObject.put("device_id", com.bytedance.sdk.openadsdk.core.j.a(this.c));
            jSONObject.put("rom", e());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("ut", this.b);
            jSONObject.put("uid", this.a);
            jSONObject.put("google_aid", com.com.bytedance.overseas.sdk.b.a.a().b());
            jSONObject.put("locale_language", DeviceUtils.c());
            jSONObject.put("screen_bright", Math.ceil(DeviceUtils.d() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", DeviceUtils.a() ? 0 : 1);
            com.bytedance.sdk.openadsdk.core.settings.e eVarD = o.d();
            jSONObject.put("force_language", s.a(this.c, "tt_choose_language"));
            if (eVarD.A("mnc")) {
                jSONObject.put("mnc", u.c());
            }
            if (eVarD.A("mcc")) {
                jSONObject.put("mcc", u.b());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public JSONObject a(List<com.bytedance.sdk.openadsdk.b.a> list, long j, JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            a(list.get(0), z);
            jSONObject2.put("header", jSONObject);
            JSONArray jSONArray = new JSONArray();
            Iterator<com.bytedance.sdk.openadsdk.b.a> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().a(z));
            }
            if (z) {
                jSONObject2.put("event_v3", jSONArray);
                jSONObject2.put("magic_tag", "ss_app_log");
            } else {
                jSONObject2.put(NotificationCompat.CATEGORY_EVENT, jSONArray);
            }
            jSONObject2.put("_gen_time", j);
            jSONObject2.put("local_time", j / 1000);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public List<com.bytedance.sdk.openadsdk.b.a> b(List<com.bytedance.sdk.openadsdk.b.a> list) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.b.a aVar : list) {
            try {
                JSONObject jSONObjectC = aVar.c();
                jSONObjectC.putOpt("_ad_staging_flag", 1);
                arrayList.add(new com.bytedance.sdk.openadsdk.b.a(aVar.a, jSONObjectC));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("AdLogParamsGenerate", e2.getMessage());
            }
        }
        return arrayList;
    }
}
