package com.bytedance.sdk.openadsdk.b.d.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.c.b;
import com.bykv.vk.openvk.component.video.api.c.c;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.b.d.b.d;
import com.bytedance.sdk.openadsdk.b.d.b.e;
import com.bytedance.sdk.openadsdk.b.d.b.f;
import com.bytedance.sdk.openadsdk.b.d.b.h;
import com.bytedance.sdk.openadsdk.b.d.b.i;
import com.bytedance.sdk.openadsdk.b.d.b.j;
import com.bytedance.sdk.openadsdk.b.d.b.k;
import com.bytedance.sdk.openadsdk.b.d.b.m;
import com.bytedance.sdk.openadsdk.b.d.b.n;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.r;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoEventManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final Map<com.bykv.vk.openvk.component.video.api.b.a, o> a = Collections.synchronizedMap(new WeakHashMap());

    public static JSONObject a(q qVar, String str, int i, c cVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, str);
            }
            if (i > 0) {
                jSONObject.put("play_type", String.valueOf(i));
            }
            if (qVar != null) {
                b bVarK = qVar.K();
                if (bVarK != null) {
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarK.i());
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, Long.valueOf(bVarK.e()));
                    jSONObject.put("video_url", bVarK.k());
                    jSONObject.put("player_type", cVar.o());
                    jSONObject.put("video_encode_type", cVar.k() ? 1 : 0);
                }
                jSONObject.put("dp_creative_type", qVar.be());
            }
        } catch (JSONException e2) {
            l.c("TTAD.VideoEventManager", "", e2);
        }
        return jSONObject;
    }

    public static void a(Context context, com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2, g gVar) {
        o oVar;
        if (context == null || aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        if (!aVar2.j()) {
            a(qVarE, cVarD, aVar2);
        }
        h hVar = new h();
        hVar.a(aVar2.k() ? 1 : 0);
        hVar.b(CacheDirFactory.getICacheDir(qVarE.aK()).b(cVarD));
        hVar.a(SystemClock.elapsedRealtime() - oVar.a());
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, hVar);
        aVar3.a(aVar2.j());
        a(aVar3, "feed_play", gVar);
    }

    public static void a(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2) {
        o oVar;
        if (aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        if (jC <= 0 || jA <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.b.d.b.g gVar = new com.bytedance.sdk.openadsdk.b.d.b.g();
        gVar.a(aVar2.b());
        gVar.b(jC);
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, gVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "feed_pause", jSONObject);
        } catch (JSONException e3) {
            l.c("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void a(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2, g gVar) {
        o oVar;
        if (aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        d dVar = new d();
        dVar.b(aVar2.b());
        dVar.a(jC);
        dVar.a(aVar2.g());
        dVar.b(aVar2.h());
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, dVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "feed_break", jSONObject, gVar);
        } catch (JSONException e3) {
            l.c("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void a(com.bytedance.sdk.openadsdk.b.d.b.a<k> aVar) {
        a(aVar, "load_video_start");
    }

    private static void a(com.bytedance.sdk.openadsdk.b.d.b.a aVar, String str) {
        a(aVar, str, (JSONObject) null, (g) null);
    }

    private static void a(com.bytedance.sdk.openadsdk.b.d.b.a aVar, String str, g gVar) {
        a(aVar, str, (JSONObject) null, gVar);
    }

    private static void a(com.bytedance.sdk.openadsdk.b.d.b.a aVar, String str, JSONObject jSONObject) {
        a(aVar, str, jSONObject, (g) null);
    }

    private static void a(final com.bytedance.sdk.openadsdk.b.d.b.a aVar, String str, JSONObject jSONObject, final g gVar) {
        if (aVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = jSONObject;
        if (aVar.e() && !TextUtils.isEmpty(aVar.b())) {
            String strB = aVar.b();
            strB.hashCode();
            if (strB.equals("stream") || strB.equals("embeded_ad")) {
                str = "customer_" + str;
            }
        }
        final String str2 = str;
        com.bytedance.sdk.openadsdk.b.c.a(System.currentTimeMillis(), aVar.a(), aVar.b(), str2, jSONObject2, gVar, new com.bytedance.sdk.openadsdk.b.b.a() { // from class: com.bytedance.sdk.openadsdk.b.d.a.a.1
            @Override // com.bytedance.sdk.openadsdk.b.b.a
            public void a(JSONObject jSONObject3) throws JSONException {
                g gVar2;
                JSONObject jSONObjectC = aVar.c();
                if (aVar.d() != null) {
                    aVar.d().a(jSONObjectC);
                }
                if (("feed_play".equals(str2) || "feed_over".equals(str2) || "feed_break".equals(str2)) && (gVar2 = gVar) != null) {
                    gVar2.a(jSONObjectC);
                }
                jSONObject3.put("ad_extra_data", jSONObjectC.toString());
            }
        });
    }

    public static void a(q qVar, com.bykv.vk.openvk.component.video.api.b.a aVar, c cVar) {
        if (qVar == null || aVar == null || cVar == null) {
            return;
        }
        String strA = r.a();
        int i = CacheDirFactory.getICacheDir(qVar.aK()).a(cVar) ? 1 : 2;
        a.put(aVar, new o(SystemClock.elapsedRealtime(), strA, i, cVar, qVar));
        JSONObject jSONObjectA = a(qVar, strA, i, cVar);
        String strA2 = ac.a(qVar);
        int i2 = cVar.f476d;
        if (i2 > 0) {
            try {
                jSONObjectA.put("play_time", i2);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar2 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVar, strA2, jSONObjectA, null);
        aVar2.a(cVar.o() == -1);
        a(aVar2, "play_start");
    }

    private static void a(final q qVar, final c cVar, final o.a aVar) {
        com.bytedance.sdk.openadsdk.j.b.a();
        com.bytedance.sdk.openadsdk.j.b.a("pangle_video_play_state", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.b.d.a.a.2
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", a.c(cVar));
                jSONObject.put("player_duration", aVar.c());
                jSONObject.put("cache_path_type", CacheDirFactory.getCacheType());
                jSONObject.put("url", cVar.m());
                jSONObject.put("path", a.d(cVar));
                jSONObject.put("player_type", cVar.o());
                com.bytedance.sdk.openadsdk.j.a.b bVarA = com.bytedance.sdk.openadsdk.j.a.b.b().a("pangle_video_play_state");
                q qVar2 = qVar;
                return bVarA.a(qVar2 != null ? qVar2.aS() : 0).b(jSONObject.toString());
            }
        });
    }

    public static void b(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2) {
        o oVar;
        if (aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        if (jC <= 0 || jA <= 0) {
            return;
        }
        e eVar = new e();
        eVar.a(aVar2.b());
        eVar.b(jC);
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, eVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "feed_continue", jSONObject);
        } catch (JSONException e3) {
            l.c("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void b(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2, g gVar) {
        if (aVar == null || aVar2 == null) {
            return;
        }
        e(aVar, aVar2);
        o oVar = a.get(aVar);
        if (oVar == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        f fVar = new f();
        fVar.b(aVar2.b());
        fVar.a(jC);
        fVar.a(aVar2.h());
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, fVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "feed_over", jSONObject, gVar);
        } catch (JSONException e3) {
            l.c("TTAD.VideoEventManager", "", e3);
        }
        a.remove(aVar);
    }

    public static void b(com.bytedance.sdk.openadsdk.b.d.b.a<com.bytedance.sdk.openadsdk.b.d.b.l> aVar) {
        a(aVar, "load_video_success");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long c(c cVar) {
        if (cVar == null) {
            return 0L;
        }
        b bVarU = cVar.k() ? cVar.u() : cVar.t();
        if (bVarU != null) {
            return Double.valueOf(bVarU.f() * 1000.0d).longValue();
        }
        return 0L;
    }

    public static void c(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2) {
        o oVar;
        if (aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        n nVar = new n(aVar2.l());
        nVar.a(aVar2.b());
        nVar.b(jC);
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, nVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "play_error", jSONObject);
        } catch (JSONException e3) {
            l.c("TTAD.VideoEventManager", "", e3);
        }
        a.remove(aVar);
    }

    public static void c(com.bytedance.sdk.openadsdk.b.d.b.a<j> aVar) {
        a(aVar, "load_video_error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(c cVar) {
        return new File(cVar.b(), cVar.n()).getAbsolutePath();
    }

    public static void d(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2) {
        o oVar;
        if (aVar == null || aVar2 == null || (oVar = a.get(aVar)) == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jA = aVar2.a();
        long jC = aVar2.c();
        com.bytedance.sdk.openadsdk.b.d.b.b bVar = new com.bytedance.sdk.openadsdk.b.d.b.b();
        bVar.a(aVar2.b());
        bVar.b(jC);
        bVar.a(aVar2.d());
        bVar.b(aVar2.e());
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), a(qVarE, oVar.b(), oVar.c(), cVarD), bVar);
        aVar3.a(aVar2.j());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jA);
            jSONObject.put("percent", aVar2.f());
            a(aVar3, "endcard_skip", jSONObject);
        } catch (JSONException e2) {
            l.c("TTAD.VideoEventManager", "", e2);
        }
    }

    public static void d(com.bytedance.sdk.openadsdk.b.d.b.a<i> aVar) {
        a(aVar, "load_video_cancel");
    }

    public static void e(com.bykv.vk.openvk.component.video.api.b.a aVar, o.a aVar2) {
        if (aVar == null || aVar2 == null) {
            return;
        }
        if (aVar2.i() <= 0) {
            l.c("TTAD.VideoEventManager", "Cancel log report when buffer count is 0");
            return;
        }
        o oVar = a.get(aVar);
        if (oVar == null) {
            return;
        }
        c cVarD = oVar.d();
        q qVarE = oVar.e();
        if (cVarD == null || qVarE == null) {
            return;
        }
        long jC = aVar2.c();
        m mVar = new m();
        mVar.a(aVar2.b());
        mVar.b(jC);
        mVar.a(aVar2.i());
        JSONObject jSONObjectA = a(qVarE, oVar.b(), oVar.c(), cVarD);
        int i = cVarD.f476d;
        if (i > 0) {
            try {
                jSONObjectA.put("play_time", i);
            } catch (JSONException e2) {
                l.c("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.b.d.b.a aVar3 = new com.bytedance.sdk.openadsdk.b.d.b.a(qVarE, ac.a(qVarE), jSONObjectA, mVar);
        aVar3.a(aVar2.j());
        a(aVar3, "play_buffer");
    }
}
