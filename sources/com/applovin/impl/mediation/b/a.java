package com.applovin.impl.mediation.b;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends f implements MaxAd {
    private final int Y;
    private final String apj;
    private final AtomicBoolean auu;
    private final AtomicBoolean auv;
    protected com.applovin.impl.mediation.g auw;
    private String aux;
    private com.applovin.impl.mediation.a.c auy;
    private String loadTag;
    private long requestLatencyMillis;
    private MaxAdWaterfallInfo waterfall;

    protected a(int i, Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, @Nullable com.applovin.impl.mediation.g gVar, n nVar) {
        super(map, jSONObject, jSONObject2, nVar);
        this.auu = new AtomicBoolean();
        this.auv = new AtomicBoolean();
        this.Y = i;
        this.auw = gVar;
        this.apj = gVar != null ? gVar.getAdapterVersion() : null;
    }

    public static a a(int i, Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        String string = JsonUtils.getString(jSONObject2, "ad_format", null);
        MaxAdFormat fromString = MaxAdFormat.formatFromString(string);
        Objects.requireNonNull(fromString, "Invalid ad format for string: " + string);
        if (fromString.isAdViewAd()) {
            return new b(i, map, jSONObject, jSONObject2, nVar);
        }
        if (fromString == MaxAdFormat.NATIVE) {
            return new d(i, map, jSONObject, jSONObject2, nVar);
        }
        if (fromString.isFullscreenAd()) {
            return new c(i, map, jSONObject, jSONObject2, nVar);
        }
        throw new IllegalArgumentException("Unsupported ad format: " + string);
    }

    private long xK() {
        return getLongFromAdObject("load_started_time_ms", 0L);
    }

    public void S(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("ad_values")) {
            g(BundleUtils.toJSONObject(bundle.getBundle("ad_values")));
        }
        if (bundle.containsKey(CampaignEx.JSON_KEY_CREATIVE_ID) && !bX(CampaignEx.JSON_KEY_CREATIVE_ID)) {
            x(CampaignEx.JSON_KEY_CREATIVE_ID, BundleUtils.getString(CampaignEx.JSON_KEY_CREATIVE_ID, bundle));
        }
        if (bundle.containsKey("ad_width") && !bX("ad_width") && bundle.containsKey("ad_height") && !bX("ad_height")) {
            int i = BundleUtils.getInt("ad_width", bundle);
            int i2 = BundleUtils.getInt("ad_height", bundle);
            d("ad_width", i);
            d("ad_height", i2);
        }
        if (bundle.containsKey("publisher_extra_info")) {
            h(BundleUtils.toJSONObject(bundle.getBundle("publisher_extra_info")));
        }
    }

    public int ah() {
        return this.Y;
    }

    public void bV(String str) {
        this.aux = str;
    }

    public void g(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectXw = xw();
        JsonUtils.putAll(jSONObjectXw, jSONObject);
        a("ad_values", jSONObjectXw);
    }

    @Override // com.applovin.mediation.MaxAd
    @Nullable
    public String getAdReviewCreativeId() {
        return this.aux;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject jSONObjectXw = xw();
        if (jSONObjectXw.has(str)) {
            return JsonUtils.getString(jSONObjectXw, str, str2);
        }
        Bundle serverParameters = getServerParameters();
        if (serverParameters.containsKey(str)) {
            return serverParameters.getString(str);
        }
        JSONObject jSONObjectXx = xx();
        return jSONObjectXx.has(str) ? JsonUtils.getString(jSONObjectXx, str, str2) : getStringFromAdObject(str, str2);
    }

    @Nullable
    public View getAdView() {
        com.applovin.impl.mediation.g gVar;
        if (!isReady() || (gVar = this.auw) == null) {
            return null;
        }
        return gVar.ub();
    }

    @Nullable
    public String getAdapterVersion() {
        return this.apj;
    }

    public long getBidExpirationMillis() {
        return getLongFromAdObject("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, getServerParameters()));
    }

    public String getBidResponse() {
        return getStringFromAdObject("bid_response", null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return getStringFromAdObject(CampaignEx.JSON_KEY_CREATIVE_ID, null);
    }

    public Bundle getCredentials() {
        JSONObject jsonObjectFromAdObject;
        if (bX("credentials")) {
            jsonObjectFromAdObject = getJsonObjectFromAdObject("credentials", new JSONObject());
        } else {
            jsonObjectFromAdObject = getJsonObjectFromAdObject("server_parameters", new JSONObject());
            JsonUtils.putString(jsonObjectFromAdObject, "placement_id", getThirdPartyAdPlacementId());
        }
        return JsonUtils.toBundle(jsonObjectFromAdObject);
    }

    @Override // com.applovin.mediation.MaxAd
    @Nullable
    public String getDspId() {
        return getStringFromAdObject("dsp_id", null);
    }

    @Override // com.applovin.mediation.MaxAd
    @Nullable
    public String getDspName() {
        return getStringFromAdObject("dsp_name", null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(getStringFromAdObject("ad_format", getStringFromFullResponse("ad_format", null)));
    }

    public String getLoadTag() {
        return this.loadTag;
    }

    @Override // com.applovin.mediation.MaxAd
    @Nullable
    public MaxNativeAd getNativeAd() {
        com.applovin.impl.mediation.g gVar = this.auw;
        if (gVar != null) {
            return gVar.uc();
        }
        return null;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return getStringFromAdObject("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(getThirdPartyAdPlacementId());
    }

    @Override // com.applovin.mediation.MaxAd
    public long getRequestLatencyMillis() {
        return this.requestLatencyMillis;
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJZ)).booleanValue() || !getFormat().isFullscreenAd() || xO().get()) {
            return JsonUtils.getDouble(getJsonObjectFromAdObject("revenue_parameters", null), ImpressionData.IMPRESSION_DATA_KEY_REVENUE, -1.0d);
        }
        this.sdk.BN();
        if (!x.Fn()) {
            return 0.0d;
        }
        this.sdk.BN().i("MediatedAd", "Attempting to retrieve revenue when not available yet");
        return 0.0d;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        return JsonUtils.getString(getJsonObjectFromAdObject("revenue_parameters", null), ImpressionData.IMPRESSION_DATA_KEY_PRECISION, "");
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int intFromAdObject = getIntFromAdObject("ad_width", -3);
        int intFromAdObject2 = getIntFromAdObject("ad_height", -3);
        return (intFromAdObject == -3 || intFromAdObject2 == -3) ? getFormat().getSize() : new AppLovinSdkUtils.Size(intFromAdObject, intFromAdObject2);
    }

    public String getThirdPartyAdPlacementId() {
        return getStringFromAdObject("third_party_ad_placement_id", null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.waterfall;
    }

    public void h(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectXx = xx();
        JsonUtils.putAll(jSONObjectXx, jSONObject);
        a("publisher_extra_info", jSONObjectXx);
    }

    public boolean isBidding() {
        return StringUtils.isValidString(getBidResponse());
    }

    public boolean isReady() {
        com.applovin.impl.mediation.g gVar = this.auw;
        return gVar != null && gVar.isEnabled() && this.auw.ug();
    }

    public abstract a k(com.applovin.impl.mediation.g gVar);

    public void setLoadTag(String str) {
        this.loadTag = str;
    }

    public void setRequestLatencyMillis(long j) {
        this.requestLatencyMillis = j;
    }

    public void setWaterfall(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.waterfall = maxAdWaterfallInfo;
    }

    @Override // com.applovin.impl.mediation.b.f
    @NonNull
    public String toString() {
        return "MediatedAd{thirdPartyAdPlacementId=" + getThirdPartyAdPlacementId() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + "'}";
    }

    public String xA() {
        return getStringFromFullResponse("event_id", "");
    }

    @Nullable
    public String xB() {
        return getStringFromAdObject("adomain", null);
    }

    public com.applovin.impl.mediation.g xC() {
        return this.auw;
    }

    public boolean xD() {
        return b("is_js_tag_ad", Boolean.FALSE).booleanValue();
    }

    @Nullable
    public MaxAdFormat xE() {
        String stringFromAdObject = getStringFromAdObject("haf", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return MaxAdFormat.formatFromString(stringFromAdObject);
        }
        return null;
    }

    public boolean xF() {
        return xE() != null;
    }

    public com.applovin.impl.mediation.a.c xG() {
        com.applovin.impl.mediation.a.c cVar = this.auy;
        if (cVar != null) {
            return cVar;
        }
        com.applovin.impl.mediation.a.c cVar2 = new com.applovin.impl.mediation.a.c(getJsonObjectFromAdObject("hybrid_ad_config", null));
        this.auy = cVar2;
        return cVar2;
    }

    public String xH() {
        return getStringFromFullResponse("waterfall_name", "");
    }

    public String xI() {
        return getStringFromFullResponse("waterfall_test_name", "");
    }

    public long xJ() {
        if (xK() > 0) {
            return xM() - xK();
        }
        return -1L;
    }

    public void xL() {
        e("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    public long xM() {
        return getLongFromAdObject("load_completed_time_ms", 0L);
    }

    public void xN() {
        e("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    public AtomicBoolean xO() {
        return this.auu;
    }

    public AtomicBoolean xP() {
        return this.auv;
    }

    public void xQ() {
        this.auw = null;
        this.waterfall = null;
    }

    public String xs() {
        return getStringFromAdObject("bcode", "");
    }

    public long xt() {
        return getLongFromAdObject("bwt_ms", ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aKc)).longValue());
    }

    public long xu() {
        return getLongFromAdObject("twt_ms", ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aKd)).longValue());
    }

    public double xv() {
        return a("price", -1.0f);
    }

    public JSONObject xw() {
        return getJsonObjectFromAdObject("ad_values", new JSONObject());
    }

    public JSONObject xx() {
        return getJsonObjectFromAdObject("publisher_extra_info", new JSONObject());
    }

    public JSONObject xy() {
        return getJsonObjectFromAdObject("revenue_parameters", new JSONObject());
    }

    public String xz() {
        return JsonUtils.getString(xy(), "revenue_event", "");
    }
}
