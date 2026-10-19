package com.bytedance.sdk.openadsdk.component.d;

import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.v;
import com.bytedance.sdk.openadsdk.j.b;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.json.d1;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTAppOpenAdReport.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(final int i, final int i2) {
        b.a("openad_load_ad_timeout", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.d.a.1
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout_type", i);
                jSONObject.put("user_timeout_time", i2);
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("openad_load_ad_timeout").b(jSONObject.toString());
            }
        });
    }

    public static void a(q qVar) {
        c.b(qVar, "cache_expire", (JSONObject) null);
    }

    public static void a(q qVar, int i, int i2, float f2) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, qVar);
            jSONObject.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("skip_time", i);
            jSONObject.put("skip_show_time", i2);
            jSONObject.put("total_time", f2);
        } catch (JSONException e2) {
            l.c("TTAppOpenAdReport", "reportSkip json error", e2);
        }
        c.a(qVar, "skip", i, jSONObject);
    }

    public static void a(q qVar, int i, v vVar) {
        JSONObject jSONObject = new JSONObject();
        long jF = 0;
        try {
            jSONObject.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("open_ad_cache_type", i);
            if (vVar != null) {
                vVar.b(ab.a());
                a(jSONObject, qVar);
                jSONObject.put("client_start_time", vVar.b());
                jSONObject.put("sever_time", vVar.d());
                jSONObject.put("network_time", vVar.c());
                jSONObject.put("client_end_time", vVar.e());
                jSONObject.put("download_resource_duration", vVar.g());
                jSONObject.put("resource_source", vVar.h());
                jSONObject.put("is_bidding", vVar.a ? 1 : 0);
                if (vVar.a) {
                    jSONObject.put("load_wait_time", vVar.b);
                }
                jF = vVar.f();
            }
        } catch (JSONException e2) {
            l.c("TTAppOpenAdReport", "reportLoadNetDuration json error", e2);
        }
        c.a(qVar, "load_net_duration", jF, jSONObject);
    }

    public static void a(q qVar, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, qVar);
            jSONObject.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException unused) {
            l.e("TTAppOpenAdReport", "reportLoadCacheDuration json error");
        }
        c.a(qVar, "load_cache_duration", j, jSONObject);
    }

    public static void a(q qVar, long j, float f2, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, qVar);
            jSONObject.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
            if (z) {
                double d2 = f2;
                jSONObject.put("video_duration", d2);
                jSONObject.put("video_percent", (int) (((j * 1.0d) / 10.0d) / d2));
            } else {
                jSONObject.put("image_duration", f2);
            }
        } catch (JSONException e2) {
            l.c("TTAppOpenAdReport", "reportDestroy json error", e2);
        }
        c.b(qVar, "destroy", jSONObject);
    }

    public static void a(q qVar, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(d1.t, z ? 1 : 2);
        } catch (JSONException unused) {
        }
        c.a(qVar, "download_image_duration", j, jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(org.json.JSONObject r1, com.bytedance.sdk.openadsdk.core.model.q r2) {
        /*
            java.lang.String r0 = "is_icon_only"
            if (r2 == 0) goto Lc
            boolean r2 = r2.br()     // Catch: org.json.JSONException -> L11
            if (r2 == 0) goto Lc
            r2 = 1
            goto Ld
        Lc:
            r2 = 0
        Ld:
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L11
            goto L1b
        L11:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "TTAppOpenAdReport"
            com.bytedance.sdk.component.utils.l.e(r2, r1)
        L1b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.d.a.a(org.json.JSONObject, com.bytedance.sdk.openadsdk.core.model.q):void");
    }

    public static void b(q qVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException e2) {
            l.c("TTAppOpenAdReport", "reportCacheLoss json error", e2);
        }
        c.b(qVar, "cache_loss", jSONObject);
    }

    public static void b(q qVar, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("size", qVar.K().e());
            jSONObject.put("video_duration", qVar.K().f());
            jSONObject.put(d1.t, z ? 1 : 2);
        } catch (JSONException unused) {
        }
        c.a(qVar, "download_video_duration", j, jSONObject);
    }
}
