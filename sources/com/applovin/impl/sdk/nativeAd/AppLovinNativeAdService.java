package com.applovin.impl.sdk.nativeAd;

import android.text.TextUtils;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.ad.c;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.m;
import com.applovin.impl.sdk.x;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinNativeAdService {
    private static final String TAG = "AppLovinNativeAdService";
    private final x logger;
    private final n sdk;

    public AppLovinNativeAdService(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
    }

    public void loadNextAdForAdToken(String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        String strTrim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(strTrim)) {
            x.H(TAG, "Empty ad token");
            m.a(appLovinNativeAdLoadListener, new AppLovinError(-8, "Empty ad token"));
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = new com.applovin.impl.sdk.ad.c(strTrim, this.sdk);
        if (cVar.FP() == c.a.REGULAR) {
            if (x.Fn()) {
                this.logger.f(TAG, "Loading next ad for token: " + cVar);
            }
            this.sdk.BO().a(new b(cVar, appLovinNativeAdLoadListener, this.sdk), q.b.MAIN);
            return;
        }
        if (cVar.FP() != c.a.AD_RESPONSE_JSON) {
            AppLovinError appLovinError = new AppLovinError(-8, "Invalid token type");
            x.H(TAG, "Invalid token type");
            m.a(appLovinNativeAdLoadListener, appLovinError);
            return;
        }
        JSONObject jSONObjectFR = cVar.FR();
        if (jSONObjectFR == null) {
            String str2 = "Unable to retrieve ad response JSON from token: " + cVar.mQ();
            AppLovinError appLovinError2 = new AppLovinError(-8, str2);
            x.H(TAG, str2);
            m.a(appLovinNativeAdLoadListener, appLovinError2);
            return;
        }
        com.applovin.impl.sdk.utils.i.j(jSONObjectFR, this.sdk);
        com.applovin.impl.sdk.utils.i.i(jSONObjectFR, this.sdk);
        com.applovin.impl.sdk.utils.i.k(jSONObjectFR, this.sdk);
        if (JsonUtils.getJSONArray(jSONObjectFR, CampaignUnit.JSON_KEY_ADS, new JSONArray()).length() > 0) {
            if (x.Fn()) {
                this.logger.f(TAG, "Rendering ad for token: " + cVar);
            }
            this.sdk.BO().a(new d(jSONObjectFR, appLovinNativeAdLoadListener, this.sdk), q.b.MAIN);
            return;
        }
        if (x.Fn()) {
            this.logger.i(TAG, "No ad returned from the server for token: " + cVar);
        }
        m.a(appLovinNativeAdLoadListener, AppLovinError.NO_FILL);
    }
}
