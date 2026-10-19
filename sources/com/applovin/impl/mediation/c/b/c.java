package com.applovin.impl.mediation.c.b;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.c.a;
import com.applovin.impl.mediation.c.d;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.json.b4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends d {
    private final AppLovinNativeAdLoadListener awg;
    private final a.C0061a awh;
    private String awi;
    private String awj;
    private String awk;

    /* JADX INFO: renamed from: do, reason: not valid java name */
    private String f6do;

    public c(JSONObject jSONObject, MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super("TaskProcessTaboolaAd", jSONObject, maxAdapterResponseParameters, maxAdFormat, nVar);
        this.awh = com.applovin.impl.mediation.c.a.za();
        this.f6do = "";
        this.awi = "";
        this.awj = "";
        this.awk = null;
        this.awg = appLovinNativeAdLoadListener;
    }

    @Nullable
    private String a(Object obj, String str, String str2) {
        if (!(obj instanceof JSONObject)) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) obj;
        String string = JsonUtils.getString(jSONObject, "onEvent", "");
        String string2 = JsonUtils.getString(jSONObject, "type", "");
        if (StringUtils.isValidString(str) && !str.equalsIgnoreCase(string)) {
            return null;
        }
        if (!StringUtils.isValidString(str2) || str2.equalsIgnoreCase(string2)) {
            return JsonUtils.getString(jSONObject, "value", null);
        }
        return null;
    }

    private List<String> a(JSONObject jSONObject, JSONArray jSONArray, JSONArray jSONArray2) {
        ArrayList arrayList = new ArrayList();
        String string = JsonUtils.getString(jSONObject, "available", null);
        if (StringUtils.isValidString(string)) {
            if (x.Fn()) {
                this.logger.f("TaskProcessTaboolaAd", "Processed impression URL: " + string);
            }
            arrayList.add(string);
        }
        String string2 = JsonUtils.getString(jSONObject, "visible", null);
        if (StringUtils.isValidString(string2)) {
            if (x.Fn()) {
                this.logger.f("TaskProcessTaboolaAd", "Processed impression URL: " + string2);
            }
            arrayList.add(string2);
        }
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray, i, null);
                String strA = a(objectAtIndex, "available", "pixel");
                if (!StringUtils.isValidString(strA)) {
                    strA = a(objectAtIndex, "visible", "pixel");
                }
                if (!TextUtils.isEmpty(strA)) {
                    if (x.Fn()) {
                        this.logger.f("TaskProcessTaboolaAd", "Processed impression URL: " + strA);
                    }
                    arrayList.add(strA);
                }
            }
        }
        if (jSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                String strA2 = a(JsonUtils.getObjectAtIndex(jSONArray2, i2, null), (String) null, "pixel");
                if (!TextUtils.isEmpty(strA2)) {
                    if (x.Fn()) {
                        this.logger.f("TaskProcessTaboolaAd", "Processed impression URL: " + strA2);
                    }
                    arrayList.add(strA2);
                }
            }
        }
        return arrayList;
    }

    private JSONArray a(JSONObject jSONObject, JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        String string = JsonUtils.getString(jSONObject, CampaignEx.JSON_NATIVE_VIDEO_CLICK, null);
        if (StringUtils.isValidString(string)) {
            if (x.Fn()) {
                this.logger.f("TaskProcessTaboolaAd", "Processed click tracking URL: " + string);
            }
            jSONArray2.put(string);
        }
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String strA = a(JsonUtils.getObjectAtIndex(jSONArray, i, null), CampaignEx.JSON_NATIVE_VIDEO_CLICK, "pixel");
                if (!TextUtils.isEmpty(strA)) {
                    if (x.Fn()) {
                        this.logger.f("TaskProcessTaboolaAd", "Processed click tracking URL: " + strA);
                    }
                    jSONArray2.put(strA);
                }
            }
        }
        return jSONArray2;
    }

    private List<String> b(JSONArray jSONArray, JSONArray jSONArray2) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String strA = a(JsonUtils.getObjectAtIndex(jSONArray, i, null), (String) null, "script");
                if (!TextUtils.isEmpty(strA)) {
                    arrayList.add(Uri.decode(strA));
                }
            }
        }
        if (jSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                String strA2 = a(JsonUtils.getObjectAtIndex(jSONArray2, i2, null), (String) null, "script");
                if (!TextUtils.isEmpty(strA2)) {
                    arrayList.add(Uri.decode(strA2));
                }
            }
        }
        return arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArray = JsonUtils.getJSONArray(this.avK, "placements", new JSONArray());
        if (jSONArray.length() == 0) {
            if (x.Fn()) {
                this.logger.h("TaskProcessTaboolaAd", "No ads were returned from the server");
            }
            this.awg.onNativeAdLoadFailed(AppLovinError.NO_FILL);
            return;
        }
        JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, 0, new JSONObject());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "list", new JSONArray());
        String string = JsonUtils.getString(jSONObject, "name", "");
        if (jSONArray2.length() == 0) {
            if (x.Fn()) {
                this.logger.h("TaskProcessTaboolaAd", "No ads were returned from the server");
            }
            this.awg.onNativeAdLoadFailed(AppLovinError.NO_FILL);
            return;
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray2, 0, new JSONObject());
        this.f6do = JsonUtils.getString(jSONObject2, "id", "");
        if (x.Fn()) {
            this.logger.f("TaskProcessTaboolaAd", "Processing Taboola ad (" + this.f6do + ") for placement: " + string + "...");
        }
        this.awi = JsonUtils.getString(jSONObject2, "type", "");
        this.awj = JsonUtils.getString(jSONObject2, "origin", "");
        this.awk = JsonUtils.getString(jSONObject2, "discloser", null);
        this.awh.cb("Taboola_2.0");
        this.awh.cc(JsonUtils.getString(jSONObject2, "name", ""));
        this.awh.cd(JsonUtils.getString(jSONObject2, "branding", ""));
        this.awh.ce(JsonUtils.getString(jSONObject2, "description", ""));
        this.awh.cg(JsonUtils.getString(jSONObject2, "url", null));
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject2, "thumbnail", new JSONArray());
        if (jSONArray3.length() > 0 && (jSONObjectOptJSONObject = jSONArray3.optJSONObject(0)) != null) {
            this.awh.cf(JsonUtils.getString(jSONObjectOptJSONObject, "url", null));
            this.awh.gs(JsonUtils.getInt(jSONObjectOptJSONObject, "width", 0));
            this.awh.gt(JsonUtils.getInt(jSONObjectOptJSONObject, "height", 0));
        }
        JSONArray jSONArray4 = JsonUtils.getJSONArray(jSONObject2, "beacons", null);
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject, b4.M, (JSONObject) null);
        JSONArray jSONArray5 = JsonUtils.getJSONArray(JsonUtils.getJSONObject(this.avK, "user", (JSONObject) null), "beacons", null);
        this.awh.b(a(jSONObject3, jSONArray4));
        this.awh.D(b(jSONArray4, jSONArray5));
        this.awh.E(a(jSONObject3, jSONArray4, jSONArray5));
        JSONObject jSONObjectO = o(zv());
        if (x.Fn()) {
            this.logger.f("TaskProcessTaboolaAd", "Starting render task for Taboola ad: " + string + "...");
        }
        ((d) this).sdk.BO().a(new com.applovin.impl.sdk.nativeAd.d(jSONObjectO, this.awg, ((d) this).sdk), q.b.MAIN);
    }

    @Override // com.applovin.impl.mediation.c.d
    protected JSONObject zv() {
        JSONObject jSONObjectA = a(this.awh.zp());
        JsonUtils.putString(jSONObjectA, "cache_prefix", "taboola_");
        JsonUtils.putString(jSONObjectA, "type", "taboola");
        JsonUtils.putString(jSONObjectA, CampaignEx.JSON_KEY_PRIVACY_URL, this.awk);
        return jSONObjectA;
    }
}
