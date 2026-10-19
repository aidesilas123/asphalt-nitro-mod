package com.applovin.impl.mediation.d;

import android.content.Context;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.p;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.v;
import com.applovin.impl.sdk.x;
import com.applovin.impl.sdk.y;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.applovin.impl.sdk.e.d {
    private final Context E;
    private final String adUnitId;
    private final Map<String, Object> alR;
    private final a.InterfaceC0060a amL;
    private final JSONArray aws;
    private final Map<String, Object> extraParameters;
    private final MaxAdFormat format;
    private final Map<String, Object> localExtraParameters;

    public c(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, JSONArray jSONArray, Context context, com.applovin.impl.sdk.n nVar, a.InterfaceC0060a interfaceC0060a) {
        super("TaskFetchMediatedAd", nVar, str);
        this.adUnitId = str;
        this.format = maxAdFormat;
        this.localExtraParameters = map;
        this.extraParameters = map2;
        this.alR = map3;
        this.aws = jSONArray;
        this.E = context;
        this.amL = interfaceC0060a;
    }

    private void a(com.applovin.impl.sdk.d.g gVar) {
        com.applovin.impl.sdk.d.f fVar = com.applovin.impl.sdk.d.f.aSV;
        long jB = gVar.b(fVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jB > TimeUnit.MINUTES.toMillis(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aOk)).intValue())) {
            gVar.b(fVar, jCurrentTimeMillis);
            gVar.c(com.applovin.impl.sdk.d.f.aSW);
            gVar.c(com.applovin.impl.sdk.d.f.aSX);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i, String str) {
        if (x.Fn()) {
            this.logger.i(this.tag, "Unable to fetch ad for ad unit " + this.adUnitId + ": server returned " + i);
        }
        if (i == -800) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTi);
        }
        com.applovin.impl.sdk.utils.m.a(this.amL, this.adUnitId, i == -1009 ? new MaxErrorImpl(-1009, str) : i == -1001 ? new MaxErrorImpl(-1001, str) : StringUtils.isValidString(str) ? new MaxErrorImpl(-1000, str) : new MaxErrorImpl(-1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject) {
        String label;
        try {
            com.applovin.impl.sdk.utils.i.j(jSONObject, this.sdk);
            com.applovin.impl.sdk.utils.i.i(jSONObject, this.sdk);
            com.applovin.impl.sdk.utils.i.k(jSONObject, this.sdk);
            com.applovin.impl.mediation.e.b.d(jSONObject, this.sdk);
            com.applovin.impl.mediation.e.b.e(jSONObject, this.sdk);
            com.applovin.impl.mediation.e.b.f(jSONObject, this.sdk);
            com.applovin.impl.mediation.e.b.z(jSONObject);
            com.applovin.impl.sdk.g.o(this.sdk);
            MaxAdFormat fromString = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "ad_format", null));
            if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQR)).booleanValue()) {
                if (this.format != fromString) {
                    label = fromString != null ? fromString.getLabel() : "UNKNOWN";
                    x.H(this.tag, "Ad format requested (" + this.format.getLabel() + ") does not match ad format for ad unit id " + this.adUnitId + " (" + label + ")");
                }
                r(jSONObject);
                return;
            }
            if (u.a(this.format, fromString)) {
                r(jSONObject);
                return;
            }
            label = fromString != null ? fromString.getLabel() : "UNKNOWN";
            String str = "Requested ad format " + this.format.getLabel() + " is not compatible with received ad format " + label;
            x.H(this.tag, str);
            this.amL.onAdLoadFailed(this.adUnitId, new MaxAdapterError(MaxAdapterError.INVALID_CONFIGURATION, 0, str));
            this.sdk.Cs().a(r.a.INTEGRATION_ERROR, "incompatible_ad_format", "pubId=" + ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aKp)) + ",adUnitId=" + this.adUnitId + ",adInstanceFormat=" + this.format.getLabel() + ",adResponseFormat=" + label);
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.c(this.tag, "Unable to process mediated ad response for ad unit " + this.adUnitId, th);
            }
            throw new RuntimeException("Unable to process ad: " + th);
        }
    }

    private void r(JSONObject jSONObject) {
        this.sdk.BO().b(this.sdk.a(com.applovin.impl.sdk.c.a.aKb, this.format) ? new e(this.adUnitId, this.format, this.localExtraParameters, jSONObject, this.E, this.sdk, this.amL) : new f(this.adUnitId, this.format, this.localExtraParameters, jSONObject, this.E, this.sdk, this.amL));
    }

    private void s(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disabled", new JSONArray((Collection) this.sdk.Cw().tZ()));
            jSONObject2.put("installed", com.applovin.impl.mediation.e.c.f(this.sdk));
            jSONObject2.put("initialized", this.sdk.Cx().tW());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.sdk.Cx().tV().keySet()));
            jSONObject2.put("loaded_classnames", new JSONArray((Collection) this.sdk.Cw().tX()));
            jSONObject2.put("failed_classnames", new JSONArray((Collection) this.sdk.Cw().tY()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e2) {
            if (x.Fn()) {
                this.logger.c(this.tag, "Failed to populate adapter classNames", e2);
            }
            throw new RuntimeException("Failed to populate classNames: " + e2);
        }
    }

    private void t(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = this.aws;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    private void u(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ad_unit_id", this.adUnitId);
        jSONObject2.put("ad_format", this.format.getLabel());
        Map map = CollectionUtils.map(this.extraParameters);
        y.a aVarCK = this.sdk.CC().cK(this.adUnitId);
        if (aVarCK != null) {
            if (Boolean.parseBoolean(this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.ENABLE_SEQUENTIAL_CACHING))) {
                map.put("previous_winning_network", "APPLOVIN_NETWORK");
                map.put("previous_winning_network_name", "AppLovin");
            } else {
                map.put("previous_winning_network", aVarCK.yA());
                map.put("previous_winning_network_name", aVarCK.getNetworkName());
                CollectionUtils.putStringIfValid("second_previous_winning_network", aVarCK.Fo(), map);
                CollectionUtils.putStringIfValid("second_previous_winning_network_name", aVarCK.Fp(), map);
            }
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(map));
        jSONObject.put("ad_info", jSONObject2);
    }

    private void v(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.sdk.Cy().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData == null || !u.ak(com.applovin.impl.sdk.n.getApplicationContext())) {
            return;
        }
        JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
    }

    private void w(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.sdk.getSettings().getExtraParameters()));
    }

    private String zC() {
        return com.applovin.impl.mediation.e.b.b(this.sdk);
    }

    private String zD() {
        return com.applovin.impl.mediation.e.b.c(this.sdk);
    }

    private Map<String, String> zE() {
        HashMap map = new HashMap(2);
        map.put("AppLovin-Ad-Unit-Id", this.adUnitId);
        map.put("AppLovin-Ad-Format", this.format.getLabel());
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Attempt", this.extraParameters.get("retry_attempt"), map);
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Delay-Sec", this.extraParameters.get("retry_delay_sec"), map);
        return map;
    }

    private JSONObject zF() throws JSONException {
        Map<String, Object> mapA = this.sdk.BV() != null ? this.sdk.BV().a(null, false, true) : this.sdk.BS().a(null, false, true);
        mapA.putAll(this.alR);
        JSONObject jSONObject = new JSONObject(mapA);
        u(jSONObject);
        t(jSONObject);
        s(jSONObject);
        v(jSONObject);
        w(jSONObject);
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (x.Fn()) {
            this.logger.f(this.tag, "Fetching next ad for " + this.format.getLabel() + " ad unit " + this.adUnitId);
        }
        v.Fg();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOJ)).booleanValue() && u.Lz() && x.Fn()) {
            this.logger.f(this.tag, "User is connected to a VPN");
        }
        com.applovin.impl.sdk.d.g gVarBR = this.sdk.BR();
        gVarBR.a(com.applovin.impl.sdk.d.f.aTh);
        com.applovin.impl.sdk.d.f fVar = com.applovin.impl.sdk.d.f.aSV;
        if (gVarBR.b(fVar) == 0) {
            gVarBR.b(fVar, System.currentTimeMillis());
        }
        try {
            JSONObject jSONObjectZF = zF();
            HashMap map = new HashMap();
            if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQa)).booleanValue() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
                map.put("rid", UUID.randomUUID().toString());
            }
            if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
                map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
            }
            if (this.sdk.CE().isEnabled()) {
                map.put("test_mode", "1");
            }
            List<String> listXk = this.sdk.CE().xk();
            String str = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.FILTER_AD_NETWORK);
            if (listXk != null && !listXk.isEmpty()) {
                String strA = q.a(",", listXk);
                map.put("filter_ad_network", strA);
                if (!this.sdk.CE().isEnabled()) {
                    map.put("fhkZsVqYC7", "1");
                }
                if (this.sdk.CE().xj()) {
                    map.put("force_ad_network", strA);
                }
            } else if (StringUtils.isValidString(str)) {
                map.put("filter_ad_network", str);
            }
            a(gVarBR);
            final com.applovin.impl.sdk.network.c cVarIg = com.applovin.impl.sdk.network.c.D(this.sdk).cX("POST").l(zE()).cW(zC()).cY(zD()).k(map).K(jSONObjectZF).aU(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aKf)).booleanValue()).ad(new JSONObject()).gF(((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJj)).intValue()).gE(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNP)).intValue()).gG(((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJi)).intValue()).a(p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPR)).intValue())).aT(true).Ig();
            w<JSONObject> wVar = new w<JSONObject>(cVarIg, this.sdk) { // from class: com.applovin.impl.mediation.d.c.1
                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                public void a(int i, String str2, JSONObject jSONObject) {
                    c.this.e(i, str2);
                    this.sdk.Cs().b(cVarIg.zL(), "fetchMediatedAd", i);
                }

                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void d(JSONObject jSONObject, int i) {
                    if (i != 200) {
                        c.this.e(i, null);
                        this.sdk.Cs().b(cVarIg.zL(), "fetchMediatedAd", i);
                    } else {
                        JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.aHv.getLatencyMillis());
                        JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.aHv.HL());
                        c.this.q(jSONObject);
                    }
                }
            };
            wVar.e(com.applovin.impl.sdk.c.a.aJg);
            wVar.f(com.applovin.impl.sdk.c.a.aJh);
            this.sdk.BO().b(wVar);
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.c(this.tag, "Unable to fetch ad for ad unit " + this.adUnitId, th);
            }
            throw new RuntimeException("Unable to fetch ad: " + th);
        }
    }
}
