package com.applovin.impl.privacy.a;

import androidx.annotation.NonNull;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends e {
    private Map<String, String> ayl;

    public h(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        super(jSONObject, nVar);
    }

    public Map<String, String> Aj() {
        return this.ayl;
    }

    public String getName() {
        return JsonUtils.getString(this.axU, "name", null);
    }

    @Override // com.applovin.impl.privacy.a.e
    @NonNull
    public String toString() {
        return "ConsentFlowState{id=" + mQ() + "type=" + Ac() + "isInitialState=" + Ae() + "name=" + getName() + "}";
    }
}
