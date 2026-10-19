package com.applovin.impl.privacy.a;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final JSONObject axU;
    private final com.applovin.impl.sdk.n sdk;

    public enum a {
        NEUTRAL,
        POSITIVE,
        NEGATIVE
    }

    private g(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.axU = jSONObject;
    }

    public static g h(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        String string = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "title", (JSONObject) null), "key", null);
        if ("TOS".equalsIgnoreCase(string) && nVar.Cl().getTermsOfServiceUri() == null) {
            return null;
        }
        if ("PP".equalsIgnoreCase(string) && nVar.Cl().getPrivacyPolicyUri() == null) {
            return null;
        }
        return new g(jSONObject, nVar);
    }

    public a Ag() {
        String string = JsonUtils.getString(this.axU, "style", null);
        return "default".equalsIgnoreCase(string) ? a.POSITIVE : ("destructive".equalsIgnoreCase(string) || "cancel".equalsIgnoreCase(string)) ? a.NEGATIVE : a.NEUTRAL;
    }

    public String Ah() {
        return JsonUtils.getString(this.axU, "destination_state_id", null);
    }

    @Nullable
    public String Ai() {
        return JsonUtils.getString(this.axU, NotificationCompat.CATEGORY_EVENT, null);
    }

    public String getTitle() {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.axU, "title", (JSONObject) null);
        return com.applovin.impl.sdk.n.b(JsonUtils.getString(jSONObject, "key", ""), (List<String>) JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "replacements", null), null));
    }

    public String toString() {
        return "ConsentFlowStateAlertAction{title=" + getTitle() + "destinationStateId=" + Ah() + "event=" + Ai() + "}";
    }
}
