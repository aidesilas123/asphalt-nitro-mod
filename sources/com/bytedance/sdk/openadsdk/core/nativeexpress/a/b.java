package com.bytedance.sdk.openadsdk.core.nativeexpress.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.a;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: TemplateUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static String a(q.a aVar) {
        return aVar != null ? aVar.i() : "";
    }

    public static String a(q qVar, String str) {
        List<n> listQ;
        if (qVar != null && (listQ = qVar.Q()) != null && listQ.size() > 0) {
            for (n nVar : listQ) {
                if (nVar != null && TextUtils.equals(str, nVar.a())) {
                    return nVar.g();
                }
            }
        }
        return null;
    }

    public static Map<String, String> a(q qVar) {
        HashMap map = null;
        if (qVar == null) {
            return null;
        }
        List<n> listQ = qVar.Q();
        if (listQ != null && listQ.size() > 0) {
            map = new HashMap();
            for (n nVar : listQ) {
                if (nVar != null) {
                    map.put(nVar.a(), nVar.g());
                }
            }
        }
        return map;
    }

    public static JSONObject a(float f2, float f3, boolean z, @NonNull q qVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", f2);
            jSONObject2.put("height", f3);
            if (z) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            if (!(qVar instanceof r) || !((r) qVar).bw()) {
                jSONObject.put("creative", a(false, qVar));
                jSONObject.put("template_Plugin", b(qVar.I()));
                jSONObject.put("diff_template_Plugin", a(qVar.I()));
                return jSONObject;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject.put("choose_ui_data", jSONObject3);
            a.C0137a c0137aBx = ((r) qVar).bx();
            JSONObject jSONObjectB = c0137aBx.b();
            if (TextUtils.isEmpty(c0137aBx.h())) {
                jSONObjectB.put("data", b(c0137aBx));
            }
            jSONObject3.put("tpl_info", jSONObjectB);
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("creatives", jSONArray);
            for (q qVar2 : ((r) qVar).by()) {
                JSONObject jSONObjectA = a(false, qVar2);
                if (jSONObjectA != null) {
                    jSONObjectA.put("template_Plugin", b(qVar2.I()));
                    jSONObjectA.put("diff_template_Plugin", a(qVar2.I()));
                    jSONArray.put(jSONObjectA);
                }
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject a(boolean z, @NonNull q qVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", qVar.X());
            if (qVar.N() != null) {
                if (qVar.N() == null || TextUtils.isEmpty(qVar.N().a())) {
                    jSONObject.put("icon", "");
                } else {
                    jSONObject.put("icon", qVar.N().a());
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (qVar.Q() != null) {
                for (int i = 0; i < qVar.Q().size(); i++) {
                    n nVar = qVar.Q().get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", nVar.c());
                    jSONObject2.put("width", nVar.b());
                    jSONObject2.put("url", nVar.a());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", qVar.ad());
            jSONObject.put("interaction_type", qVar.M());
            jSONObject.put("interaction_method", qVar.p());
            jSONObject.put("is_compliance_template", a());
            jSONObject.put("title", qVar.V());
            jSONObject.put("description", qVar.W());
            jSONObject.put(ShareConstants.FEED_SOURCE_PARAM, qVar.L());
            if (qVar.aa() != null) {
                jSONObject.put("comment_num", qVar.aa().e());
                jSONObject.put("score", qVar.aa().d());
                jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, qVar.aa().f());
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, qVar.aa().g());
            }
            com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
            if (bVarK != null) {
                JSONObject jSONObjectR = bVarK.r();
                jSONObjectR.put("video_duration", bVarK.f() * ((double) bVarK.w()));
                jSONObject.put("video", jSONObjectR);
            }
            if (qVar.I() != null) {
                jSONObject.put("dynamic_creative", qVar.I().j());
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean a() {
        return true;
    }

    private static String b(q.a aVar) {
        if (aVar == null) {
            return "";
        }
        String strH = aVar.h();
        return (!TextUtils.isEmpty(strH) || com.bytedance.sdk.component.adexpress.a.b.a.c(aVar.e()) == null) ? strH : com.bytedance.sdk.component.adexpress.a.b.a.c(aVar.e()).e();
    }
}
