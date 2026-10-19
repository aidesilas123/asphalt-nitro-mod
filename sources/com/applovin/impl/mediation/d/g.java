package com.applovin.impl.mediation.d;

import com.applovin.impl.sdk.e.y;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g extends y {
    private final com.applovin.impl.mediation.b.c aut;

    public g(com.applovin.impl.mediation.b.c cVar, com.applovin.impl.sdk.n nVar) {
        super("TaskReportMaxReward", nVar);
        this.aut = cVar;
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void gu(int i) {
        super.gu(i);
        if (x.Fn()) {
            this.logger.f(this.tag, "Failed to report reward for mediated ad: " + this.aut + " - error code: " + i);
        }
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void x(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.aut.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.aut.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.aut.yG());
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

    @Override // com.applovin.impl.sdk.e.y
    protected void y(JSONObject jSONObject) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Reported reward successfully for mediated ad: " + this.aut);
        }
    }

    @Override // com.applovin.impl.sdk.e.y
    protected com.applovin.impl.sdk.b.c yh() {
        return this.aut.yh();
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected String zL() {
        return "2.0/mcr";
    }

    @Override // com.applovin.impl.sdk.e.y
    protected void zM() {
        if (x.Fn()) {
            this.logger.i(this.tag, "No reward result was found for mediated ad: " + this.aut);
        }
    }
}
