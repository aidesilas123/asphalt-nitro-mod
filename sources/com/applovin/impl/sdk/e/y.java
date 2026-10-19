package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class y extends aa {
    protected y(String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
    }

    private JSONObject c(com.applovin.impl.sdk.b.c cVar) {
        JSONObject jSONObjectKO = KO();
        JsonUtils.putString(jSONObjectKO, "result", cVar.JC());
        Map<String, String> mapJB = cVar.JB();
        if (mapJB != null) {
            JsonUtils.putJSONObject(jSONObjectKO, "params", new JSONObject(mapJB));
        }
        return jSONObjectKO;
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected int KN() {
        return ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aMg)).intValue();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.b.c cVarYh = yh();
        if (cVarYh == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Pending reward not found");
            }
            zM();
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Reporting pending reward: " + cVarYh + "...");
        }
        a(c(cVarYh), new b.d<JSONObject>() { // from class: com.applovin.impl.sdk.e.y.1
            @Override // com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                y.this.gu(i);
            }

            @Override // com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                y.this.y(jSONObject);
            }
        });
    }

    protected abstract void y(JSONObject jSONObject);

    protected abstract com.applovin.impl.sdk.b.c yh();

    protected abstract void zM();
}
