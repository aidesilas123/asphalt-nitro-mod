package com.json;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class td extends pd {
    private final String i = "https://outcome-ssp.supersonicads.com/mediation?adUnit=2";
    private final String j = "super.dwh.mediation_events";
    private final String k = b4.O;
    private final String l = "data";

    td(int i) {
        this.f6516g = i;
    }

    @Override // com.json.pd
    public String a() {
        return "https://outcome-ssp.supersonicads.com/mediation?adUnit=2";
    }

    @Override // com.json.pd
    public String a(ArrayList<a4> arrayList, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        this.f6515f = jSONObject;
        try {
            JSONArray jSONArray = new JSONArray();
            if (arrayList != null && !arrayList.isEmpty()) {
                Iterator<a4> it = arrayList.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectD = d(it.next());
                    if (jSONObjectD != null) {
                        jSONArray.put(jSONObjectD);
                    }
                }
            }
            jSONObject2.put(b4.O, "super.dwh.mediation_events");
            jSONObject2.put("data", c(jSONArray));
            return jSONObject2.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.json.pd
    public String c() {
        return "ironbeast";
    }
}
