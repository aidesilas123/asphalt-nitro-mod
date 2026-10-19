package com.bytedance.sdk.component.adexpress.dynamic.b;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicLayoutUnit.java */
/* JADX INFO: loaded from: classes.dex */
public class h {
    private String a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f738g;
    private float h;
    private e i;
    private List<h> j;
    private h k;
    private List<List<h>> l;
    private String m;
    private Map<Integer, String> n = new HashMap();

    public String a() {
        return this.m;
    }

    public String a(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.i.b());
        sb.append(CertificateUtil.DELIMITER);
        sb.append(this.a);
        if (this.i.e() != null) {
            sb.append(CertificateUtil.DELIMITER);
            sb.append(this.i.e().aw());
        }
        sb.append(CertificateUtil.DELIMITER);
        sb.append(i);
        return sb.toString();
    }

    public void a(float f2) {
        this.f735d = f2;
    }

    public void a(e eVar) {
        this.i = eVar;
    }

    public void a(h hVar) {
        this.k = hVar;
    }

    public void a(String str) {
        this.m = str;
    }

    public void a(List<h> list) {
        this.j = list;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    this.n.put(Integer.valueOf(jSONObjectOptJSONObject.optInt("id")), jSONObjectOptJSONObject.optString("value"));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public Map<Integer, String> b() {
        return this.n;
    }

    public void b(float f2) {
        this.f736e = f2;
    }

    public void b(String str) {
        this.a = str;
    }

    public void b(List<List<h>> list) {
        this.l = list;
    }

    public String c() {
        return this.a;
    }

    public void c(float f2) {
        this.b = f2;
    }

    public void c(String str) {
        this.i.e().f(str);
    }

    public float d() {
        return this.f735d;
    }

    public void d(float f2) {
        this.c = f2;
    }

    public float e() {
        return this.f736e;
    }

    public void e(float f2) {
        this.f737f = f2;
    }

    public float f() {
        return this.b;
    }

    public void f(float f2) {
        this.f738g = f2;
    }

    public float g() {
        return this.c;
    }

    public void g(float f2) {
        this.h = f2;
    }

    public float h() {
        return this.f737f;
    }

    public float i() {
        return this.f738g;
    }

    public e j() {
        return this.i;
    }

    public List<h> k() {
        return this.j;
    }

    public h l() {
        return this.k;
    }

    public int m() {
        f fVarE = this.i.e();
        return fVarE.R() + fVarE.S();
    }

    public int n() {
        f fVarE = this.i.e();
        return fVarE.P() + fVarE.Q();
    }

    public float o() {
        f fVarE = this.i.e();
        return m() + fVarE.o() + fVarE.p() + (fVarE.l() * 2.0f);
    }

    public float p() {
        f fVarE = this.i.e();
        return n() + fVarE.q() + fVarE.n() + (fVarE.l() * 2.0f);
    }

    public List<List<h>> q() {
        return this.l;
    }

    public boolean r() {
        List<h> list = this.j;
        return list == null || list.size() <= 0;
    }

    public void s() {
        List<List<h>> list = this.l;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<h> list2 : this.l) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.l = arrayList;
    }

    public boolean t() {
        return TextUtils.equals(this.i.e().A(), "flex");
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.a + "', x=" + this.b + ", y=" + this.c + ", width=" + this.f737f + ", height=" + this.f738g + ", remainWidth=" + this.h + ", rootBrick=" + this.i + ", childrenBrickUnits=" + this.j + '}';
    }

    public String u() {
        return this.i.e().w();
    }

    public boolean v() {
        return this.i.e().al() < 0 || this.i.e().am() < 0 || this.i.e().aj() < 0 || this.i.e().ak() < 0;
    }
}
