package com.applovin.impl.privacy.b;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinPrivacySettings;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final String aow;
    private final a ayE;

    @Nullable
    private final Integer ayF;

    @Nullable
    private final String ayG;

    @Nullable
    private Boolean ayH;

    public enum a {
        TCF_VENDOR,
        ATP_NETWORK,
        OTHER;

        /* JADX INFO: Access modifiers changed from: private */
        public static a gv(int i) {
            return i != 0 ? i != 1 ? OTHER : ATP_NETWORK : TCF_VENDOR;
        }
    }

    public c(@Nullable JSONObject jSONObject, String str) {
        this.aow = str;
        this.ayE = a.gv(JsonUtils.getInt(jSONObject, "type", a.OTHER.ordinal()));
        this.ayF = JsonUtils.getInteger(jSONObject, "id", null);
        this.ayG = JsonUtils.getString(jSONObject, "name", null);
    }

    public a Av() {
        return this.ayE;
    }

    @Nullable
    public Integer Aw() {
        return this.ayF;
    }

    @Nullable
    public String Ax() {
        return this.ayG;
    }

    @Nullable
    public Boolean Ay() {
        return this.ayH;
    }

    public void c(@Nullable Boolean bool) {
        this.ayH = bool;
    }

    public String getDisplayName() {
        return this.aow;
    }

    public String uI() {
        Boolean bool = this.ayH;
        return "\n" + this.aow + " - " + (bool != null ? bool.booleanValue() : AppLovinPrivacySettings.hasUserConsent(n.getApplicationContext()));
    }
}
