package com.applovin.impl.mediation.c.b;

import android.net.Uri;
import android.webkit.URLUtil;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.c.b {
    public static final Uri avZ = Uri.parse("https://api.taboola.com/");
    private final String avO;
    private String avR;
    private final Uri awa;
    private final Map<String, Object> awb;
    private String awc;

    public a(String str, String str2, @Nullable String str3, n nVar) {
        super("TaboolaApiService", nVar);
        this.avR = o2.a.f6463e;
        this.awc = "";
        this.avO = str;
        this.awa = Uri.withAppendedPath(URLUtil.isValidUrl(str3) ? Uri.parse(str3) : avZ, "2.0/json/" + str2);
        HashMap map = new HashMap(3);
        this.awb = map;
        map.put("type", "mobile");
        map.put("apiKey", str);
        map.put("origin", "SERVER");
    }

    private Integer a(MaxAdapterResponseParameters maxAdapterResponseParameters, String str, Integer num) {
        if (maxAdapterResponseParameters.getLocalExtraParameters().containsKey(str)) {
            Object obj = maxAdapterResponseParameters.getLocalExtraParameters().get(str);
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
        }
        return Integer.valueOf(maxAdapterResponseParameters.getCustomParameters().getInt(str, num.intValue()));
    }

    private String a(MaxAdapterResponseParameters maxAdapterResponseParameters, String str, String str2) {
        if (maxAdapterResponseParameters.getLocalExtraParameters().containsKey(str)) {
            Object obj = maxAdapterResponseParameters.getLocalExtraParameters().get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        return maxAdapterResponseParameters.getCustomParameters().getString(str, str2);
    }

    private JSONObject a(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        Map<String, Object> mapCV = this.sdk.BV() != null ? this.sdk.BV().CV() : this.sdk.BS().CV();
        String strValueOf = String.valueOf(mapCV.get(v4.R));
        String strValueOf2 = String.valueOf(mapCV.get("idfa"));
        String str = this.avR;
        Map<String, Object> localExtraParameters = maxAdapterResponseParameters.getLocalExtraParameters();
        if (localExtraParameters.containsKey("taboola_session")) {
            Object obj = localExtraParameters.get("taboola_session");
            if (obj instanceof String) {
                str = (String) obj;
            }
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "session", str);
        JsonUtils.putString(jSONObject, "agent", strValueOf);
        JsonUtils.putString(jSONObject, "device", strValueOf2);
        JsonUtils.putString(jSONObject, "id", this.awc);
        JsonUtils.putString(jSONObject, "realip", maxAdapterResponseParameters.getServerParameters().getString("s2s_ip", ""));
        return jSONObject;
    }

    private void a(final b bVar) {
        HashMap map = new HashMap(2);
        map.put("app.type", "mobile");
        map.put("app.apikey", this.avO);
        this.sdk.BO().b(new w<JSONObject>(com.applovin.impl.sdk.network.c.D(this.sdk).cW(this.awa.toString() + "/user.sync").cX("GET").k(map).ad(new JSONObject()).aS(false).aU(false).Ig(), this.sdk) { // from class: com.applovin.impl.mediation.c.b.a.2
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                if (x.Fn()) {
                    this.logger.i(this.tag, "Unable to fetch user id. Server returned " + i);
                }
                bVar.onInitialized(false, str);
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                if (i == 200 && jSONObject != null) {
                    a.this.awc = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "user", new JSONObject()), "id", "");
                    this.sdk.a(com.applovin.impl.mediation.c.c.avE, a.this.awc, ((com.applovin.impl.mediation.c.b) a.this).avw);
                    this.sdk.a(com.applovin.impl.mediation.c.c.avF, Long.valueOf(System.currentTimeMillis()), ((com.applovin.impl.mediation.c.b) a.this).avw);
                    bVar.onInitialized(true, null);
                    return;
                }
                String str = "Unable to fetch user id. Server returned " + i;
                if (x.Fn()) {
                    this.logger.i(this.tag, str);
                }
                bVar.onInitialized(false, str);
            }
        });
    }

    private JSONObject b(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "type", maxAdapterResponseParameters.getCustomParameters().getString("source_type", ""));
        JsonUtils.putString(jSONObject, "id", maxAdapterResponseParameters.getCustomParameters().getString("source_id", ""));
        JsonUtils.putString(jSONObject, "url", maxAdapterResponseParameters.getCustomParameters().getString("source_url", ""));
        return jSONObject;
    }

    private JSONObject c(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "id", a(maxAdapterResponseParameters, "taboola_view_id", ""));
        return jSONObject;
    }

    private JSONArray d(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        JsonUtils.putInt(jSONObject, "recCount", 1);
        JsonUtils.putString(jSONObject, "organicType", maxAdapterResponseParameters.getCustomParameters().getString("placement_type", "MIX"));
        Map<String, Object> localExtraParameters = maxAdapterResponseParameters.getLocalExtraParameters();
        if (localExtraParameters.containsKey("taboola_thumbnail_height") && localExtraParameters.containsKey("taboola_thumbnail_width")) {
            Integer numA = a(maxAdapterResponseParameters, "taboola_thumbnail_height", (Integer) 0);
            Integer numA2 = a(maxAdapterResponseParameters, "taboola_thumbnail_width", (Integer) 0);
            if (numA.intValue() > 0 && numA2.intValue() > 0) {
                JSONObject jSONObject2 = new JSONObject();
                JsonUtils.putInt(jSONObject2, "width", numA.intValue());
                JsonUtils.putInt(jSONObject2, "height", numA2.intValue());
                JsonUtils.putJSONObject(jSONObject, "thumbnail", jSONObject2);
            }
        }
        jSONArray.put(jSONObject);
        return jSONArray;
    }

    private JSONObject zA() {
        JSONObject jSONObject = new JSONObject();
        Map<String, Object> mapDI = this.sdk.BV() != null ? this.sdk.BV().DI() : this.sdk.BS().Db();
        Object obj = mapDI.get("IABTCF_gdprApplies");
        if (obj != null) {
            JsonUtils.putObject(jSONObject, "gdpr_applies", obj);
            JsonUtils.putString(jSONObject, "daisyBit", String.valueOf(mapDI.get("IABTCF_TCString")));
        }
        return jSONObject;
    }

    public void a(MaxAdapterInitializationParameters maxAdapterInitializationParameters, b bVar) {
        String str = (String) this.sdk.b(com.applovin.impl.mediation.c.c.avE, null, this.avw);
        Long l = (Long) this.sdk.b(com.applovin.impl.mediation.c.c.avF, null, this.avw);
        if (!StringUtils.isValidString(str) || l == null) {
            a(bVar);
        } else if (maxAdapterInitializationParameters.getServerParameters().getLong("user_id_expiration_millis", TimeUnit.DAYS.toMillis(30L)) - (System.currentTimeMillis() - l.longValue()) <= TimeUnit.HOURS.toMillis(1L)) {
            a(bVar);
        } else {
            this.awc = str;
            bVar.onInitialized(true, null);
        }
    }

    public void a(final MaxAdapterResponseParameters maxAdapterResponseParameters, final AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJSONObject(jSONObject, MBridgeConstans.DYNAMIC_VIEW_WX_APP, new JSONObject(this.awb));
        JsonUtils.putJSONObject(jSONObject, "consent", zA());
        JsonUtils.putJSONObject(jSONObject, "user", a(maxAdapterResponseParameters));
        JsonUtils.putJSONObject(jSONObject, ShareConstants.FEED_SOURCE_PARAM, b(maxAdapterResponseParameters));
        JsonUtils.putJSONObject(jSONObject, "view", c(maxAdapterResponseParameters));
        JsonUtils.putJsonArray(jSONObject, "placements", d(maxAdapterResponseParameters));
        this.sdk.BO().b(new w<JSONObject>(com.applovin.impl.sdk.network.c.D(this.sdk).cW(this.awa.toString() + "/recommendations.get").cX("POST").K(jSONObject).ad(new JSONObject()).aS(false).aU(false).Ig(), this.sdk) { // from class: com.applovin.impl.mediation.c.b.a.1
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject2) {
                if (x.Fn()) {
                    this.logger.i(this.tag, "Unable to fetch " + maxAdapterResponseParameters.getThirdPartyAdPlacementId() + " Taboola ad: server returned " + i);
                }
                appLovinNativeAdLoadListener.onNativeAdLoadFailed(new AppLovinError(i, "Taboola server returned with code: " + jSONObject2));
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject2, int i) {
                if (i == 200 && jSONObject2 != null) {
                    a.this.avR = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject2, "user", new JSONObject()), "session", "");
                    this.sdk.BO().b(new c(jSONObject2, maxAdapterResponseParameters, MaxAdFormat.NATIVE, appLovinNativeAdLoadListener, this.sdk));
                    return;
                }
                if (x.Fn()) {
                    this.logger.i(this.tag, "Unable to fetch " + maxAdapterResponseParameters.getThirdPartyAdPlacementId() + " Taboola ad: server returned " + i);
                }
                appLovinNativeAdLoadListener.onNativeAdLoadFailed(new AppLovinError(i, "Taboola server returned with code: " + jSONObject2));
            }
        });
    }
}
