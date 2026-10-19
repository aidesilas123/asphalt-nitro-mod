package com.bytedance.sdk.openadsdk.b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.r;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements com.bytedance.sdk.component.e.a.d.a.b {
    private static final Set<String> j = new HashSet(Arrays.asList("insight_log"));
    public final String a;
    protected final JSONObject b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1162g;
    private int h;
    private int i;
    private final AtomicBoolean k;
    private JSONObject l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private com.bytedance.sdk.openadsdk.b.b.a s;
    private String t;
    private String u;
    private int v;
    private String w;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdEvent.java */
    public static final class C0126a {
        public int a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f1163d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f1164e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f1165f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f1166g;
        private String h;
        private String i;
        private JSONObject j;
        private String k;
        private final int l;
        private String m;
        private com.bytedance.sdk.openadsdk.b.b.b n;
        private com.bytedance.sdk.openadsdk.b.b.a o;
        private final long p;
        private int q;
        private int r;
        private boolean s;

        public C0126a(long j, q qVar) {
            this.q = -1;
            this.r = -1;
            this.a = -1;
            if (qVar != null) {
                this.s = t.b(qVar);
                this.q = qVar.p();
                this.r = qVar.o();
                this.a = qVar.ad();
            }
            this.p = j;
            this.l = com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a());
        }

        public C0126a a(String str) {
            this.m = str;
            return this;
        }

        public C0126a a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.j = jSONObject;
            return this;
        }

        public void a(com.bytedance.sdk.openadsdk.b.b.a aVar) {
            this.o = aVar;
            final a aVar2 = new a(this);
            try {
                com.bytedance.sdk.openadsdk.b.b.b bVar = this.n;
                if (bVar != null) {
                    bVar.a(aVar2.b, this.p);
                } else {
                    new com.bytedance.sdk.openadsdk.b.b.c().a(aVar2.b, this.p);
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("AdEvent", th);
            }
            if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                aa.c(new com.bytedance.sdk.component.g.h("dispatchEvent") { // from class: com.bytedance.sdk.openadsdk.b.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.b.a.d.a(aVar2);
                    }
                });
            } else {
                com.bytedance.sdk.openadsdk.b.a.d.a(aVar2);
            }
        }

        public C0126a b(String str) {
            this.c = str;
            return this;
        }

        public C0126a c(String str) {
            this.f1163d = str;
            return this;
        }

        public C0126a d(String str) {
            this.f1164e = str;
            return this;
        }

        public C0126a e(String str) {
            this.f1165f = str;
            return this;
        }

        public C0126a f(String str) {
            this.h = str;
            return this;
        }

        public C0126a g(String str) {
            this.i = str;
            return this;
        }

        public C0126a h(String str) {
            this.f1166g = str;
            return this;
        }
    }

    a(C0126a c0126a) {
        this.f1161f = "adiff";
        this.k = new AtomicBoolean(false);
        this.l = new JSONObject();
        if (TextUtils.isEmpty(c0126a.b)) {
            this.a = r.a();
        } else {
            this.a = c0126a.b;
        }
        this.s = c0126a.o;
        this.u = c0126a.f1165f;
        this.m = c0126a.c;
        this.n = c0126a.f1163d;
        if (TextUtils.isEmpty(c0126a.f1164e)) {
            this.o = "app_union";
        } else {
            this.o = c0126a.f1164e;
        }
        this.t = c0126a.k;
        this.p = c0126a.h;
        this.r = c0126a.i;
        this.q = c0126a.f1166g;
        this.v = c0126a.l;
        this.w = c0126a.m;
        this.l = c0126a.j = c0126a.j != null ? c0126a.j : new JSONObject();
        JSONObject jSONObject = new JSONObject();
        this.b = jSONObject;
        if (!TextUtils.isEmpty(c0126a.m)) {
            try {
                jSONObject.put("app_log_url", c0126a.m);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.e("AdEvent", e2.getMessage());
            }
        }
        this.f1162g = c0126a.q;
        this.h = c0126a.r;
        this.i = c0126a.a;
        this.c = c0126a.s;
        this.f1160e = System.currentTimeMillis();
        f();
    }

    public a(String str, JSONObject jSONObject) {
        this.f1161f = "adiff";
        this.k = new AtomicBoolean(false);
        this.l = new JSONObject();
        this.a = str;
        this.b = jSONObject;
    }

    private static void a(JSONObject jSONObject, String str) {
        try {
            Set<String> set = j;
            if (!set.contains(str) && !set.contains(jSONObject.get("label"))) {
                jSONObject.putOpt("is_ad_event", "1");
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d("AdEvent", th);
        }
    }

    private boolean a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "0") || TextUtils.isEmpty(str3)) {
            return false;
        }
        str2.hashCode();
        switch (str2) {
        }
        return false;
    }

    private boolean b(String str) {
        str.hashCode();
        switch (str) {
            case "umeng":
            case "event_v1":
            case "event_v3":
            case "app_union":
                return true;
            default:
                return false;
        }
    }

    private void f() {
        JSONObject jSONObject = this.l;
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("value");
            String strOptString2 = this.l.optString("category");
            String strOptString3 = this.l.optString("log_extra");
            if (a(this.p, this.o, this.u)) {
                if (!TextUtils.isEmpty(strOptString) && TextUtils.equals(strOptString, "0")) {
                    return;
                }
                if (!TextUtils.isEmpty(strOptString2) && !b(strOptString2)) {
                    return;
                }
            } else {
                if ((TextUtils.isEmpty(strOptString) || TextUtils.equals(strOptString, "0")) && (TextUtils.isEmpty(this.p) || TextUtils.equals(this.p, "0"))) {
                    return;
                }
                if ((TextUtils.isEmpty(this.o) || !b(this.o)) && (TextUtils.isEmpty(strOptString2) || !b(strOptString2))) {
                    return;
                }
                if (TextUtils.isEmpty(this.u) && TextUtils.isEmpty(strOptString3)) {
                    return;
                }
            }
        } else if (!a(this.p, this.o, this.u)) {
            return;
        }
        this.f1159d = com.bytedance.sdk.openadsdk.b.a.d.a.incrementAndGet();
    }

    private void g() throws JSONException {
        this.b.putOpt("app_log_url", this.w);
        this.b.putOpt("tag", this.m);
        this.b.putOpt("label", this.n);
        this.b.putOpt("category", this.o);
        if (!TextUtils.isEmpty(this.p)) {
            try {
                this.b.putOpt("value", Long.valueOf(Long.parseLong(this.p)));
            } catch (NumberFormatException unused) {
                this.b.putOpt("value", 0L);
            }
        }
        if (!TextUtils.isEmpty(this.r)) {
            try {
                this.b.putOpt("ext_value", Long.valueOf(Long.parseLong(this.r)));
            } catch (Exception unused2) {
            }
        }
        if (!TextUtils.isEmpty(this.u)) {
            this.b.putOpt("log_extra", this.u);
        }
        if (!TextUtils.isEmpty(this.t)) {
            try {
                this.b.putOpt("ua_policy", Integer.valueOf(Integer.parseInt(this.t)));
            } catch (NumberFormatException unused3) {
            }
        }
        a(this.b, this.n);
        try {
            this.b.putOpt("nt", Integer.valueOf(this.v));
        } catch (Exception unused4) {
        }
        Iterator<String> itKeys = this.l.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.b.putOpt(next, this.l.opt(next));
        }
    }

    @Override // com.bytedance.sdk.component.e.a.d.a.b
    public long a() {
        return this.f1160e;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a.b
    public JSONObject a(String str) {
        return c();
    }

    public JSONObject a(boolean z) {
        JSONObject jSONObjectC = c();
        try {
            if (!z) {
                JSONObject jSONObject = new JSONObject(jSONObjectC.toString());
                jSONObject.remove("app_log_url");
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(jSONObjectC.toString());
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("params");
            if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.remove("app_log_url");
            }
            return jSONObject2;
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("AdEvent", e2.getMessage());
            return jSONObjectC;
        }
    }

    @Override // com.bytedance.sdk.component.e.a.d.a.b
    public long b() {
        return this.f1159d;
    }

    public JSONObject c() {
        if (this.k.get()) {
            return this.b;
        }
        try {
            g();
            com.bytedance.sdk.openadsdk.b.b.a aVar = this.s;
            if (aVar != null) {
                aVar.a(this.b);
            }
            if (this.b.has("ad_extra_data")) {
                Object objOpt = this.b.opt("ad_extra_data");
                if (objOpt != null) {
                    try {
                        if (objOpt instanceof JSONObject) {
                            com.bytedance.sdk.component.utils.l.e("AdEvent", "ad_extra_data is JSONObject");
                            if (!((JSONObject) objOpt).has("adiff")) {
                                ((JSONObject) objOpt).put("adiff", this.a);
                            }
                            if (this.c) {
                                if (!((JSONObject) objOpt).has("interaction_method")) {
                                    ((JSONObject) objOpt).put("interaction_method", this.f1162g);
                                }
                                if (!((JSONObject) objOpt).has("real_interaction_method")) {
                                    ((JSONObject) objOpt).put("real_interaction_method", this.h);
                                }
                                if (!((JSONObject) objOpt).has("image_mode")) {
                                    ((JSONObject) objOpt).put("image_mode", this.i);
                                }
                            }
                            this.b.put("ad_extra_data", objOpt.toString());
                        } else if (objOpt instanceof String) {
                            JSONObject jSONObject = new JSONObject((String) objOpt);
                            if (!jSONObject.has("adiff")) {
                                jSONObject.put("adiff", this.a);
                            }
                            if (this.c) {
                                if (!jSONObject.has("interaction_method")) {
                                    jSONObject.put("interaction_method", this.f1162g);
                                }
                                if (!jSONObject.has("real_interaction_method")) {
                                    jSONObject.put("real_interaction_method", this.h);
                                }
                                if (!jSONObject.has("image_mode")) {
                                    jSONObject.put("image_mode", this.i);
                                }
                            }
                            this.b.put("ad_extra_data", jSONObject.toString());
                        }
                    } catch (JSONException e2) {
                        com.bytedance.sdk.component.utils.l.d("AdEvent", "json error", e2.getMessage());
                    }
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("adiff", this.a);
                    if (this.c) {
                        jSONObject2.put("interaction_method", this.f1162g);
                        jSONObject2.put("real_interaction_method", this.h);
                        jSONObject2.put("image_mode", this.i);
                    }
                    this.b.put("ad_extra_data", jSONObject2.toString());
                } catch (JSONException e3) {
                    com.bytedance.sdk.component.utils.l.d("AdEvent", "json error", e3.getMessage());
                }
            }
            this.k.set(true);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("AdEvent", th);
        }
        return this.b;
    }

    public String d() {
        return this.a;
    }

    public boolean e() {
        Set<String> setM;
        if (this.b == null || (setM = com.bytedance.sdk.openadsdk.core.o.d().m()) == null) {
            return false;
        }
        String strOptString = this.b.optString("label");
        if (!TextUtils.isEmpty(strOptString)) {
            return setM.contains(strOptString);
        }
        if (TextUtils.isEmpty(this.n)) {
            return false;
        }
        return setM.contains(this.n);
    }
}
