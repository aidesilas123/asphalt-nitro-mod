package com.bytedance.sdk.openadsdk.b;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.WorkerThread;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bytedance.JProtect;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.b.a;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.r;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.json.d1;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdEventManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: compiled from: AdEventManager.java */
    public static class a {
        public static void a(final int i, final int i2, final int i3, final int i4, final q qVar, final String str, final int i5) {
            c.a(new com.bytedance.sdk.component.g.h("resource_detail") { // from class: com.bytedance.sdk.openadsdk.b.c.a.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (str != null && !TextUtils.isEmpty(qVar.af())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("next_url", qVar.P());
                            jSONObject.put("channel_name", qVar.af());
                            jSONObject.put("preload_status", i <= 0 ? 0 : 2);
                            jSONObject.put("first_page", i5);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("channel_response", i);
                            jSONObject2.put("failResourceCount", i2);
                            jSONObject2.put("successCount", i3);
                            jSONObject2.put("failCount", i4);
                            jSONObject.put("resource_info", jSONObject2);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("ad_extra_data", jSONObject.toString());
                            c.b(System.currentTimeMillis(), qVar, str, "landing_page_resource_detail", jSONObject3);
                        }
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                }
            });
        }

        public static void a(final int i, final int i2, final q qVar) {
            c.a(new com.bytedance.sdk.component.g.h("res_hit") { // from class: com.bytedance.sdk.openadsdk.b.c.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = ac.a(qVar);
                        if (strA == null) {
                            return;
                        }
                        String str = strA + "_landingpage";
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("all_times", i2);
                        jSONObject.put("hit_times", i);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        c.b(System.currentTimeMillis(), qVar, str, "local_res_hit_rate", jSONObject2);
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                }
            });
        }

        public static void a(final long j, final q qVar, final String str, final ILoader iLoader, final String str2) {
            c.a(new com.bytedance.sdk.component.g.h("page_init") { // from class: com.bytedance.sdk.openadsdk.b.c.a.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (str == null) {
                            return;
                        }
                        int iA = com.bytedance.sdk.openadsdk.d.b.a().a(iLoader, str2);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("url", qVar.P());
                        jSONObject.put("channel_name", qVar.af());
                        jSONObject.put("interceptor_status", (TextUtils.isEmpty(qVar.af()) || iA <= 0) ? 0 : 1);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("resource_count", iA);
                        jSONObject.put("resource_info", jSONObject2);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("ad_extra_data", jSONObject.toString());
                        jSONObject3.put("duration", j);
                        c.b(System.currentTimeMillis(), qVar, str, "landingpage_init", jSONObject3);
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                }
            });
        }

        public static void a(final q qVar) {
            c.a(new com.bytedance.sdk.component.g.h("download_gecko_start") { // from class: com.bytedance.sdk.openadsdk.b.c.a.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = ac.a(qVar);
                        if (strA != null && !TextUtils.isEmpty(qVar.af())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", qVar.P());
                            jSONObject.put("channel_name", qVar.af());
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("ad_extra_data", jSONObject.toString());
                            c.b(System.currentTimeMillis(), qVar, strA, "download_gecko_start", jSONObject2);
                        }
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.downloadGeckoStart error", th);
                    }
                }
            });
        }

        public static void a(final q qVar, final JSONObject jSONObject) {
            c.a(new com.bytedance.sdk.component.g.h("download_gecko_end") { // from class: com.bytedance.sdk.openadsdk.b.c.a.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = ac.a(qVar);
                        if (strA != null && !TextUtils.isEmpty(qVar.af())) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("url", qVar.P());
                            jSONObject2.put("channel_name", qVar.af());
                            jSONObject2.put("data", jSONObject);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("ad_extra_data", jSONObject2.toString());
                            c.b(System.currentTimeMillis(), qVar, strA, "download_gecko_end", jSONObject3);
                        }
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.downloadGeckoEnd error", th);
                    }
                }
            });
        }

        public static void a(final String str, final JSONObject jSONObject, final q qVar) {
            c.a(new com.bytedance.sdk.component.g.h("res_hit") { // from class: com.bytedance.sdk.openadsdk.b.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = ac.a(qVar);
                        if (strA == null) {
                            return;
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        c.b(System.currentTimeMillis(), qVar, strA + "_landingpage", str, jSONObject2);
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.loadEvent error", th);
                    }
                }
            });
        }
    }

    @WorkerThread
    public static void a() {
        try {
            Class.forName(c.class.getName());
        } catch (ClassNotFoundException unused) {
        }
    }

    public static void a(long j, q qVar, String str) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("duration", j);
            jSONObject2.put("url", qVar.K().l());
            jSONObject2.put(StyleParser.STYLE_ID, qVar.bs());
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.getMessage());
        }
        b(System.currentTimeMillis(), qVar, str, "endcard_feeling_duraion", jSONObject);
    }

    @JProtect
    private static void a(long j, q qVar, String str, String str2) {
        b(j, qVar, str, str2, new JSONObject());
    }

    public static void a(long j, q qVar, String str, String str2, JSONObject jSONObject, g gVar, com.bytedance.sdk.openadsdk.b.b.a aVar) {
        if (qVar == null) {
            return;
        }
        new a.C0126a(j, qVar).f(qVar.Y()).h(qVar.bc()).e(qVar.ac()).a(qVar.Z()).b(str).c(str2).a(jSONObject).a(aVar);
    }

    public static void a(final com.bytedance.sdk.component.g.h hVar) {
        if (hVar == null) {
            return;
        }
        if (aa.e()) {
            com.bytedance.sdk.component.utils.h.a().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.b.c.5
                @Override // java.lang.Runnable
                public void run() {
                    aa.b(hVar, 10);
                }
            });
        } else if (aa.f()) {
            hVar.run();
        } else {
            aa.b(hVar, 10);
        }
    }

    public static void a(AdSlot adSlot) {
        if (adSlot == null) {
            a("");
        } else if (TextUtils.isEmpty(adSlot.getBidAdm())) {
            a(adSlot.getCodeId());
        }
    }

    public static void a(q qVar) {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.j.a(com.bytedance.sdk.openadsdk.core.o.a()))) {
            return;
        }
        com.bytedance.sdk.openadsdk.b.a.d.a(com.bytedance.sdk.openadsdk.n.a.a(qVar.S(), true));
    }

    public static void a(q qVar, String str) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("url", qVar.K().l());
            jSONObject2.putOpt(StyleParser.STYLE_ID, qVar.bs());
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.getMessage());
        }
        c(qVar, str, "endcard_load_start", jSONObject);
    }

    public static void a(q qVar, String str, int i) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject2.putOpt("preload_status", Integer.valueOf(i));
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
        } catch (Exception unused) {
        }
        c(qVar, str, "open_url_h5", jSONObject);
    }

    public static void a(q qVar, String str, int i, int i2, boolean z) {
        a(qVar, str, i, i2, z, "");
    }

    public static void a(q qVar, String str, int i, int i2, boolean z, String str2) {
        if (qVar == null || qVar.M() != 2) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("count", i);
            jSONObject2.put("interceptor", i2);
            jSONObject2.put("success", z);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put("exception_msg", str2);
            }
            if (i2 == 2 || i2 == 5) {
                jSONObject2.put("meta", qVar.ao().toString());
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception unused) {
        }
        b(System.currentTimeMillis(), qVar, str, "open_browser", jSONObject);
    }

    public static void a(q qVar, String str, int i, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("video_choose", i);
            jSONObject2.put("video_choose_duration", j);
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.toString());
        }
        b(System.currentTimeMillis(), qVar, str, "video_choose", jSONObject);
    }

    public static void a(q qVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i);
        } catch (JSONException unused) {
        }
        b(qVar, str, "open_ad_land_page_links", jSONObject);
    }

    public static void a(q qVar, String str, long j) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("url", qVar.K().l());
            jSONObject2.putOpt(StyleParser.STYLE_ID, qVar.bs());
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            jSONObject.put("duration", j);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.getMessage());
        }
        c(qVar, str, "endcard_load_finish", jSONObject);
    }

    public static void a(q qVar, String str, long j, int i, int i2) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject2.putOpt("interaction_method", Integer.valueOf(qVar.p()));
            jSONObject2.put("first_page", i2);
            if (i >= 0) {
                jSONObject2.putOpt("preload_status", Integer.valueOf(i));
            }
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            jSONObject.put("duration", Math.min(j, 600000L));
        } catch (Exception unused) {
        }
        c(qVar, str, "load", jSONObject);
    }

    public static void a(q qVar, String str, long j, int i, String str2) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("url", qVar.K().l());
            jSONObject2.putOpt(StyleParser.STYLE_ID, qVar.bs());
            jSONObject2.put("error_code", i);
            jSONObject2.put("error_msg", str2);
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            jSONObject.put("duration", j);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.getMessage());
        }
        c(qVar, str, "endcard_load_fail", jSONObject);
    }

    public static void a(final q qVar, final String str, final long j, final JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("onAppOpenAd") { // from class: com.bytedance.sdk.openadsdk.b.c.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    long j2 = j;
                    if (j2 != -1) {
                        jSONObject2.put("duration", j2);
                    }
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } else {
                        jSONObject2.put("ad_extra_data", new JSONObject().toString());
                    }
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", e2.getMessage());
                }
                c.a(jCurrentTimeMillis, qVar, "open_ad", str, jSONObject2, (g) null, (com.bytedance.sdk.openadsdk.b.b.a) null);
            }
        });
    }

    public static void a(final q qVar, final String str, final long j, final boolean z) {
        a(new com.bytedance.sdk.component.g.h("onLpLoading") { // from class: com.bytedance.sdk.openadsdk.b.c.11
            @Override // java.lang.Runnable
            public void run() {
                if (qVar == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("if_lp_loading_success", z ? 1 : 2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.d(th.toString());
                }
                c.b(System.currentTimeMillis(), qVar, str, "lp_loading", jSONObject2);
            }
        });
    }

    public static void a(final q qVar, final String str, final ab abVar) {
        if (qVar == null) {
            return;
        }
        final long jC = abVar.c();
        a(new com.bytedance.sdk.component.g.h("adBackShowTimeReport") { // from class: com.bytedance.sdk.openadsdk.b.c.9
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("click_stay_time", jC);
                    jSONObject.put("click_time", abVar.a);
                    if (str.equals("open_ad")) {
                        jSONObject.put("is_icon_only", qVar.br() ? 1 : 0);
                    }
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable unused) {
                }
                c.b(System.currentTimeMillis(), qVar, str, "stay_duration", jSONObject2);
            }
        });
    }

    public static void a(q qVar, String str, String str2) {
        if (qVar == null) {
            return;
        }
        a(System.currentTimeMillis(), qVar, str, str2);
    }

    public static void a(q qVar, String str, String str2, long j, int i, JSONObject jSONObject, g gVar) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("duration", j);
            jSONObject2.put("percent", i);
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            if (("feed_break".equals(str2) || "feed_over".equals(str2)) && gVar != null) {
                gVar.a(jSONObject);
            }
            jSONObject2.put("ad_extra_data", jSONObject.toString());
        } catch (Throwable unused) {
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
    }

    public static void a(q qVar, String str, String str2, long j, JSONObject jSONObject) {
        if (qVar == null || jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("duration", j);
            jSONObject2.put("ad_extra_data", jSONObject.toString());
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", e2.getMessage());
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
    }

    @JProtect
    public static void a(final q qVar, final String str, final String str2, final String str3, final long j, final long j2, final JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("sendJsAdEvent") { // from class: com.bytedance.sdk.openadsdk.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                q qVar2;
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        String strOptString = jSONObject.optString("ad_extra_data", null);
                        if (strOptString != null) {
                            jSONObject2 = new JSONObject(strOptString);
                        }
                        if (!CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str3)) {
                            jSONObject2.put("device", DeviceUtils.d(com.bytedance.sdk.openadsdk.core.o.a()).toString());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("tag", str2);
                        if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str3)) {
                            r.c(qVar);
                            float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - q.b(jSONObject.optString("log_extra"))).floatValue();
                            JSONObject jSONObject3 = jSONObject;
                            if (fFloatValue <= 0.0f) {
                                fFloatValue = 0.0f;
                            }
                            jSONObject3.putOpt("show_time", Float.valueOf(fFloatValue));
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.j.a(com.bytedance.sdk.openadsdk.core.o.a())) && (qVar2 = qVar) != null) {
                                com.bytedance.sdk.openadsdk.b.a.d.a(com.bytedance.sdk.openadsdk.n.a.a(qVar2.T(), true));
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                new a.C0126a(jCurrentTimeMillis, qVar).d(str).b(str2).c(str3).f(String.valueOf(j)).g(String.valueOf(j2)).a(qVar.Z()).a(jSONObject).h(qVar.bc()).a((com.bytedance.sdk.openadsdk.b.b.a) null);
            }
        });
    }

    public static void a(q qVar, String str, String str2, Map<String, Object> map) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject2.put("dp_creative_type", qVar.be());
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception unused) {
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject);
    }

    public static void a(q qVar, String str, String str2, JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        if (jSONObject != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ad_extra_data", jSONObject.toString());
                if (jSONObject.has("duration")) {
                    jSONObject2.put("duration", jSONObject.get("duration"));
                }
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", e2.getMessage());
            }
            b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
        } else {
            a(System.currentTimeMillis(), qVar, str, str2);
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str2)) {
            r.c(qVar);
        }
    }

    public static void a(q qVar, String str, String str2, JSONObject jSONObject, long j) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            } catch (Exception unused) {
            }
        }
        jSONObject2.put("duration", j);
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
    }

    @JProtect
    public static void a(final q qVar, final String str, final JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("onShow") { // from class: com.bytedance.sdk.openadsdk.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                Object obj;
                try {
                    r.b(qVar);
                    jSONObject2 = new JSONObject();
                    try {
                        JSONObject jSONObject3 = jSONObject;
                        if (jSONObject3 != null) {
                            jSONObject3.put("interaction_method", qVar.p());
                            jSONObject.put("real_interaction_method", qVar.o());
                            jSONObject.put("video_skip_result", com.bytedance.sdk.openadsdk.core.o.d().l(String.valueOf(qVar.aZ())));
                            jSONObject2.put("ad_extra_data", jSONObject.toString());
                        } else {
                            JSONObject jSONObject4 = new JSONObject();
                            jSONObject4.put("interaction_method", qVar.p());
                            jSONObject4.put("real_interaction_method", qVar.o());
                            jSONObject4.put("video_skip_result", com.bytedance.sdk.openadsdk.core.o.d().l(String.valueOf(qVar.aZ())));
                            jSONObject2.put("ad_extra_data", jSONObject4.toString());
                        }
                        jSONObject2.putOpt("log_extra", qVar.ac());
                        float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - qVar.ba()).floatValue();
                        if (fFloatValue <= 0.0f) {
                            fFloatValue = 0.0f;
                        }
                        jSONObject2.putOpt("show_time", Float.valueOf(fFloatValue));
                        jSONObject2.putOpt("ua_policy", Integer.valueOf(qVar.H()));
                        String strZ = qVar.z();
                        if (!TextUtils.isEmpty(strZ) && !TextUtils.isEmpty(strZ)) {
                            try {
                                jSONObject2.put("ttdsp_price", Math.round(Float.parseFloat(strZ) * 100000.0f));
                            } catch (Throwable th) {
                                jSONObject2.put("ttdsp_price", 0);
                                com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", th.getMessage());
                            }
                        }
                        if (qVar.ai() != null) {
                            try {
                                Object obj2 = qVar.ai().get("sdk_bidding_type");
                                if (obj2 != null && Integer.parseInt(obj2.toString()) == 2 && (obj = qVar.ai().get("price")) != null) {
                                    jSONObject2.put("ttdsp_price", Math.round(Double.parseDouble(obj.toString()) * 100000.0d));
                                }
                            } catch (Throwable th2) {
                                com.bytedance.sdk.component.utils.l.c("TTAD.AdEvent", "client bidding price error: ", th2);
                            }
                        }
                        k.a(qVar, str);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    jSONObject2 = null;
                }
                new a.C0126a(jCurrentTimeMillis, qVar).b(str).c(d1.u).f(qVar.Y()).a(qVar.Z()).a(jSONObject2).h(qVar.bc()).a((com.bytedance.sdk.openadsdk.b.b.a) null);
                if (!qVar.az()) {
                    if (qVar.bd()) {
                        com.bytedance.sdk.openadsdk.core.g.b.c.a(qVar.S(), new c.b("show_urls", qVar));
                    } else {
                        c.a(qVar);
                    }
                }
                com.bytedance.sdk.openadsdk.core.e.c.b();
            }
        });
    }

    public static void a(final q qVar, final String str, final boolean z, final boolean z2, final boolean z3, final boolean z4, final int i) {
        a(new com.bytedance.sdk.component.g.h("start_show_endcard") { // from class: com.bytedance.sdk.openadsdk.b.c.7
            @Override // java.lang.Runnable
            public void run() {
                if (qVar == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("isSkip", z);
                    jSONObject2.put("force", z2);
                    jSONObject2.put("isFromLandingPage", z3);
                    jSONObject2.put("finishing", z4);
                    jSONObject2.put(TypedValues.TransitionType.S_FROM, i);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                c.b(System.currentTimeMillis(), qVar, str, "start_show_endcard", jSONObject);
            }
        });
    }

    public static void a(final String str) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("sendLastShowAd") { // from class: com.bytedance.sdk.openadsdk.b.c.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("slot", str);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - com.bytedance.sdk.openadsdk.utils.m.d();
                    if (jCurrentTimeMillis2 > 600000 || jCurrentTimeMillis2 < 0) {
                        com.bytedance.sdk.openadsdk.utils.m.e();
                    } else {
                        jSONObject.put("duration", jCurrentTimeMillis2);
                        q qVarA = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(com.bytedance.sdk.openadsdk.utils.m.b()));
                        if (qVarA == null) {
                        } else {
                            c.a(jCurrentTimeMillis, qVarA, com.bytedance.sdk.openadsdk.utils.m.c(), "next_load_stats", jSONObject, (g) null, (com.bytedance.sdk.openadsdk.b.b.a) null);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void a(String str, long j) {
        com.bytedance.sdk.openadsdk.core.d.c.a(str, j);
    }

    @JProtect
    public static void a(final String str, final q qVar, final com.bytedance.sdk.openadsdk.core.model.i iVar, final String str2, final boolean z, final Map<String, Object> map, final int i) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("onClick") { // from class: com.bytedance.sdk.openadsdk.b.c.13
            @Override // java.lang.Runnable
            public void run() {
                if (qVar == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    com.bytedance.sdk.openadsdk.core.model.i iVar2 = iVar;
                    if (iVar2 != null) {
                        JSONObject jSONObjectA = iVar2.a();
                        jSONObjectA.put("is_valid", z);
                        int i2 = i;
                        if (i2 >= 1 && i2 <= 2) {
                            jSONObjectA.put("user_behavior_type", i2);
                        }
                        Map map2 = map;
                        if (map2 != null) {
                            if (map2.containsKey("duration")) {
                                jSONObject.put("duration", map.get("duration"));
                            }
                            for (Map.Entry entry : map.entrySet()) {
                                if (!"duration".equals(entry.getKey())) {
                                    jSONObjectA.put((String) entry.getKey(), entry.getValue());
                                }
                            }
                        }
                        jSONObjectA.put("interaction_method", qVar.p());
                        if (str2.equals("open_ad")) {
                            jSONObjectA.put("is_icon_only", qVar.br() ? 1 : 0);
                        }
                        jSONObject.put("ad_extra_data", jSONObjectA.toString());
                    }
                    jSONObject.putOpt("log_extra", qVar.ac());
                    float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - qVar.ba()).floatValue();
                    if (fFloatValue <= 0.0f) {
                        fFloatValue = 0.0f;
                    }
                    jSONObject.putOpt("show_time", Float.valueOf(fFloatValue));
                    jSONObject.putOpt("ua_policy", Integer.valueOf(qVar.H()));
                } catch (Exception unused) {
                }
                new a.C0126a(jCurrentTimeMillis, qVar).b(str2).c(str).f(qVar.Y()).a(qVar.Z()).a(jSONObject).h(qVar.bc()).a((com.bytedance.sdk.openadsdk.b.b.a) null);
                if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.j.a(com.bytedance.sdk.openadsdk.core.o.a())) && CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str)) {
                    com.bytedance.sdk.openadsdk.b.a.d.a(com.bytedance.sdk.openadsdk.n.a.a(qVar.T(), true));
                }
                if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str)) {
                    r.c(qVar);
                }
            }
        });
    }

    @JProtect
    public static void a(final String str, final q qVar, final String str2, final g gVar) {
        if (qVar == null || gVar == null || !gVar.a()) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new com.bytedance.sdk.component.g.h("adShowTimeReport") { // from class: com.bytedance.sdk.openadsdk.b.c.8
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", str);
                    g gVar2 = gVar;
                    if (gVar2 != null && gVar2.b() != null) {
                        JSONObject jSONObjectB = gVar.b();
                        if (str2.equals("open_ad")) {
                            jSONObjectB.put("is_icon_only", qVar.br() ? 1 : 0);
                        }
                        jSONObject.put("ad_extra_data", jSONObjectB.toString());
                    }
                } catch (Throwable unused) {
                }
                c.b(jCurrentTimeMillis, qVar, str2, "ad_show_time", jSONObject);
            }
        });
    }

    public static void a(String str, q qVar, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception unused) {
            }
        }
        b(System.currentTimeMillis(), qVar, str2, str, jSONObject);
    }

    public static void b() {
        com.bytedance.sdk.component.g.f.b(new com.bytedance.sdk.component.g.h("showFailLog") { // from class: com.bytedance.sdk.openadsdk.b.c.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.j.b.a().a("show_fail_log", new JSONObject());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", th.getMessage());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JProtect
    public static void b(final long j, final q qVar, final String str, final String str2, final JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        a(new com.bytedance.sdk.component.g.h("sendEvent") { // from class: com.bytedance.sdk.openadsdk.b.c.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 != null) {
                        jSONObject2.putOpt("log_extra", qVar.ac());
                        jSONObject.putOpt("ua_policy", Integer.valueOf(qVar.H()));
                    } else {
                        com.bytedance.sdk.component.utils.l.c("TTAD.AdEvent", "ccr log, log_extra is empty");
                    }
                } catch (Exception unused) {
                }
                new a.C0126a(j, qVar).b(str).c(str2).f(qVar.Y()).a(qVar.Z()).a(jSONObject).h(qVar.bc()).a((com.bytedance.sdk.openadsdk.b.b.a) null);
            }
        });
    }

    public static void b(final q qVar, final String str) {
        a(new com.bytedance.sdk.component.g.h("pictureClick") { // from class: com.bytedance.sdk.openadsdk.b.c.12
            @Override // java.lang.Runnable
            public void run() {
                if (qVar == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("ad_slot_type", qVar.D().getNativeAdType());
                    jSONObject.put("interaction_method", qVar.p());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.d(th.toString());
                }
                c.b(System.currentTimeMillis(), qVar, str, "picture_click", jSONObject2);
            }
        });
    }

    public static void b(q qVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i);
        } catch (JSONException unused) {
        }
        b(qVar, str, "download_app_ad_track", jSONObject);
    }

    public static void b(final q qVar, final String str, final long j) {
        if (qVar == null) {
            return;
        }
        a(new com.bytedance.sdk.component.g.h("adClickShowTimeReport") { // from class: com.bytedance.sdk.openadsdk.b.c.10
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("video_click_duration_time", j);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable unused) {
                }
                long j2 = j;
                if (j2 <= 0 || j2 >= 200000) {
                    return;
                }
                c.b(System.currentTimeMillis(), qVar, str, "video_click_duration", jSONObject2);
            }
        });
    }

    @JProtect
    public static void b(final q qVar, final String str, ab abVar) {
        if (qVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final long jC = abVar.c();
        a(new com.bytedance.sdk.component.g.h("sendLoadDuration") { // from class: com.bytedance.sdk.openadsdk.b.c.15
            @Override // java.lang.Runnable
            public void run() {
                String str2;
                if (com.bytedance.sdk.openadsdk.core.o.d().W()) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("duration", jC);
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.l.e("TTAD.AdEvent", th.getMessage());
                    }
                    String str3 = str;
                    str3.hashCode();
                    switch (str3) {
                        case "banner_ad":
                            str2 = "banner_ad_loadtime";
                            break;
                        case "rewarded_video":
                            str2 = "rewarded_video_loadtime";
                            break;
                        case "fullscreen_interstitial_ad":
                            str2 = "fullscreen_interstitial_ad_loadtime";
                            break;
                        case "embeded_ad":
                            str2 = "embeded_ad_loadtime";
                            break;
                        case "interaction":
                            str2 = "interaction_loadtime";
                            break;
                        default:
                            str2 = "";
                            break;
                    }
                    c.b(jCurrentTimeMillis, qVar, str, str2, jSONObject);
                }
            }
        });
    }

    public static void b(q qVar, String str, String str2) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("error_msg", str2);
            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
        } catch (Exception unused) {
        }
        b(System.currentTimeMillis(), qVar, str, "show_error", jSONObject);
    }

    public static void b(q qVar, String str, String str2, JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            } catch (Exception unused) {
            }
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
    }

    public static void b(q qVar, String str, String str2, JSONObject jSONObject, long j) {
        if (qVar == null || jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ad_extra_data", jSONObject.toString());
            jSONObject2.put("duration", j);
        } catch (Throwable unused) {
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject2);
    }

    public static void b(q qVar, String str, JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        a(qVar, str, -1L, jSONObject);
    }

    public static void c(q qVar, String str) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("reveice_ts", System.currentTimeMillis());
            if (str.equals("open_ad")) {
                jSONObject2.put("is_icon_only", qVar.br() ? 1 : 0);
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception unused) {
        }
        b(System.currentTimeMillis(), qVar, str, "bidding_receive", jSONObject);
    }

    public static void c(q qVar, String str, long j) {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("duration", j);
        } catch (Exception unused) {
        }
        b(System.currentTimeMillis(), qVar, str, "bidding_load", jSONObject);
    }

    @JProtect
    public static void c(q qVar, String str, String str2, JSONObject jSONObject) {
        if (qVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        b(System.currentTimeMillis(), qVar, str, str2, jSONObject);
    }
}
