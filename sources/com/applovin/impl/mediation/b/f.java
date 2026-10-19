package com.applovin.impl.mediation.b;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final JSONObject adObject;
    private String amN;

    @Nullable
    private String amS;
    private final JSONObject fullResponse;
    private final Map<String, Object> localExtraParameters;
    protected final n sdk;
    private final Object adObjectLock = new Object();
    private final Object fullResponseLock = new Object();

    public f(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("No full response specified");
        }
        if (jSONObject == null) {
            throw new IllegalArgumentException("No ad object specified");
        }
        this.sdk = nVar;
        this.fullResponse = jSONObject2;
        this.adObject = jSONObject;
        this.localExtraParameters = map;
    }

    private int yD() {
        return getIntFromAdObject("mute_state", getIntFromFullResponse("mute_state", ((Integer) this.sdk.a(com.applovin.impl.sdk.c.a.aJS)).intValue()));
    }

    protected double a(String str, float f2) {
        double d2;
        synchronized (this.adObjectLock) {
            d2 = JsonUtils.getDouble(this.adObject, str, f2);
        }
        return d2;
    }

    protected Boolean a(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.fullResponseLock) {
            bool2 = JsonUtils.getBoolean(this.fullResponse, str, bool);
        }
        return bool2;
    }

    protected JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.fullResponseLock) {
            jSONArray2 = JsonUtils.getJSONArray(this.fullResponse, str, jSONArray);
        }
        return jSONArray2;
    }

    protected void a(String str, Object obj) {
        synchronized (this.adObjectLock) {
            JsonUtils.putObject(this.adObject, str, obj);
        }
    }

    protected Boolean b(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.adObjectLock) {
            bool2 = JsonUtils.getBoolean(this.adObject, str, bool);
        }
        return bool2;
    }

    protected JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.adObjectLock) {
            jSONArray2 = JsonUtils.getJSONArray(this.adObject, str, jSONArray);
        }
        return jSONArray2;
    }

    protected boolean bW(String str) {
        boolean zHas;
        synchronized (this.fullResponseLock) {
            zHas = this.fullResponse.has(str);
        }
        return zHas;
    }

    protected boolean bX(String str) {
        boolean zHas;
        synchronized (this.adObjectLock) {
            zHas = this.adObject.has(str);
        }
        return zHas;
    }

    protected Object bY(String str) {
        Object objOpt;
        synchronized (this.adObjectLock) {
            objOpt = this.adObject.opt(str);
        }
        return objOpt;
    }

    public List<String> bZ(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No key specified");
        }
        JSONArray jSONArrayA = a(str, new JSONArray());
        List list = Collections.EMPTY_LIST;
        List listOptList = JsonUtils.optList(jSONArrayA, list);
        List listOptList2 = JsonUtils.optList(b(str, new JSONArray()), list);
        ArrayList arrayList = new ArrayList(listOptList.size() + listOptList2.size());
        arrayList.addAll(listOptList);
        arrayList.addAll(listOptList2);
        return arrayList;
    }

    public String ca(String str) {
        String stringFromAdObject = getStringFromAdObject(str, "");
        return StringUtils.isValidString(stringFromAdObject) ? stringFromAdObject : getStringFromFullResponse(str, "");
    }

    protected void d(String str, int i) {
        synchronized (this.adObjectLock) {
            JsonUtils.putInt(this.adObject, str, i);
        }
    }

    protected void e(String str, long j) {
        synchronized (this.adObjectLock) {
            JsonUtils.putLong(this.adObject, str, j);
        }
    }

    public String getAdUnitId() {
        return getStringFromFullResponse("ad_unit_id", "");
    }

    @Nullable
    public String getConsentString() {
        return bX("consent_string") ? getStringFromAdObject("consent_string", null) : bW("consent_string") ? getStringFromFullResponse("consent_string", null) : this.sdk.Cm().As();
    }

    public Bundle getCustomParameters() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), getServerParameters());
    }

    protected float getFloatFromAdObject(String str, float f2) {
        float f3;
        synchronized (this.adObjectLock) {
            f3 = JsonUtils.getFloat(this.adObject, str, f2);
        }
        return f3;
    }

    protected int getIntFromAdObject(String str, int i) {
        int i2;
        synchronized (this.adObjectLock) {
            i2 = JsonUtils.getInt(this.adObject, str, i);
        }
        return i2;
    }

    protected int getIntFromFullResponse(String str, int i) {
        int i2;
        synchronized (this.fullResponseLock) {
            i2 = JsonUtils.getInt(this.fullResponse, str, i);
        }
        return i2;
    }

    protected JSONObject getJsonObjectFromAdObject(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (this.adObjectLock) {
            jSONObject2 = JsonUtils.getJSONObject(this.adObject, str, jSONObject);
        }
        return jSONObject2;
    }

    public Map<String, Object> getLocalExtraParameters() {
        return this.localExtraParameters;
    }

    protected long getLongFromAdObject(String str, long j) {
        long j2;
        synchronized (this.adObjectLock) {
            j2 = JsonUtils.getLong(this.adObject, str, j);
        }
        return j2;
    }

    protected long getLongFromFullResponse(String str, long j) {
        long j2;
        synchronized (this.fullResponseLock) {
            j2 = JsonUtils.getLong(this.fullResponse, str, j);
        }
        return j2;
    }

    public String getPlacement() {
        return this.amN;
    }

    public Bundle getServerParameters() {
        Bundle bundle = bY("server_parameters") instanceof JSONObject ? JsonUtils.toBundle(getJsonObjectFromAdObject("server_parameters", null)) : new Bundle();
        int iYD = yD();
        if (iYD != -1) {
            if (iYD == 2) {
                bundle.putBoolean("is_muted", this.sdk.getSettings().isMuted());
            } else {
                bundle.putBoolean("is_muted", iYD == 0);
            }
        }
        if (!bundle.containsKey("amount")) {
            bundle.putLong("amount", getLongFromFullResponse("amount", 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", getStringFromFullResponse("currency", ""));
        }
        return bundle;
    }

    protected String getStringFromAdObject(String str, String str2) {
        String string;
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, str, str2);
        }
        return string;
    }

    protected String getStringFromFullResponse(String str, String str2) {
        String string;
        synchronized (this.fullResponseLock) {
            string = JsonUtils.getString(this.fullResponse, str, str2);
        }
        return string;
    }

    public Boolean hasUserConsent() {
        String str = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : bX(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT) ? b(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, Boolean.FALSE) : a(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, (Boolean) null);
    }

    public Boolean isAgeRestrictedUser() {
        String str = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : bX(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER) ? b(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, Boolean.FALSE) : a(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, (Boolean) null);
    }

    public Boolean isDoNotSell() {
        String str = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.DO_NOT_SELL);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : bX(AppLovinSdkExtraParameterKey.DO_NOT_SELL) ? b(AppLovinSdkExtraParameterKey.DO_NOT_SELL, Boolean.FALSE) : a(AppLovinSdkExtraParameterKey.DO_NOT_SELL, (Boolean) null);
    }

    public boolean isTesting() {
        return b("is_testing", Boolean.FALSE).booleanValue();
    }

    public void setCustomData(@Nullable String str) {
        this.amS = str;
    }

    public void setPlacement(String str) {
        this.amN = str;
    }

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + vt() + "', adapterName='" + yA() + "', isTesting=" + isTesting() + '}';
    }

    public String vt() {
        return getStringFromAdObject("class", null);
    }

    protected void x(String str, String str2) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, str, str2);
        }
    }

    public String yA() {
        return getStringFromAdObject("name", null);
    }

    public String yB() {
        return yA().split("_")[0];
    }

    public boolean yC() {
        return b("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    public long yE() {
        return getLongFromAdObject("adapter_timeout_ms", ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJo)).longValue());
    }

    public long yF() {
        return getLongFromAdObject("init_completion_delay_ms", -1L);
    }

    @Nullable
    public String yG() {
        return this.amS;
    }

    public JSONObject yy() {
        JSONObject jSONObject;
        synchronized (this.fullResponseLock) {
            jSONObject = this.fullResponse;
        }
        return jSONObject;
    }

    protected JSONObject yz() {
        JSONObject jSONObject;
        synchronized (this.adObjectLock) {
            jSONObject = this.adObject;
        }
        return jSONObject;
    }
}
