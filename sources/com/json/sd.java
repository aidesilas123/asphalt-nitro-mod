package com.json;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class sd extends pd {
    private final String i = ma.a;

    sd(int i) {
        this.f6516g = i;
    }

    @Override // com.json.pd
    public String a() {
        return ma.a;
    }

    @Override // com.json.pd
    public String a(ArrayList<a4> arrayList, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        this.f6515f = jSONObject;
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
        return c(jSONArray);
    }

    @Override // com.json.pd
    public String c() {
        return "outcome";
    }
}
