package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.e.k;
import com.applovin.impl.sdk.n;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends k {
    private final AppLovinNativeAdLoadListener awg;

    public c(com.applovin.impl.sdk.ad.d dVar, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super(dVar, str, nVar);
        this.awg = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.sdk.e.k
    protected com.applovin.impl.sdk.e.d I(JSONObject jSONObject) {
        return new d(jSONObject, this.awg, this.sdk);
    }

    @Override // com.applovin.impl.sdk.e.k
    protected void e(int i, String str) {
        super.e(i, str);
        this.awg.onNativeAdLoadFailed(new AppLovinError(i, str));
    }

    @Override // com.applovin.impl.sdk.e.k
    protected String zC() {
        return com.applovin.impl.sdk.utils.i.I(this.sdk);
    }

    @Override // com.applovin.impl.sdk.e.k
    protected String zD() {
        return com.applovin.impl.sdk.utils.i.J(this.sdk);
    }
}
