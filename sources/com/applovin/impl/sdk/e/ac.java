package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ac extends ad {
    private final AppLovinAdRewardListener aIY;
    private final com.applovin.impl.sdk.ad.e aiL;

    public ac(com.applovin.impl.sdk.ad.e eVar, AppLovinAdRewardListener appLovinAdRewardListener, com.applovin.impl.sdk.n nVar) {
        super("TaskValidateAppLovinReward", nVar);
        this.aiL = eVar;
        this.aIY = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.sdk.e.ad
    protected void b(com.applovin.impl.sdk.b.c cVar) {
        this.aiL.a(cVar);
        String strJC = cVar.JC();
        Map<String, String> mapJB = cVar.JB();
        if (strJC.equals("accepted")) {
            this.aIY.userRewardVerified(this.aiL, mapJB);
            return;
        }
        if (strJC.equals("quota_exceeded")) {
            this.aIY.userOverQuota(this.aiL, mapJB);
        } else if (strJC.equals("rejected")) {
            this.aIY.userRewardRejected(this.aiL, mapJB);
        } else {
            this.aIY.validationRequestFailed(this.aiL, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void gu(int i) {
        String str;
        super.gu(i);
        if (i < 400 || i >= 500) {
            this.aIY.validationRequestFailed(this.aiL, i);
            str = "network_timeout";
        } else {
            this.aIY.userRewardRejected(this.aiL, Collections.emptyMap());
            str = "rejected";
        }
        this.aiL.a(com.applovin.impl.sdk.b.c.dn(str));
    }

    @Override // com.applovin.impl.sdk.e.aa
    protected void x(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.aiL.getAdZone().mQ());
        String clCode = this.aiL.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.sdk.e.aa
    public String zL() {
        return "2.0/vr";
    }

    @Override // com.applovin.impl.sdk.e.ad
    protected boolean zN() {
        return this.aiL.yf();
    }
}
