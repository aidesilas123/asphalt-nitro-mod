package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class ad extends aa {
    protected ad(String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(JSONObject jSONObject) {
        com.applovin.impl.sdk.b.c cVarT = T(jSONObject);
        b(cVarT);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Pending reward handled: " + cVarT);
        }
    }

    private com.applovin.impl.sdk.b.c T(JSONObject jSONObject) {
        Map<String, String> mapEmptyMap;
        String string;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        com.applovin.impl.sdk.utils.i.j(jSONObject2, this.sdk);
        com.applovin.impl.sdk.utils.i.i(jSONObject, this.sdk);
        com.applovin.impl.sdk.utils.i.k(jSONObject, this.sdk);
        try {
            mapEmptyMap = JsonUtils.toStringMap((JSONObject) jSONObject2.get("params"));
        } catch (Throwable unused) {
            mapEmptyMap = Collections.emptyMap();
        }
        try {
            string = jSONObject2.getString("result");
        } catch (Throwable unused2) {
            string = "network_timeout";
        }
        return com.applovin.impl.sdk.b.c.e(string, mapEmptyMap);
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected int KN() {
        return ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aMf)).intValue();
    }

    protected abstract void b(com.applovin.impl.sdk.b.c cVar);

    @Override // java.lang.Runnable
    public void run() {
        a(KO(), new b.d<JSONObject>() { // from class: com.applovin.impl.sdk.e.ad.1
            @Override // com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                if (ad.this.zN()) {
                    com.applovin.impl.sdk.x xVar = ad.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        ad adVar = ad.this;
                        adVar.logger.i(adVar.tag, "Reward validation failed with error code " + i + " but task was cancelled already");
                        return;
                    }
                    return;
                }
                com.applovin.impl.sdk.x xVar2 = ad.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    ad adVar2 = ad.this;
                    adVar2.logger.i(adVar2.tag, "Reward validation failed with code " + i + " and error: " + str);
                }
                ad.this.gu(i);
            }

            @Override // com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                if (!ad.this.zN()) {
                    com.applovin.impl.sdk.x xVar = ad.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        ad adVar = ad.this;
                        adVar.logger.f(adVar.tag, "Reward validation succeeded with code " + i + " and response: " + jSONObject);
                    }
                    ad.this.S(jSONObject);
                    return;
                }
                com.applovin.impl.sdk.x xVar2 = ad.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    ad adVar2 = ad.this;
                    adVar2.logger.i(adVar2.tag, "Reward validation succeeded with code " + i + " but task was cancelled already");
                }
                com.applovin.impl.sdk.x xVar3 = ad.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    ad adVar3 = ad.this;
                    adVar3.logger.i(adVar3.tag, "Response: " + jSONObject);
                }
            }
        });
    }

    protected abstract boolean zN();
}
