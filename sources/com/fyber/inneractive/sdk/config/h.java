package com.fyber.inneractive.sdk.config;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    public final Map<String, g> a = new HashMap();

    public h() {
    }

    public h(JSONObject jSONObject) {
        a(jSONObject);
    }

    public final void a(JSONObject jSONObject) {
        JSONArray jSONArrayNames;
        if (jSONObject != null) {
            JSONArray jSONArrayNames2 = jSONObject.names();
            for (int i = 0; i < jSONArrayNames2.length(); i++) {
                String strOptString = jSONArrayNames2.optString(i, null);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(strOptString);
                g gVar = new g();
                if (jSONObjectOptJSONObject != null && (jSONArrayNames = jSONObjectOptJSONObject.names()) != null) {
                    for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                        String strOptString2 = jSONArrayNames.optString(i2, null);
                        String strOptString3 = jSONObjectOptJSONObject.optString(strOptString2, null);
                        if (strOptString2 != null && strOptString3 != null) {
                            gVar.a.put(strOptString2, strOptString3);
                        }
                    }
                }
                this.a.put(strOptString, gVar);
            }
        }
    }
}
