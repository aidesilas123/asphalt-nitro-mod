package com.bytedance.sdk.component.adexpress.a.c;

import android.text.TextUtils;
import android.util.Pair;
import com.applovin.sdk.AppLovinEventTypes;
import com.json.o2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: TempPkgModel.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<C0101a> f657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f658e;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.a.c.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TempPkgModel.java */
    public static class C0101a {
        private String a;
        private String b;
        private int c;

        public String a() {
            return this.a;
        }

        public void a(int i) {
            this.c = i;
        }

        public void a(String str) {
            this.a = str;
        }

        public String b() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }

        public int c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0101a)) {
                return super.equals(obj);
            }
            String str = this.a;
            return str != null && str.equals(((C0101a) obj).a());
        }
    }

    /* JADX INFO: compiled from: TempPkgModel.java */
    public static class b {
        private String a;
        private String b;
        private List<Pair<String, String>> c;

        public String a() {
            return this.a;
        }

        public void a(String str) {
            this.a = str;
        }

        public void a(List<Pair<String, String>> list) {
            this.c = list;
        }

        public List<Pair<String, String>> b() {
            return this.c;
        }

        public void b(String str) {
            this.b = str;
        }
    }

    public static a a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.a(jSONObject.optString("name"));
        aVar.b(jSONObject.optString("version"));
        aVar.c(jSONObject.optString(o2.h.Z));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                C0101a c0101a = new C0101a();
                c0101a.a(jSONObjectOptJSONObject2.optString("url"));
                c0101a.b(jSONObjectOptJSONObject2.optString("md5"));
                c0101a.a(jSONObjectOptJSONObject2.optInt(AppLovinEventTypes.USER_COMPLETED_LEVEL));
                arrayList.add(c0101a);
            }
        }
        aVar.a(arrayList);
        if (jSONObject.has("resources_archive") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            b bVar = new b();
            bVar.a(jSONObjectOptJSONObject.optString("url"));
            bVar.b(jSONObjectOptJSONObject.optString("md5"));
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("map");
            if (jSONObjectOptJSONObject3 != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject3.keys();
                ArrayList arrayList2 = new ArrayList();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList2.add(new Pair<>(next, jSONObjectOptJSONObject3.optString(next)));
                }
                bVar.a(arrayList2);
            }
            aVar.a(bVar);
        }
        if (aVar.f()) {
            return aVar;
        }
        return null;
    }

    public static a d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return a(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public String a() {
        return this.a;
    }

    public void a(b bVar) {
        this.f658e = bVar;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(List<C0101a> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f657d = list;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public b d() {
        return this.f658e;
    }

    public List<C0101a> e() {
        if (this.f657d == null) {
            this.f657d = new ArrayList();
        }
        return this.f657d;
    }

    public boolean f() {
        return (TextUtils.isEmpty(c()) || TextUtils.isEmpty(b()) || TextUtils.isEmpty(a())) ? false : true;
    }

    public String g() {
        if (!f()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", a());
            jSONObject.putOpt("version", b());
            jSONObject.putOpt(o2.h.Z, c());
            JSONArray jSONArray = new JSONArray();
            if (e() != null) {
                for (C0101a c0101a : e()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0101a.a());
                    jSONObject2.putOpt("md5", c0101a.b());
                    jSONObject2.putOpt(AppLovinEventTypes.USER_COMPLETED_LEVEL, Integer.valueOf(c0101a.c()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            b bVarD = d();
            if (bVarD != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("url", bVarD.a);
                jSONObject3.put("md5", bVarD.b);
                JSONObject jSONObject4 = new JSONObject();
                List<Pair<String, String>> listB = bVarD.b();
                if (listB != null) {
                    for (Pair<String, String> pair : listB) {
                        jSONObject4.put((String) pair.first, pair.second);
                    }
                }
                jSONObject3.put("map", jSONObject4);
                jSONObject.putOpt("resources_archive", jSONObject3);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
