package com.applovin.impl.privacy.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    protected final JSONObject axU;
    protected final com.applovin.impl.sdk.n sdk;

    public enum a {
        NONE,
        IS_AL_GDPR
    }

    public enum b {
        ALERT,
        EVENT,
        HAS_USER_CONSENT,
        REINIT,
        CMP_LOAD,
        CMP_SHOW,
        DECISION,
        TERMS_FLOW
    }

    public e(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.axU = jSONObject;
    }

    private static b cj(String str) {
        if ("alert".equalsIgnoreCase(str)) {
            return b.ALERT;
        }
        if (NotificationCompat.CATEGORY_EVENT.equalsIgnoreCase(str)) {
            return b.EVENT;
        }
        if ("cmp_load".equalsIgnoreCase(str)) {
            return b.CMP_LOAD;
        }
        if ("cmp_show".equalsIgnoreCase(str)) {
            return b.CMP_SHOW;
        }
        if ("decision".equalsIgnoreCase(str)) {
            return b.DECISION;
        }
        if ("terms_flow".equalsIgnoreCase(str)) {
            return b.TERMS_FLOW;
        }
        if (AppLovinSdkExtraParameterKey.HAS_USER_CONSENT.equalsIgnoreCase(str)) {
            return b.HAS_USER_CONSENT;
        }
        if ("reinit".equalsIgnoreCase(str)) {
            return b.REINIT;
        }
        throw new IllegalArgumentException("Invalid type provided: " + str);
    }

    private static a ck(String str) {
        return "is_al_gdpr".equalsIgnoreCase(str) ? a.IS_AL_GDPR : a.NONE;
    }

    public static e g(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        b bVarCj = cj(JsonUtils.getString(jSONObject, "type", null));
        return bVarCj == b.ALERT ? new f(jSONObject, nVar) : bVarCj == b.EVENT ? new h(jSONObject, nVar) : new e(jSONObject, nVar);
    }

    public b Ac() {
        return cj(JsonUtils.getString(this.axU, "type", null));
    }

    public a Ad() {
        return ck(JsonUtils.getString(this.axU, "decision_type", null));
    }

    public boolean Ae() {
        return JsonUtils.getBoolean(this.axU, "is_initial_state", Boolean.FALSE).booleanValue();
    }

    public String b(@Nullable Boolean bool) {
        String string = JsonUtils.getString(this.axU, "destination_state_id", null);
        if (StringUtils.isValidString(string)) {
            return string;
        }
        if (bool != null) {
            return bool.booleanValue() ? JsonUtils.getString(this.axU, "destination_state_id_true", null) : JsonUtils.getString(this.axU, "destination_state_id_false", null);
        }
        throw new IllegalStateException("Decision needed for state: " + string);
    }

    protected String cl(String str) {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.axU, str, (JSONObject) null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "replacements", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = JsonUtils.getObjectAtIndex(jSONArray, i, "").toString();
            if ("<APP_NAME>".equalsIgnoreCase(string)) {
                String name = this.sdk.BV() != null ? this.sdk.BU().Ej().getName() : (String) this.sdk.BS().CU().get(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING);
                if (StringUtils.isValidString(name)) {
                    arrayList.add(name);
                } else {
                    arrayList.add(com.applovin.impl.sdk.n.cl("THIS_APP"));
                }
            } else {
                arrayList.add(string);
            }
        }
        return com.applovin.impl.sdk.n.b(JsonUtils.getString(jSONObject, "key", null), arrayList);
    }

    public String mQ() {
        return JsonUtils.getString(this.axU, "id", null);
    }

    @NonNull
    public String toString() {
        return "ConsentFlowState{id=" + mQ() + "type=" + Ac() + "isInitialState=" + Ae() + "}";
    }
}
