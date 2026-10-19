package com.bytedance.sdk.openadsdk.core.g;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastAdConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    b b;
    c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1499g;
    private double h;
    private int i;
    private int j;
    private String k;
    private String o;
    d a = new d(this);
    private final Set<j> l = new HashSet();
    private String m = "VAST_ACTION_BUTTON";
    private boolean n = false;

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.a.a(jSONObject.optJSONObject("videoTrackers"));
        aVar.b = b.a(jSONObject.optJSONObject("vastIcon"));
        aVar.c = c.b(jSONObject.optJSONObject("endCard"));
        aVar.f1496d = jSONObject.optString("title");
        aVar.f1497e = jSONObject.optString("description");
        aVar.f1498f = jSONObject.optString("clickThroughUrl");
        aVar.f1499g = jSONObject.optString("videoUrl");
        aVar.h = jSONObject.optDouble("videDuration");
        aVar.k = jSONObject.optString("tag");
        aVar.i = jSONObject.optInt("videoWidth");
        aVar.i = jSONObject.optInt("videoHeight");
        aVar.l.addAll(j.a(jSONObject.optJSONArray("viewabilityVendor")));
        return aVar;
    }

    private JSONArray p() {
        JSONArray jSONArray = new JSONArray();
        for (j jVar : this.l) {
            if (jVar != null) {
                jSONArray.put(jVar.d());
            }
        }
        return jSONArray;
    }

    public d a() {
        return this.a;
    }

    public void a(double d2) {
        this.h = d2;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(b bVar) {
        if (bVar != null) {
            bVar.a(this.f1499g);
        }
        this.b = bVar;
    }

    public void a(c cVar) {
        if (cVar != null) {
            cVar.a(this.f1499g);
        }
        this.c = cVar;
    }

    public void a(q qVar) {
        this.a.a(qVar);
        b bVar = this.b;
        if (bVar != null) {
            bVar.a(qVar);
        }
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(qVar);
        }
    }

    public void a(String str) {
        this.f1496d = str;
    }

    public void a(Set<j> set) {
        if (set == null || set.size() <= 0) {
            return;
        }
        this.l.addAll(set);
    }

    public b b() {
        return this.b;
    }

    public void b(int i) {
        this.j = i;
    }

    public void b(String str) {
        this.f1497e = str;
    }

    public c c() {
        return this.c;
    }

    public void c(String str) {
        this.f1498f = str;
    }

    public String d() {
        return this.f1496d;
    }

    public void d(String str) {
        this.f1499g = str;
    }

    public String e() {
        return this.f1497e;
    }

    public void e(String str) {
        this.m = str;
    }

    public String f() {
        return this.f1498f;
    }

    public void f(String str) {
        this.k = str;
        this.a.a(str);
    }

    public String g() {
        return this.f1499g;
    }

    public void g(String str) {
        this.o = str;
    }

    public double h() {
        return this.h;
    }

    public String i() {
        c cVar;
        String str = this.f1498f;
        if (!TextUtils.isEmpty(this.o)) {
            String str2 = this.o;
            this.o = null;
            return str2;
        }
        String str3 = this.m;
        str3.hashCode();
        if (str3.equals("VAST_ICON")) {
            b bVar = this.b;
            if (bVar != null && !TextUtils.isEmpty(bVar.h)) {
                str = this.b.h;
            }
        } else if (str3.equals("VAST_END_CARD") && (cVar = this.c) != null && !TextUtils.isEmpty(cVar.h)) {
            str = this.c.h;
        }
        this.m = "VAST_ACTION_BUTTON";
        return str;
    }

    public JSONObject j() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("videoTrackers", this.a.a());
        b bVar = this.b;
        if (bVar != null) {
            jSONObject.put("vastIcon", bVar.a());
        }
        c cVar = this.c;
        if (cVar != null) {
            jSONObject.put("endCard", cVar.a());
        }
        jSONObject.put("title", this.f1496d);
        jSONObject.put("description", this.f1497e);
        jSONObject.put("clickThroughUrl", this.f1498f);
        jSONObject.put("videoUrl", this.f1499g);
        jSONObject.put("videDuration", this.h);
        jSONObject.put("tag", this.k);
        jSONObject.put("videoWidth", this.i);
        jSONObject.put("videoHeight", this.j);
        jSONObject.put("viewabilityVendor", p());
        return jSONObject;
    }

    public String k() {
        return this.k;
    }

    public int l() {
        return this.i;
    }

    public int m() {
        return this.j;
    }

    public Set<j> n() {
        return this.l;
    }

    public void o() {
        this.n = true;
    }
}
