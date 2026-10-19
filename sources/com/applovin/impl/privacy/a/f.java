package com.applovin.impl.privacy.a;

import androidx.annotation.NonNull;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends e {
    public f(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        super(jSONObject, nVar);
    }

    public List<g> Af() {
        g gVarH;
        JSONArray jSONArray = JsonUtils.getJSONArray(this.axU, "transitions", null);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject != null && (gVarH = g.h(jSONObject, this.sdk)) != null) {
                arrayList.add(gVarH);
            }
        }
        return arrayList;
    }

    public String getMessage() {
        return cl("message");
    }

    public String getTitle() {
        return cl("title");
    }

    @Override // com.applovin.impl.privacy.a.e
    @NonNull
    public String toString() {
        return "ConsentFlowState{id=" + mQ() + "type=" + Ac() + "isInitialState=" + Ae() + "title=" + getTitle() + "message=" + getMessage() + "actions=" + Af() + "}";
    }
}
