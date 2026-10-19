package com.fyber.inneractive.sdk.metrics;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h implements g {
    public final Map<a, Long> a = new LinkedHashMap();
    public final Map<a, Long> b = new LinkedHashMap();
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2071d;

    public static class a {
        public final String a = UUID.randomUUID().toString();
        public final String b;

        public a(String str) {
            this.b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            return this.a.equals(((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public static JSONArray a(Map<a, Long> map) {
        JSONArray jSONArray = new JSONArray();
        for (a aVar : map.keySet()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("outcome", aVar.b);
                jSONObject.putOpt("time", map.get(aVar));
                jSONObject.putOpt("idx", Integer.valueOf(jSONArray.length()));
            } catch (JSONException unused) {
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.fyber.inneractive.sdk.metrics.g
    public void a() {
        this.f2071d = System.currentTimeMillis();
    }

    @Override // com.fyber.inneractive.sdk.metrics.g
    public void a(com.fyber.inneractive.sdk.response.e eVar, InneractiveAdRequest inneractiveAdRequest, s sVar) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayA = a(this.b);
        try {
            jSONObject.put("adl", jSONArrayA);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "adl", jSONArrayA);
        }
        JSONArray jSONArrayA2 = a(this.a);
        try {
            jSONObject.put("adml", jSONArrayA2);
        } catch (Exception unused2) {
            IAlog.e("Got exception adding param to json object: %s, %s", "adml", jSONArrayA2);
        }
        if (!TextUtils.isEmpty(null)) {
            try {
                jSONObject.put("dns_failed", (Object) null);
            } catch (Exception unused3) {
                IAlog.e("Got exception adding param to json object: %s, %s", "dns_failed", null);
            }
        }
        s.a aVar = new s.a(r.SDK_BIDDING_METRICS, inneractiveAdRequest, eVar, sVar.c());
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
    }

    @Override // com.fyber.inneractive.sdk.metrics.g
    public void a(String str) {
        this.b.put(new a(str), Long.valueOf(System.currentTimeMillis() - this.f2071d));
    }

    @Override // com.fyber.inneractive.sdk.metrics.g
    public void b() {
        this.c = System.currentTimeMillis();
    }

    @Override // com.fyber.inneractive.sdk.metrics.g
    public void b(String str) {
        this.a.put(new a(str), Long.valueOf(System.currentTimeMillis() - this.c));
    }
}
