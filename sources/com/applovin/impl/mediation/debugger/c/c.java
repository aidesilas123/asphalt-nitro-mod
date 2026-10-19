package com.applovin.impl.mediation.debugger.c;

import com.applovin.impl.sdk.e.d;
import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.d;
import com.applovin.impl.sdk.utils.p;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.json.v4;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends d {
    private final b.d<JSONObject> apS;

    public c(b.d<JSONObject> dVar, n nVar) {
        super("TaskFetchMediationDebuggerInfo", nVar, true);
        this.apS = dVar;
    }

    private JSONObject vS() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJsonArrayIfValid(jSONObject, "installed_mediation_adapters", com.applovin.impl.mediation.e.c.f(this.sdk));
        d.a aVarDM = this.sdk.BV() != null ? this.sdk.BU().DM() : this.sdk.BS().Di();
        JsonUtils.putStringIfValid(jSONObject, "dnt_code", aVarDM.KS().KT());
        Boolean boolB = com.applovin.impl.privacy.a.zO().B(rQ());
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOB)).booleanValue() && !Boolean.TRUE.equals(boolB)) {
            JsonUtils.putStringIfValid(jSONObject, "idfa", aVarDM.KR());
        }
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, String> mapVR = vR();
        JSONObject jSONObjectVS = vS();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQb)).booleanValue() || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
            JsonUtils.putAll(jSONObjectVS, mapVR);
            mapVR = null;
        }
        w<JSONObject> wVar = new w<JSONObject>(com.applovin.impl.sdk.network.c.D(this.sdk).cX("POST").cW(com.applovin.impl.mediation.e.b.d(this.sdk)).cY(com.applovin.impl.mediation.e.b.e(this.sdk)).k(mapVR).K(jSONObjectVS).ad(new JSONObject()).gF(((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJk)).intValue()).a(p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPS)).intValue())).Ig(), this.sdk, Kh()) { // from class: com.applovin.impl.mediation.debugger.c.c.1
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                c.this.apS.a(i, str, jSONObject);
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                c.this.apS.d(jSONObject, i);
            }
        };
        wVar.e(com.applovin.impl.sdk.c.a.aJg);
        wVar.f(com.applovin.impl.sdk.c.a.aJh);
        this.sdk.BO().b(wVar);
    }

    protected Map<String, String> vR() {
        Map<String, Object> mapDb;
        Map<String, Object> mapCT;
        HashMap map = new HashMap();
        map.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
        }
        if (this.sdk.BV() != null) {
            mapDb = this.sdk.BV().DI();
            mapCT = this.sdk.BV().CT();
        } else {
            mapDb = this.sdk.BS().Db();
            mapCT = this.sdk.BS().CT();
        }
        map.put("package_name", String.valueOf(mapDb.get("package_name")));
        map.put("app_version", String.valueOf(mapDb.get("app_version")));
        map.put("platform", String.valueOf(mapCT.get("platform")));
        map.put(v4.x, String.valueOf(mapCT.get(v4.x)));
        return map;
    }
}
