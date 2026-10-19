package com.bytedance.sdk.openadsdk.core.g.b;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.openadsdk.core.g.b.a;
import com.bytedance.sdk.openadsdk.core.g.b.b;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, b> f1514e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicBoolean f1515f = new AtomicBoolean(false);
    private final String a;
    private EnumC0135c b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1516d;

    /* JADX INFO: compiled from: VastTracker.java */
    public static class a {
        private final String a;
        private EnumC0135c b = EnumC0135c.TRACKING_URL;
        private boolean c = false;

        public a(String str) {
            this.a = str;
        }

        public a a(boolean z) {
            this.c = z;
            return this;
        }

        public c a() {
            return new c(this.a, this.b, Boolean.valueOf(this.c));
        }
    }

    /* JADX INFO: compiled from: VastTracker.java */
    public static class b {
        String a;
        q b;
        float c;

        public b(String str, q qVar) {
            this(str, qVar, -1.0f);
        }

        public b(String str, q qVar, float f2) {
            this.a = str;
            this.b = qVar;
            this.c = f2;
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.g.b.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VastTracker.java */
    enum EnumC0135c {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    static {
        v.a(new v.a() { // from class: com.bytedance.sdk.openadsdk.core.g.b.c.1
            @Override // com.bytedance.sdk.component.utils.v.a
            public void a(Context context, Intent intent, boolean z, int i) {
                if (i == 0 || c.f1514e.size() <= 0) {
                    return;
                }
                c.b();
            }
        }, o.a());
    }

    protected c(String str, EnumC0135c enumC0135c, Boolean bool) {
        this.a = str;
        this.b = enumC0135c;
        this.c = bool.booleanValue();
    }

    public static List<String> a(@NonNull List<c> list, @Nullable com.bytedance.sdk.openadsdk.core.g.a.a aVar, @Nullable long j, @Nullable String str) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (c cVar : list) {
            if (cVar != null && (!cVar.e() || cVar.d())) {
                arrayList.add(cVar.c());
                cVar.h_();
            }
        }
        return new com.bytedance.sdk.openadsdk.core.g.c.c(arrayList).a(aVar).a(j).a(str).a();
    }

    public static List<c> a(JSONArray jSONArray) {
        return a(jSONArray, false);
    }

    public static List<c> a(JSONArray jSONArray, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String strOptString = jSONArray.optString(i);
                if (!TextUtils.isEmpty(strOptString)) {
                    arrayList.add(new a(strOptString).a(z).a());
                }
            }
        }
        return arrayList;
    }

    public static JSONArray a(List<c> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            jSONArray.put(list.get(i).c());
        }
        return jSONArray;
    }

    private static void a(final String str, final b bVar, final boolean z) {
        com.bytedance.sdk.component.f.b.b bVarC = com.bytedance.sdk.openadsdk.k.c.a().b().c();
        if (bVarC == null) {
            return;
        }
        bVarC.a(true);
        bVarC.a(str);
        bVarC.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.g.b.c.2
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar2) {
                String str2;
                boolean z2;
                b bVar3 = bVar;
                if (bVar3 == null || bVar3.b == null) {
                    return;
                }
                String str3 = null;
                if (bVar2 == null || !bVar2.f()) {
                    if (bVar2 != null) {
                        str3 = bVar2.a() + CertificateUtil.DELIMITER + bVar2.b();
                        if (!z && (bVar2.a() <= 300 || bVar2.a() >= 400)) {
                            c.f1514e.put(str, bVar);
                        }
                    }
                    str2 = str3;
                    z2 = false;
                } else {
                    str2 = null;
                    z2 = true;
                }
                c.b(z2, str2, ac.c(bVar.b.aS()), bVar, str, z);
                if (bVar2 == null || bVar2.a() != 200 || c.f1514e.size() <= 0) {
                    return;
                }
                c.b();
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                q qVar;
                b bVar2 = bVar;
                if (bVar2 != null && (qVar = bVar2.b) != null) {
                    c.b(false, iOException != null ? iOException.getMessage() : null, ac.c(qVar.aS()), bVar, str, z);
                }
                if (z || bVar == null) {
                    return;
                }
                c.f1514e.put(str, bVar);
            }
        });
    }

    public static void a(@NonNull List<c> list, @Nullable com.bytedance.sdk.openadsdk.core.g.a.a aVar, @Nullable long j, @Nullable String str, b bVar) {
        a(a(list, aVar, j, str), bVar);
    }

    public static void a(List<String> list, b bVar) {
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (!TextUtils.isEmpty(str)) {
                a(str, bVar, false);
            }
        }
    }

    public static List<com.bytedance.sdk.openadsdk.core.g.b.b> b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new b.a(jSONObjectOptJSONObject.optString(AppLovinEventTypes.USER_VIEWED_CONTENT), (float) jSONObjectOptJSONObject.optDouble("trackingFraction", 0.0d)).a());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        if (f1515f.compareAndSet(false, true)) {
            Map<String, b> map = f1514e;
            HashSet<Map.Entry> hashSet = new HashSet(map.entrySet());
            map.clear();
            for (Map.Entry entry : hashSet) {
                if (entry != null) {
                    a((String) entry.getKey(), (b) entry.getValue(), true);
                }
            }
            f1515f.set(false);
        }
    }

    public static void b(@NonNull List<c> list, @Nullable com.bytedance.sdk.openadsdk.core.g.a.a aVar, @Nullable long j, @Nullable String str) {
        a(list, aVar, j, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final boolean z, final String str, final String str2, final b bVar, final String str3, final boolean z2) {
        com.bytedance.sdk.openadsdk.b.c.a(new h("dsp_track_link_result") { // from class: com.bytedance.sdk.openadsdk.core.g.b.c.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("type", bVar.a);
                    jSONObject.put("success", z);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("description", str);
                    }
                    jSONObject.put("url", str3);
                    float f2 = bVar.c;
                    if (f2 >= 0.0f) {
                        jSONObject.put("progress", ((double) Math.round(f2 * 100.0f)) / 100.0d);
                    }
                    if (z2) {
                        jSONObject.put("retry", true);
                    }
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.b.c.b(bVar.b, str2, "dsp_track_link_result", jSONObject);
            }
        });
    }

    public static List<com.bytedance.sdk.openadsdk.core.g.b.a> c(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new a.C0134a(jSONObjectOptJSONObject.optString(AppLovinEventTypes.USER_VIEWED_CONTENT), jSONObjectOptJSONObject.optLong("trackingMilliseconds", 0L)).a());
                }
            }
        }
        return arrayList;
    }

    public String c() {
        return this.a;
    }

    public boolean d() {
        return this.c;
    }

    public boolean e() {
        return this.f1516d;
    }

    public void h_() {
        this.f1516d = true;
    }
}
