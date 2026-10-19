package com.fyber.inneractive.sdk.config.global;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class s {
    public Map<Class<? extends com.fyber.inneractive.sdk.config.global.features.g>, com.fyber.inneractive.sdk.config.global.features.g> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public JSONArray f1963d;
    public String b = "";
    public final r a = new r();

    public s() {
        e();
        Map<Class<? extends com.fyber.inneractive.sdk.config.global.features.g>, com.fyber.inneractive.sdk.config.global.features.g> mapA = a();
        this.c = mapA;
        IAlog.a("%s: created. Supported features: %s", "SupportedFeaturesProvider", mapA);
    }

    public static s b() {
        boolean zF = f();
        s sVar = new s();
        if (zF) {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            iAConfigManager.L.a("", true);
            iAConfigManager.E.a(iAConfigManager.L);
        }
        return sVar;
    }

    public static boolean f() {
        int i = com.fyber.inneractive.sdk.config.f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.featuresConfig");
        if (TextUtils.isEmpty(property)) {
            return false;
        }
        try {
            IAConfigManager.M.z.a = l.a(new JSONObject(property));
            return true;
        } catch (Exception unused) {
            IAlog.a("failed parsing local features json", new Object[0]);
            return false;
        }
    }

    public <T extends com.fyber.inneractive.sdk.config.global.features.g> T a(Class<T> cls) {
        if (this.c.containsKey(cls)) {
            T t = (T) this.c.get(cls);
            if (cls.isInstance(t)) {
                return t;
            }
        }
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            IAlog.a("Couldn't create a feature for %s", e2, cls.getName());
            return null;
        }
    }

    public Map<Class<? extends com.fyber.inneractive.sdk.config.global.features.g>, com.fyber.inneractive.sdk.config.global.features.g> a() {
        HashMap map = new HashMap();
        for (Map.Entry<Class<? extends com.fyber.inneractive.sdk.config.global.features.g>, com.fyber.inneractive.sdk.config.global.features.g> entry : this.c.entrySet()) {
            map.put(entry.getKey(), entry.getValue().b());
        }
        return map;
    }

    public void a(e eVar) {
        for (com.fyber.inneractive.sdk.config.global.features.g gVar : this.c.values()) {
            ArrayList arrayList = (ArrayList) gVar.c();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                b bVar = (b) arrayList.get(size);
                List<d> list = bVar.f1957d;
                if (list != null) {
                    Iterator<d> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        d next = it.next();
                        if (next.a(eVar)) {
                            gVar.c.remove(bVar.a);
                            gVar.f1960d.remove(bVar.a);
                            this.f1963d = null;
                            IAlog.a("%s: Experiment %s filtered! after response %s", "SupportedFeaturesProvider", bVar.a, next);
                            break;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0165 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 518
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.config.global.s.a(java.lang.String, boolean):void");
    }

    public JSONArray c() {
        JSONArray jSONArray = this.f1963d;
        if (jSONArray == null || jSONArray.length() == 0) {
            JSONArray jSONArrayA = g.a(this.c, false);
            this.f1963d = jSONArrayA;
            IAlog.a("%s: active experiments json set = %s", "SupportedFeaturesProvider", jSONArrayA);
        }
        return this.f1963d;
    }

    public JSONArray d() {
        JSONArray jSONArrayA = g.a(this.c, true);
        IAlog.a("%s: active experiments json set = %s", "SupportedFeaturesProvider", jSONArrayA);
        return jSONArrayA;
    }

    public void e() {
        this.a.getClass();
        HashMap map = new HashMap();
        map.put(com.fyber.inneractive.sdk.config.global.features.r.class, new com.fyber.inneractive.sdk.config.global.features.r());
        map.put(com.fyber.inneractive.sdk.config.global.features.c.class, new com.fyber.inneractive.sdk.config.global.features.c());
        map.put(com.fyber.inneractive.sdk.config.global.features.l.class, new com.fyber.inneractive.sdk.config.global.features.l());
        map.put(com.fyber.inneractive.sdk.config.global.features.e.class, new com.fyber.inneractive.sdk.config.global.features.e());
        map.put(com.fyber.inneractive.sdk.config.global.features.k.class, new com.fyber.inneractive.sdk.config.global.features.k());
        map.put(com.fyber.inneractive.sdk.config.global.features.d.class, new com.fyber.inneractive.sdk.config.global.features.d());
        map.put(com.fyber.inneractive.sdk.config.global.features.q.class, new com.fyber.inneractive.sdk.config.global.features.q());
        map.put(com.fyber.inneractive.sdk.config.global.features.h.class, new com.fyber.inneractive.sdk.config.global.features.h());
        map.put(com.fyber.inneractive.sdk.config.global.features.i.class, new com.fyber.inneractive.sdk.config.global.features.i());
        map.put(com.fyber.inneractive.sdk.config.global.features.p.class, new com.fyber.inneractive.sdk.config.global.features.p());
        map.put(com.fyber.inneractive.sdk.config.global.features.n.class, new com.fyber.inneractive.sdk.config.global.features.n());
        map.put(com.fyber.inneractive.sdk.config.global.features.b.class, new com.fyber.inneractive.sdk.config.global.features.b());
        map.put(com.fyber.inneractive.sdk.config.global.features.m.class, new com.fyber.inneractive.sdk.config.global.features.m());
        map.put(com.fyber.inneractive.sdk.config.global.features.a.class, new com.fyber.inneractive.sdk.config.global.features.a());
        map.put(com.fyber.inneractive.sdk.config.global.features.f.class, new com.fyber.inneractive.sdk.config.global.features.f());
        map.put(com.fyber.inneractive.sdk.config.global.features.j.class, new com.fyber.inneractive.sdk.config.global.features.j());
        this.c = map;
        this.f1963d = null;
    }
}
