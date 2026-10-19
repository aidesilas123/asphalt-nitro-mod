package com.applovin.impl.mediation.d;

import com.applovin.impl.sdk.e.ad;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends ad {
    private final com.applovin.impl.mediation.b.c aut;

    public h(com.applovin.impl.mediation.b.c cVar, com.applovin.impl.sdk.n nVar) {
        super("TaskValidateMaxReward", nVar);
        this.aut = cVar;
    }

    @Override // com.applovin.impl.sdk.e.ad
    protected void b(com.applovin.impl.sdk.b.c cVar) {
        this.aut.a(cVar);
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void gu(int i) {
        super.gu(i);
        this.aut.a(com.applovin.impl.sdk.b.c.dn((i < 400 || i >= 500) ? "network_timeout" : "rejected"));
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void x(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.aut.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.aut.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.aut.yG());
        JsonUtils.putString(jSONObject, "ad_format", this.aut.getFormat().getLabel());
        String strYe = this.aut.ye();
        if (!StringUtils.isValidString(strYe)) {
            strYe = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", strYe);
        String strXs = this.aut.xs();
        if (!StringUtils.isValidString(strXs)) {
            strXs = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", strXs);
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected String zL() {
        return "2.0/mvr";
    }

    @Override // com.applovin.impl.sdk.e.ad
    protected boolean zN() {
        return this.aut.yf();
    }
}
