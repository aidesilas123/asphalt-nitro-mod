package com.bytedance.sdk.component.adexpress.dynamic.c;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.dynamic.c.d;
import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import com.json.qc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicLayoutInflater.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static HashMap<String, String> f746g;
    private JSONObject a;
    private JSONObject b;
    private com.bytedance.sdk.component.adexpress.dynamic.b.c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.b.d f749f;

    /* JADX INFO: compiled from: DynamicLayoutInflater.java */
    static class a {
        float a;
        float b;
        boolean c;

        public static a a(JSONObject jSONObject) {
            a aVar = new a();
            if (jSONObject != null) {
                aVar.a = (float) jSONObject.optDouble("width");
                aVar.b = (float) jSONObject.optDouble("height");
                aVar.c = jSONObject.optBoolean("isLandscape");
            }
            return aVar;
        }
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        f746g = map;
        map.put("subtitle", "description");
        f746g.put(ShareConstants.FEED_SOURCE_PARAM, "source|app.app_name");
        f746g.put("screenshot", "dynamic_creative.screenshot");
    }

    public e(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.a = jSONObject;
        this.b = jSONObject2;
        this.c = new com.bytedance.sdk.component.adexpress.dynamic.b.c(jSONObject2);
        this.f747d = a.a(jSONObject3);
        this.f749f = com.bytedance.sdk.component.adexpress.dynamic.b.d.a(jSONObject4);
    }

    private String a() {
        com.bytedance.sdk.component.adexpress.dynamic.b.c cVar = this.c;
        return cVar == null ? "" : String.valueOf(cVar.a("adx_name"));
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.c.b(str2)) {
                String strValueOf = String.valueOf(this.c.a(str2));
                if (!TextUtils.isEmpty(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.e eVar, int i) {
        int iLastIndexOf;
        if (i == 5 || i == 15 || i == 50 || i == 154) {
            eVar.a("video");
            String strA = h.a("video");
            eVar.e().t(strA);
            String strA2 = h.a("video", "clickArea");
            if (!TextUtils.isEmpty(strA2)) {
                eVar.e().o(strA2);
                eVar.g().o(strA2);
            }
            eVar.g().t(strA);
            eVar.b(strA);
            eVar.e().aG();
            return;
        }
        eVar.a("image");
        String strA3 = h.a("image");
        eVar.e().t(strA3);
        eVar.g().t(strA3);
        String strA4 = h.a("image", "clickArea");
        if (!TextUtils.isEmpty(strA4)) {
            eVar.e().o(strA4);
            eVar.g().o(strA4);
        }
        eVar.b(strA3);
        if (strA3 != null && (iLastIndexOf = strA3.lastIndexOf(".")) > 0) {
            String strSubstring = strA3.substring(0, iLastIndexOf);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("width", a(strSubstring + ".width"));
                jSONObject.put("height", a(strSubstring + ".height"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            eVar.c(jSONObject.toString());
        }
        eVar.e().aH();
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.f fVar) {
        if (fVar == null) {
            return;
        }
        String strB = fVar.B();
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            String strC = com.bytedance.sdk.component.adexpress.c.e.c(com.bytedance.sdk.component.adexpress.d.a());
            if ("zh".equals(strC)) {
                strC = "cn";
            }
            if (!TextUtils.isEmpty(strC) && fVar.f() != null) {
                String strOptString = fVar.f().optString(strC);
                if (!TextUtils.isEmpty(strOptString)) {
                    strB = strOptString;
                }
            }
        }
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        int iIndexOf = strB.indexOf("{{");
        int iIndexOf2 = strB.indexOf("}}");
        if (iIndexOf < 0 || iIndexOf2 < 0 || iIndexOf2 < iIndexOf) {
            fVar.l(strB);
            return;
        }
        String strA = a(strB.substring(iIndexOf + 2, iIndexOf2));
        StringBuilder sb = new StringBuilder(strB.substring(0, iIndexOf));
        if (!TextUtils.isEmpty(strA)) {
            sb.append(strA);
        }
        sb.append(strB.substring(iIndexOf2 + 2));
        fVar.l(sb.toString());
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        if (hVar == null) {
            return;
        }
        int iB = com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a()));
        a aVar = this.f747d;
        float fMin = aVar.c ? aVar.a : Math.min(aVar.a, iB);
        if (this.f747d.b == 0.0f) {
            hVar.e(fMin);
            hVar.j().e().j("auto");
            hVar.f(0.0f);
        } else {
            hVar.e(fMin);
            int iB2 = com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a()));
            a aVar2 = this.f747d;
            hVar.f(aVar2.c ? aVar2.b : Math.min(aVar2.b, iB2));
            hVar.j().e().j("fixed");
        }
    }

    public com.bytedance.sdk.component.adexpress.dynamic.b.h a(double d2, int i, double d3, String str, m mVar) {
        JSONObject jSONObject;
        this.c.a();
        try {
            jSONObject = new JSONObject(this.f749f.b);
        } catch (JSONException e2) {
            e2.printStackTrace();
            jSONObject = null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.b.h hVarA = a(c.a(this.a, jSONObject), (com.bytedance.sdk.component.adexpress.dynamic.b.h) null);
        a(hVarA);
        d dVar = new d(d2, i, d3, str, mVar);
        d.a aVar = new d.a();
        a aVar2 = this.f747d;
        aVar.a = aVar2.a;
        aVar.b = aVar2.b;
        aVar.c = 0.0f;
        dVar.a(aVar);
        dVar.a(hVarA, 0.0f, 0.0f);
        dVar.a();
        com.bytedance.sdk.component.adexpress.dynamic.b.b bVar = dVar.a;
        if (bVar.f721d == 65536.0f) {
            return null;
        }
        return bVar.f723f;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.b.h a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        String strOptString = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("id");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("values");
        h.a(strOptString, jSONObjectOptJSONObject);
        JSONObject jSONObjectA = h.a(strOptString, h.a(jSONObject.optJSONArray("sceneValues")), jSONObjectOptJSONObject);
        com.bytedance.sdk.component.adexpress.dynamic.b.h hVar = new com.bytedance.sdk.component.adexpress.dynamic.b.h();
        if (TextUtils.isEmpty(strOptString2)) {
            hVar.b(String.valueOf(hVar.hashCode()));
        } else {
            hVar.b(strOptString2);
        }
        if (jSONObjectOptJSONObject != null) {
            hVar.c((float) jSONObjectOptJSONObject.optDouble("x"));
            hVar.d((float) jSONObjectOptJSONObject.optDouble("y"));
            hVar.e((float) jSONObjectOptJSONObject.optDouble("width"));
            hVar.f((float) jSONObjectOptJSONObject.optDouble("height"));
            hVar.g(jSONObjectOptJSONObject.optInt("remainWidth"));
            com.bytedance.sdk.component.adexpress.dynamic.b.e eVar = new com.bytedance.sdk.component.adexpress.dynamic.b.e();
            eVar.a(strOptString);
            eVar.b(jSONObjectOptJSONObject.optString("data"));
            eVar.c(jSONObjectOptJSONObject.optString("dataExtraInfo"));
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarA = com.bytedance.sdk.component.adexpress.dynamic.b.f.a(jSONObjectOptJSONObject);
            eVar.a(fVarA);
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarA2 = com.bytedance.sdk.component.adexpress.dynamic.b.f.a(jSONObjectA);
            if (fVarA2 == null) {
                eVar.b(fVarA);
            } else {
                eVar.b(fVarA2);
            }
            a(fVarA);
            a(fVarA2);
            if (TextUtils.equals(strOptString, "video-image-budget") && (jSONObject2 = this.b) != null) {
                a(eVar, jSONObject2.optInt("image_mode"));
            }
            String strB = eVar.b();
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = eVar.e();
            if (f746g.containsKey(strB) && !fVarE.V()) {
                fVarE.t(f746g.get(strB));
            }
            String strC = fVarE.V() ? eVar.c() : a(eVar.c());
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                if (TextUtils.equals(strB, "star") || TextUtils.equals(strB, "text_star")) {
                    strC = a("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(strB, "score-count") || TextUtils.equals(strB, "score-count-type-1") || TextUtils.equals(strB, "score-count-type-2")) {
                    strC = a("dynamic_creative.comment_num_i18n|");
                }
                if (qc.y.equals(strB) && fVarA.az()) {
                    strC = a("image.0.url");
                }
            }
            if (TextUtils.isEmpty(a()) || !(TextUtils.equals("logo-union", strOptString) || TextUtils.equals("logo", strOptString))) {
                eVar.b(strC);
            } else {
                eVar.b(strC + "adx:" + a());
            }
            hVar.a(eVar);
        }
        return hVar;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.b.h a(JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("type");
        if (TextUtils.equals(strOptString, "custom-component-vessel")) {
            int iOptInt = jSONObject.optInt("componentId");
            if (this.f749f != null) {
                b bVar = new b();
                this.f748e = bVar;
                JSONObject jSONObjectA = bVar.a(this.f749f.a, iOptInt, jSONObject);
                if (jSONObjectA != null) {
                    jSONObject = jSONObjectA;
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.b.h hVarA = a(jSONObject);
        hVarA.a(hVar);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray == null) {
            hVarA.a((List<com.bytedance.sdk.component.adexpress.dynamic.b.h>) null);
            return hVarA;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i);
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                int iAf = TextUtils.equals(strOptString, "tag-group") ? hVarA.j().e().af() : jSONArrayOptJSONArray2.length();
                for (int i2 = 0; i2 < iAf; i2++) {
                    com.bytedance.sdk.component.adexpress.dynamic.b.h hVarA2 = a(jSONArrayOptJSONArray2.optJSONObject(i2), hVarA);
                    if (com.bytedance.sdk.component.adexpress.d.b() && "skip-with-time".equals(hVarA.j().b()) && !o2.h.T.equals(hVarA.u()) && !TextUtils.isEmpty(hVarA.u())) {
                        hVarA2.c(hVarA.u());
                    }
                    arrayList.add(hVarA2);
                    arrayList3.add(hVarA2);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            hVarA.a(arrayList);
        }
        if (arrayList2.size() > 0) {
            hVarA.b(arrayList2);
        }
        return hVarA;
    }
}
