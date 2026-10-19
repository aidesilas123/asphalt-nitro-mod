package com.applovin.impl.mediation.c.a;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.c.d;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends d implements AppLovinAdLoadListener {
    private final String avR;
    private final AppLovinAdLoadListener avU;
    private String avV;
    private JSONObject avW;
    private JSONObject avX;
    private String avY;

    public b(JSONObject jSONObject, MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, String str, AppLovinAdLoadListener appLovinAdLoadListener, n nVar) {
        super("TaskProcessNimbusAd", jSONObject, maxAdapterResponseParameters, maxAdFormat, nVar);
        this.avR = str;
        this.avU = appLovinAdLoadListener;
    }

    @Nullable
    private JSONObject c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                String string = jSONArray.getString(i);
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put(string, "");
                }
            } catch (JSONException e2) {
                ((d) this).sdk.BN();
                if (x.Fn()) {
                    ((d) this).sdk.BN().c(this.tag, "Failed to retrieve tracking url with a non-String value.", e2);
                }
            }
        }
        return jSONObject;
    }

    private JSONObject zz() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "Nimbus-Session-Id", this.avR);
        return jSONObject;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        ((AppLovinAdImpl) appLovinAd).setMaxAdValue(CampaignEx.JSON_KEY_CREATIVE_ID, this.avY);
        this.avU.adReceived(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        this.avU.failedToReceiveAd(i);
    }

    @Override // java.lang.Runnable
    public void run() {
        String string = JsonUtils.getString(this.avK, "markup", "");
        this.avV = string;
        if (TextUtils.isEmpty(string)) {
            this.avU.failedToReceiveAd(204);
            return;
        }
        String string2 = JsonUtils.getString(this.avK, o2.h.L, "");
        String string3 = JsonUtils.getString(this.avK, "placement_id", "");
        String string4 = JsonUtils.getString(this.avK, "auction_id", "");
        if (x.Fn()) {
            this.logger.f("TaskProcessNimbusAd", "Processing Nimbus ad (" + string2 + ") for placement: " + string3 + " with auction id: " + string4 + "...");
        }
        this.avN = JsonUtils.getString(this.avK, "network", "");
        this.avY = JsonUtils.getString(this.avK, "crid", null);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.avK, "trackers", new JSONObject());
        this.avX = c(JsonUtils.getJSONArray(jSONObject, "click_trackers", null));
        this.avW = c(JsonUtils.getJSONArray(jSONObject, "impression_trackers", null));
        JSONObject jSONObjectZv = zv();
        JSONObject jSONObjectO = o(jSONObjectZv);
        if (x.Fn()) {
            this.logger.f("TaskProcessNimbusAd", "Starting render task for Nimbus ad: " + string2 + "...");
        }
        ((d) this).sdk.BO().a(new u(jSONObjectZv, jSONObjectO, com.applovin.impl.sdk.ad.b.UNKNOWN, this.avU, ((d) this).sdk), q.b.MAIN);
    }

    @Override // com.applovin.impl.mediation.c.d
    protected JSONObject zv() {
        JSONObject jSONObjectA = a(this.avV, this.avX, this.avW);
        JsonUtils.putString(jSONObjectA, "cache_prefix", "nimbus");
        JsonUtils.putString(jSONObjectA, "type", "nimbus");
        JsonUtils.putJSONObject(jSONObjectA, "http_headers_for_postbacks", zz());
        return jSONObjectA;
    }
}
