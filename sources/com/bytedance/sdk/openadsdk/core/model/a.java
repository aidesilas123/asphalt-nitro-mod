package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private String a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C0137a f1549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1550e;
    private String h;
    private long i;
    private boolean j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<q> f1551f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<g> f1552g = new ArrayList();
    private volatile boolean k = false;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.model.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdInfo.java */
    public static class C0137a extends q.a {
        private int a;

        public static C0137a a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0137a c0137a = new C0137a();
            c0137a.b(jSONObject.optString("id"));
            c0137a.c(jSONObject.optString("md5"));
            c0137a.d(jSONObject.optString("url"));
            c0137a.e(jSONObject.optString("data"));
            c0137a.f(jSONObject.optString("diff_data"));
            c0137a.a(jSONObject.optString("version"));
            c0137a.g(jSONObject.optString("dynamic_creative"));
            c0137a.a(jSONObject.optInt("count_down_time"));
            if (a(c0137a)) {
                return c0137a;
            }
            return null;
        }

        private static boolean a(C0137a c0137a) {
            if (c0137a == null || TextUtils.isEmpty(c0137a.e())) {
                return false;
            }
            return !TextUtils.isEmpty(c0137a.g());
        }

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }

        public JSONObject b() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", e());
                jSONObject.put("md5", f());
                jSONObject.put("url", g());
                jSONObject.put("data", h());
                jSONObject.put("diff_data", i());
                jSONObject.put("version", d());
                jSONObject.put("dynamic_creative", j());
                jSONObject.put("count_down_time", a());
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static Map<String, q> a(a aVar) {
        if (aVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (q qVar : aVar.c()) {
            if (!TextUtils.isEmpty(qVar.af())) {
                map.put(qVar.af(), qVar);
            }
        }
        if (map.size() != 0) {
            return map;
        }
        return null;
    }

    public static a b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            a aVar = new a();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("choose_ui_data");
            if (jSONObjectOptJSONObject != null) {
                aVar.a(jSONObjectOptJSONObject);
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            if (jSONArrayOptJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(com.bytedance.sdk.openadsdk.core.b.a(jSONArrayOptJSONArray.optJSONObject(i)));
                }
                aVar.a(arrayList);
            }
            aVar.a(jSONObject.optBoolean("is_choose_ad_original", false));
            return aVar;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("AdInfo", "fromJson: ", th);
            return null;
        }
    }

    public String a() {
        q qVarE = e();
        return qVarE != null ? qVarE.bc() : "";
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(long j) {
        this.i = j;
    }

    public void a(C0137a c0137a) {
        this.f1549d = c0137a;
        if (c0137a == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.a.b.a.a(q.a.a(c0137a, ""));
    }

    public void a(g gVar) {
        this.f1552g.add(gVar);
    }

    public void a(q qVar) {
        this.f1551f.add(qVar);
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(List<q> list) {
        this.f1551f = list;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        a(C0137a.a(jSONObject.optJSONObject("tpl_info")));
    }

    public void a(boolean z) {
        this.j = z;
    }

    public int b() {
        return this.b;
    }

    public void b(String str) {
        this.c = str;
    }

    public List<q> c() {
        return this.f1551f;
    }

    public void c(String str) {
        this.h = str;
    }

    public boolean d() {
        List<q> list = this.f1551f;
        return list != null && list.size() > 0;
    }

    public q e() {
        if (this.f1551f.size() > 0) {
            return this.f1551f.get(0);
        }
        return null;
    }

    public boolean f() {
        if (h() == null || c() == null || c().size() <= 1) {
            this.f1550e = false;
            a((C0137a) null);
        } else {
            this.f1550e = true;
        }
        return this.f1550e;
    }

    public boolean g() {
        return this.j;
    }

    public C0137a h() {
        return this.f1549d;
    }

    public boolean i() {
        return this.k;
    }

    public void j() {
        this.k = false;
    }

    @Nullable
    public JSONObject k() {
        try {
            JSONObject jSONObject = new JSONObject();
            C0137a c0137aH = h();
            if (c0137aH != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObjectB = c0137aH.b();
                if (jSONObjectB != null) {
                    jSONObject2.put("tpl_info", jSONObjectB);
                    jSONObject.put("choose_ui_data", jSONObject2);
                }
            }
            List<q> list = this.f1551f;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < this.f1551f.size(); i++) {
                    jSONArray.put(this.f1551f.get(i).ao());
                }
                jSONObject.put("creatives", jSONArray);
            }
            jSONObject.put("is_choose_ad_original", this.j);
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("AdInfo", "toJsonObj: ", th);
            return null;
        }
    }
}
