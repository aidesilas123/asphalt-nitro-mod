package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.n;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends c {
    private final com.applovin.impl.sdk.ad.c aHk;

    public b(com.applovin.impl.sdk.ad.c cVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super(com.applovin.impl.sdk.ad.d.cQ("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, nVar);
        this.aHk = cVar;
    }

    @Override // com.applovin.impl.sdk.e.k
    protected Map<String, String> HI() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.aHk.mQ());
        map.put("adtoken_prefix", this.aHk.FQ());
        return map;
    }
}
