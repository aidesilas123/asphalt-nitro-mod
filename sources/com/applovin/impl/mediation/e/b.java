package com.applovin.impl.mediation.e;

import com.applovin.impl.sdk.c.d;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.i;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends i {
    private static final String[] axg = {CampaignUnit.JSON_KEY_ADS, "settings", "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters", "ad_unit_signal_providers"};
    private static final String[] axh = {CampaignUnit.JSON_KEY_ADS, "settings", "signal_providers", "ad_unit_signal_providers"};

    public static String b(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.aJg), "1.0/mediate", nVar);
    }

    public static String c(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.aJh), "1.0/mediate", nVar);
    }

    public static String d(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.aJg), "1.0/mediate_debug", nVar);
    }

    public static void d(JSONObject jSONObject, n nVar) {
        if (JsonUtils.valueExists(jSONObject, "signal_providers")) {
            JSONObject jSONObjectShallowCopy = JsonUtils.shallowCopy(jSONObject);
            JsonUtils.removeObjectsForKeys(jSONObjectShallowCopy, axg);
            nVar.a(d.aRK, jSONObjectShallowCopy.toString());
            com.applovin.impl.mediation.d.b.p(jSONObjectShallowCopy);
        }
    }

    public static String e(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.aJh), "1.0/mediate_debug", nVar);
    }

    public static void e(JSONObject jSONObject, n nVar) {
        if (JsonUtils.valueExists(jSONObject, "ad_unit_signal_providers")) {
            com.applovin.impl.mediation.d.b.c(jSONObject, nVar);
        }
    }

    public static void f(JSONObject jSONObject, n nVar) {
        if (jSONObject.length() == 0) {
            return;
        }
        if (!JsonUtils.valueExists(jSONObject, "auto_init_adapters") && !JsonUtils.valueExists(jSONObject, "test_mode_auto_init_adapters")) {
            nVar.b(d.aRL);
            return;
        }
        JSONObject jSONObjectShallowCopy = JsonUtils.shallowCopy(jSONObject);
        JsonUtils.removeObjectsForKeys(jSONObjectShallowCopy, axh);
        nVar.a(d.aRL, jSONObjectShallowCopy.toString());
    }

    public static void z(JSONObject jSONObject) {
    }
}
