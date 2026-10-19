package com.applovin.impl.sdk.e;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o extends n {
    private final com.applovin.impl.sdk.ad.c aUk;

    public o(com.applovin.impl.sdk.ad.c cVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super(com.applovin.impl.sdk.ad.d.cQ("adtoken_zone"), appLovinAdLoadListener, "TaskFetchTokenAd", nVar);
        this.aUk = cVar;
    }

    @Override // com.applovin.impl.sdk.e.k
    protected Map<String, String> HI() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.aUk.mQ());
        map.put("adtoken_prefix", this.aUk.FQ());
        return map;
    }

    @Override // com.applovin.impl.sdk.e.k
    protected com.applovin.impl.sdk.ad.b getSource() {
        return com.applovin.impl.sdk.ad.b.REGULAR_AD_TOKEN;
    }
}
